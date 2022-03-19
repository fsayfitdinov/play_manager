// ignore_for_file: avoid_dynamic_calls

import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter/services.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'package:play_manager/core/domain/app_config.dart';
import 'package:play_manager/core/infrastructure/device_details.dart';
import 'package:play_manager/core/infrastructure/hive_datastore.dart';

part 'injection.freezed.dart';

@freezed
class AppInjections with _$AppInjections {
  const AppInjections._();

  const factory AppInjections({
    required AppConfig appConfig,
    required DeviceDetails? details,
    required HiveDataStore dataStore,
    required SharedPreferences sharedPrefs,
    required Dio dio,
  }) = _AppInjections;
}

class Injection {
  Future<AppInjections> setUpInjection() async {
    final configFile = await rootBundle.loadString('assets/config/main.json');
    final configData = jsonDecode(configFile);
    final appConfig = AppConfig(
      apiKey: configData['API_KEY'] as String,
      baseApiUrl: configData['BASE_API_URL'] as String,
      baseVideoUrl: configData['BASE_VIDEO_URL'] as String,
    );

    final details = DeviceInfoDetails();
    final detailsInfo = await details.getDeviceDetails();
    final dataStore = HiveDataStore();
    await dataStore.init();

    final sharedPrefs = await SharedPreferences.getInstance();

    final dio = Dio(
      BaseOptions(
        baseUrl: configData['BASE_API_URL'] as String,
        headers: {'Token': configData['API_KEY'] as String},
        followRedirects: false,
      ),
    );

    return AppInjections(
      appConfig: appConfig,
      details: detailsInfo,
      dataStore: dataStore,
      dio: dio,
      sharedPrefs: sharedPrefs,
    );
  }
}
