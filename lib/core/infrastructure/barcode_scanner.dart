import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';

import 'package:play_manager/auth/infrastructure/auth_local_service.dart';
import 'package:play_manager/core/domain/failure.dart';
import 'package:play_manager/core/infrastructure/dio_extensions.dart';

class BarcodeScanner {
  final AuthLocalService _localService;
  final Dio _dio;

  BarcodeScanner(this._localService, this._dio);

  Future<String> scanBarcode() async {
    final String barcodeScanRes = await FlutterBarcodeScanner.scanBarcode(
      "#ff6666",
      "ОТМЕНА",
      false,
      ScanMode.QR,
    );
    return barcodeScanRes;
  }

  Future<Either<Failure, Unit>> getChequeStatus(String orderId) async {
    final user = _localService.setUser();
    try {
      final response = await _dio.post(
        '/get-cheque',
        data: FormData.fromMap({"id": user?.id, 'order_id': orderId}),
      );

      if (response.statusCode == 200 && response.data['stateCode'] == 200) {
        return right(unit);
      } else {
        return left(Failure.server(response.data['message'] as String?));
      }
    } on DioError catch (e) {
      if (e.isConnectionError) {
        return left(const Failure.noConnection());
      } else {
        return left(Failure.server(e.message));
      }
    }
  }

  Future<Either<Failure, Unit>> closeCheque(String orderId) async {
    final user = _localService.setUser();
    try {
      final response = await _dio.post(
        '/close-cheque',
        data: FormData.fromMap({
          "id": user?.id,
          'order_id': orderId,
        }),
      );
      if (response.statusCode == 200 && response.data['stateCode'] == 200) {
        return right(unit);
      } else {
        return left(Failure.server(response.data['message'] as String?));
      }
    } on DioError catch (e) {
      if (e.isConnectionError) {
        return left(const Failure.noConnection());
      } else {
        return left(Failure.server(e.message));
      }
    }
  }
}
