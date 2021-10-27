import 'package:freezed_annotation/freezed_annotation.dart';

part 'order.freezed.dart';
part 'order.g.dart';

bool _isVipFromJson(Object? json) {
  return (json as String?) == '1';
}

DateTime _getDateTime(Object? json) {
  if (json != null) {
    return DateTime.parse(json as String);
  }
  return DateTime.now();
}

@freezed
class OrderModel with _$OrderModel {
  const OrderModel._();
  const factory OrderModel({
    required String id,
    required String branchId,
    required String serviceId,
    required String serviceName,
    required String roomId,
    required String roomName,
    required String price,
    required String clientName,
    @JsonKey(fromJson: _getDateTime) required DateTime startDateTime,
    @JsonKey(fromJson: _getDateTime) required DateTime endDateTime,
    required String delta,
    @JsonKey(fromJson: _isVipFromJson, defaultValue: false) required bool isVip,
    @JsonKey(defaultValue: '0') required String totalPrice,
  }) = _OrderModel;

  factory OrderModel.fromJson(Map<String, dynamic> json) =>
      _$OrderModelFromJson(json);
}
