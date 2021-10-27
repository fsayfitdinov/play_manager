import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:play_manager/auth/shared/providers.dart';

import 'package:play_manager/core/shared/providers.dart';
import 'package:play_manager/core/application/barcode_scan_notifier.dart';
import 'package:play_manager/sales/application/data_notifier.dart';
import 'package:play_manager/sales/infrastructure/data_getter.dart';

final dataGetterProvider = Provider(
  (ref) => DataGetter(
    ref.watch(dioProvider),
    ref.watch(authLocalServiceProvider),
  ),
);

final dataNotifierProvider =
    StateNotifierProvider<DataNotifier, DataNotifierState>(
  (ref) => DataNotifier(
    ref.watch(dataGetterProvider),
  ),
);

final barcodeScanNotifierProvider =
    StateNotifierProvider.autoDispose<BarcodeScanNotifier, BarcodeScanState>(
  (ref) => BarcodeScanNotifier(
    ref.watch(barcodeScanProvider),
  ),
);
