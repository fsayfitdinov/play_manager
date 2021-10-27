import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:play_manager/auth/infrastructure/auth_local_service.dart';

import 'package:play_manager/core/domain/failure.dart';
import 'package:play_manager/core/domain/order.dart';
import 'package:play_manager/core/infrastructure/dio_extensions.dart';

class DataGetter {
  final Dio _dio;
  final AuthLocalService _localService;

  DataGetter(this._dio, this._localService);

  // Future<Either<Failure, Map<Branch, Map<List<Room>, List<ServiceModel>>>>>
  //     getData() async {
  //   try {
  //     final user = _dataStore.setUser();

  //     print('user is $user');
  //     final Response response = await _dio.post(
  //       '/get-data',
  //       data: FormData.fromMap({"id": user}),
  //     );
  //     if (response.statusCode == 200 && response.data['stateCode'] == 200) {
  //       final roomsData = (response.data['rooms'] as List<dynamic>)
  //           .cast<Map<String, dynamic>>();
  //       final rooms = roomsData.map((json) => Room.fromJson(json)).toList();
  //       final serviceData = (response.data['services'] as List<dynamic>)
  //           .cast<Map<String, dynamic>>();
  //       final services =
  //           serviceData.map((json) => ServiceModel.fromJson(json)).toList();
  //       final branchData =
  //           (response.data['branch'] as Map).cast<String, dynamic>();
  //       final branch = Branch.fromJson(branchData);
  //       return right({
  //         branch: {rooms: services}
  //       });
  //     } else {
  //       return left(Failure.server(response.data['message'].toString()));
  //     }
  //   } on DioError catch (e) {
  //     if (e.isConnectionError) {
  //       return left(const Failure.noConnection());
  //     } else {
  //       return left(Failure.server(e.message));
  //     }
  //   }
  // }

  Future<Either<Failure, List<OrderModel>>> getOrders() async {
    try {
      final user = _localService.setUser();
      final Response response = await _dio.post(
        '/get-orders',
        data: FormData.fromMap({"id": '${user?.id}'}),
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
}
