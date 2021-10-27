import 'package:dio/dio.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:play_manager/core/infrastructure/barcode_scanner.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'package:play_manager/auth/shared/providers.dart';
import 'package:play_manager/core/domain/app_config.dart';
import 'package:play_manager/core/infrastructure/analytics_service.dart';
import 'package:play_manager/core/infrastructure/device_details.dart';
import 'package:play_manager/core/infrastructure/hive_datastore.dart';
import 'package:play_manager/core/presentation/dialogs.dart';

final appConfigProvider = Provider<AppConfig>(
  (_) => throw UnimplementedError(),
);

final dioProvider = Provider<Dio>(
  (_) => throw UnimplementedError(),
);

final analyticsServiceProvider = Provider(
  (ref) => AnalyticsService(),
);

final deviceDetailsProvider = Provider<DeviceDetails?>(
  (_) => throw UnimplementedError(),
);

final hiveDataStoreProvider = Provider<HiveDataStore>(
  (_) => throw UnimplementedError(),
);

final barcodeScanProvider = Provider(
  (ref) => BarcodeScanner(
    ref.watch(authLocalServiceProvider),
    ref.watch(dioProvider),
  ),
);

final dialogProvider = Provider(
  (ref) => Dialogs(ref.watch(authNotifierProvider.notifier)),
);

final sharedPrefsProvider = Provider<SharedPreferences>(
  (_) => throw UnimplementedError(),
);
