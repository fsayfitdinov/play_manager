import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'package:play_manager/core/domain/failure.dart';
import 'package:play_manager/core/infrastructure/barcode_scanner.dart';

part 'barcode_scan_notifier.freezed.dart';

@freezed
class BarcodeScanState with _$BarcodeScanState {
  const BarcodeScanState._();

  const factory BarcodeScanState.inital() = _Initial;
  const factory BarcodeScanState.loading() = _Loading;
  const factory BarcodeScanState.error([Failure? failure]) = _Error;
  const factory BarcodeScanState.success() = _Success;
}

class BarcodeScanNotifier extends StateNotifier<BarcodeScanState> {
  final BarcodeScanner _barcodeScanner;

  BarcodeScanNotifier(this._barcodeScanner) : super(const BarcodeScanState.inital());

  Future<void> scanBarCode() async {
    final barcode = await _barcodeScanner.scanBarcode();

    state = const BarcodeScanState.loading();
    final failureOrSuccess = await _barcodeScanner.getChequeStatus(barcode);

    failureOrSuccess.fold(
      (failure) => state = BarcodeScanState.error(failure),
      (_) async {
        final failOrSuccess = await _barcodeScanner.closeCheque(barcode);
        return failOrSuccess.fold(
          (fail) => state = BarcodeScanState.error(fail),
          (_) => state = const BarcodeScanState.success(),
        );
      },
    );
  }
}
