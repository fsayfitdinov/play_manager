import 'dart:async';
import 'dart:io';

import 'package:android_alarm_manager/android_alarm_manager.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'core/infrastructure/string_extensions.dart';
import 'core/infrastructure/dio_extensions.dart';
import 'core/domain/failure.dart';
import 'core/domain/order.dart';
import 'core/presentation/app_widget.dart';
import 'core/shared/providers.dart';
import 'injection.dart';

Future<void> printHello() async {
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
          // FlutterAppBadger.updateBadgeCount(dueOrders.length);
          AudioCache().play('sounds/ringtone.mp3');
        }
      }
    },
  );
}

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

Future<Either<Failure, List<OrderModel>>> getOrders() async {
  try {
    final Dio dio = Dio();
    final Response response = await dio.postUri(
      Uri.parse('https://play.botagent.uz/v1/api/get-orders'),
      options: Options(
        headers: {
          'Token':
              'AAAA4vY5fzs:APA91bE9fDuyvy8LFLqbwykF8vZ6WeNz0wngLkbfetTad_2wrZmeYLkZ9k4IVrN5hDEUpHzYo52hykVB3AkrJYUoLHVeuN2PeO_ZuOpBantRuDor1e3QcKbHJmuEufTyvsqWMELriQDC',
        },
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
