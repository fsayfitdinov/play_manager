import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:android_alarm_manager/android_alarm_manager.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'core/domain/app_config.dart';
import 'core/infrastructure/string_extensions.dart';
import 'core/infrastructure/dio_extensions.dart';
import 'core/domain/failure.dart';
import 'core/domain/order.dart';
import 'core/presentation/app_widget.dart';
import 'core/shared/providers.dart';
import 'injection.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp();
  FlutterError.onError = FirebaseCrashlytics.instance.recordFlutterError;

  final injection = Injection();
  final appInjections = await injection.setUpInjection();

  if (Platform.isAndroid) await AndroidAlarmManager.initialize();

  runApp(
    ProviderScope(
      overrides: [
        appConfigProvider.overrideWithValue(appInjections.appConfig),
        hiveDataStoreProvider.overrideWithValue(appInjections.dataStore),
        deviceDetailsProvider.overrideWithValue(appInjections.details),
        dioProvider.overrideWithValue(appInjections.dio),
      ],
      child: AppWidget(),
    ),
  );
}

Future<void> getOrdersInBackground() async {
  final failureOrSuccess = await getOrders();
  failureOrSuccess.fold(
    (l) {
      debugPrint('error happened');
    },
    (orders) async {
      debugPrint("bg orders: $orders");
      if (orders.isNotEmpty) {
        final dueOrders =
            orders.where((i) => i.endDateTime.hasExpired).toList();
        if (dueOrders.isNotEmpty) {
          AudioCache().play('sounds/ringtone.mp3');
        }
      }
    },
  );
}

Future<Either<Failure, List<OrderModel>>> getOrders() async {
  try {
    final Dio dio = Dio();
    final configFile = await rootBundle.loadString('assets/config/main.json');
    final configData = jsonDecode(configFile);
    final appConfig = AppConfig(
      apiKey: configData['API_KEY'] as String,
      baseApiUrl: configData['BASE_API_URL'] as String,
      baseVideoUrl: configData['BASE_VIDEO_URL'] as String,
    );
    final Response response = await dio.postUri(
      Uri.parse('${appConfig.baseApiUrl}/get-orders'),
      options: Options(
        headers: {'Token': appConfig.apiKey},
      ),
      data: FormData.fromMap({"id": "6"}),
    );
    if (response.statusCode == 200 && response.data['stateCode'] == 200) {
      final ordersData = (response.data['orders'] as List<dynamic>)
          .cast<Map<String, dynamic>>();
      final orders =
          ordersData.map((json) => OrderModel.fromJson(json)).toList();
      return right(orders);
    } else {
      return left(Failure.server(response.data['message'].toString()));
    }
  } on DioError catch (e) {
    if (e.isConnectionError) {
      return left(const Failure.noConnection());
    } else {
      return left(Failure.server(e.message));
    }
  }
}
