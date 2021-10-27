import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

import 'package:play_manager/core/domain/failure.dart';
import 'package:play_manager/core/domain/user_model.dart';
import 'package:play_manager/core/infrastructure/device_details.dart';
import 'package:play_manager/core/infrastructure/dio_extensions.dart';
import 'package:play_manager/core/infrastructure/network_exceptions.dart';

class AuthRemoteService {
  final Dio _dio;
  final DeviceDetails? _details;

  AuthRemoteService(this._dio, this._details);

  Future<Either<Failure, UserModel>> signIn({
    required String login,
    required String password,
  }) async {
    final params = {
      "login": login,
      "password": password,
      "deviceId": _details?.deviceId,
      "system": _details?.system,
      "systemVersion": _details?.systemVersion,
      "systemName": _details?.systemName,
      "appVersion": _details?.appVersion,
      "deviceName": _details?.deviceName,
    };
    final formData = FormData.fromMap(params);
    try {
      final response = await _dio.post(
        '/auth',
        data: formData,
      );
      if (response.statusCode == 200) {
        if (response.data['stateCode'] == 200) {
          final responseData =
              (response.data['data'] as Map).cast<String, dynamic>();
          final user = UserModel.fromJson(responseData);
          return right(user);
        } else {
          throw RestApiException(
            response.data['stateCode'] as int?,
            response.data['message'] as String?,
          );
        }
      }
    } on DioError catch (e) {
      if (e.isConnectionError) {
        return left(const Failure.noConnection());
      } else {
        return left(Failure.server(e.message));
      }
    }
    return left(const Failure.server());
  }
}
