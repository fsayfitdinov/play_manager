// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_OrderModel _$$_OrderModelFromJson(Map<String, dynamic> json) =>
    _$_OrderModel(
      id: json['id'] as String,
      branchId: json['branchId'] as String,
      serviceId: json['serviceId'] as String,
      serviceName: json['serviceName'] as String,
      roomId: json['roomId'] as String,
      roomName: json['roomName'] as String,
      price: json['price'] as String,
      clientName: json['clientName'] as String,
      startDateTime: _getDateTime(json['startDateTime']),
      endDateTime: _getDateTime(json['endDateTime']),
      delta: json['delta'] as String,
      isVip: json['isVip'] == null ? false : _isVipFromJson(json['isVip']),
      totalPrice: json['totalPrice'] as String? ?? '0',
    );

Map<String, dynamic> _$$_OrderModelToJson(_$_OrderModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'branchId': instance.branchId,
      'serviceId': instance.serviceId,
      'serviceName': instance.serviceName,
      'roomId': instance.roomId,
      'roomName': instance.roomName,
      'price': instance.price,
      'clientName': instance.clientName,
      'startDateTime': instance.startDateTime.toIso8601String(),
      'endDateTime': instance.endDateTime.toIso8601String(),
      'delta': instance.delta,
      'isVip': instance.isVip,
      'totalPrice': instance.totalPrice,
    };
