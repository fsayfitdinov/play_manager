import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'package:play_manager/core/domain/branch.dart';
import 'package:play_manager/core/domain/failure.dart';
import 'package:play_manager/core/domain/order.dart';
import 'package:play_manager/core/domain/room.dart';
import 'package:play_manager/core/domain/service_model.dart';
import 'package:play_manager/sales/infrastructure/data_getter.dart';

part 'data_notifier.freezed.dart';

@freezed
class DataNotifierState with _$DataNotifierState {
  factory DataNotifierState({
    required bool loading,
    required bool hasError,
    Failure? error,
    required List<ServiceModel> services,
    required List<OrderModel> orders,
    required List<Room> rooms,
    Branch? branch,
  }) = _DataNotifierState;

  factory DataNotifierState.initial() => DataNotifierState(
        hasError: false,
        loading: true,
        services: [],
        orders: [],
        rooms: [],
      );
}

class DataNotifier extends StateNotifier<DataNotifierState> {
  final DataGetter _getter;

  DataNotifier(this._getter) : super(DataNotifierState.initial());

  Future<void> getOrders() async {
    state = state.copyWith(loading: true);
    final failureOrSuccess = await _getter.getOrders();
    state = failureOrSuccess.fold(
      (failure) => state.copyWith(
        loading: false,
        error: failure,
        hasError: true,
      ),
      (orders) => state.copyWith(
        orders: orders,
        loading: false,
        hasError: false,
        error: null,
      ),
    );
  }
}
