import 'dart:io';

import 'package:dio/dio.dart';

extension DioErrorX on DioError {
  bool get isConnectionError =>
      type == DioErrorType.other && error is SocketException;
}
