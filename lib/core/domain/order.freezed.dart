// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'order.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

OrderModel _$OrderModelFromJson(Map<String, dynamic> json) {
  return _OrderModel.fromJson(json);
}

/// @nodoc
class _$OrderModelTearOff {
  const _$OrderModelTearOff();

  _OrderModel call(
      {required String id,
      required String branchId,
      required String serviceId,
      required String serviceName,
      required String roomId,
      required String roomName,
      required String price,
      required String clientName,
      @JsonKey(fromJson: _getDateTime)
          required DateTime startDateTime,
      @JsonKey(fromJson: _getDateTime)
          required DateTime endDateTime,
      required String delta,
      @JsonKey(fromJson: _isVipFromJson, defaultValue: false)
          required bool isVip,
      @JsonKey(defaultValue: '0')
          required String totalPrice}) {
    return _OrderModel(
      id: id,
      branchId: branchId,
      serviceId: serviceId,
      serviceName: serviceName,
      roomId: roomId,
      roomName: roomName,
      price: price,
      clientName: clientName,
      startDateTime: startDateTime,
      endDateTime: endDateTime,
      delta: delta,
      isVip: isVip,
      totalPrice: totalPrice,
    );
  }

  OrderModel fromJson(Map<String, Object?> json) {
    return OrderModel.fromJson(json);
  }
}

/// @nodoc
const $OrderModel = _$OrderModelTearOff();

/// @nodoc
mixin _$OrderModel {
  String get id => throw _privateConstructorUsedError;
  String get branchId => throw _privateConstructorUsedError;
  String get serviceId => throw _privateConstructorUsedError;
  String get serviceName => throw _privateConstructorUsedError;
  String get roomId => throw _privateConstructorUsedError;
  String get roomName => throw _privateConstructorUsedError;
  String get price => throw _privateConstructorUsedError;
  String get clientName => throw _privateConstructorUsedError;
  @JsonKey(fromJson: _getDateTime)
  DateTime get startDateTime => throw _privateConstructorUsedError;
  @JsonKey(fromJson: _getDateTime)
  DateTime get endDateTime => throw _privateConstructorUsedError;
  String get delta => throw _privateConstructorUsedError;
  @JsonKey(fromJson: _isVipFromJson, defaultValue: false)
  bool get isVip => throw _privateConstructorUsedError;
  @JsonKey(defaultValue: '0')
  String get totalPrice => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OrderModelCopyWith<OrderModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderModelCopyWith<$Res> {
  factory $OrderModelCopyWith(
          OrderModel value, $Res Function(OrderModel) then) =
      _$OrderModelCopyWithImpl<$Res>;
  $Res call(
      {String id,
      String branchId,
      String serviceId,
      String serviceName,
      String roomId,
      String roomName,
      String price,
      String clientName,
      @JsonKey(fromJson: _getDateTime) DateTime startDateTime,
      @JsonKey(fromJson: _getDateTime) DateTime endDateTime,
      String delta,
      @JsonKey(fromJson: _isVipFromJson, defaultValue: false) bool isVip,
      @JsonKey(defaultValue: '0') String totalPrice});
}

/// @nodoc
class _$OrderModelCopyWithImpl<$Res> implements $OrderModelCopyWith<$Res> {
  _$OrderModelCopyWithImpl(this._value, this._then);

  final OrderModel _value;
  // ignore: unused_field
  final $Res Function(OrderModel) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? branchId = freezed,
    Object? serviceId = freezed,
    Object? serviceName = freezed,
    Object? roomId = freezed,
    Object? roomName = freezed,
    Object? price = freezed,
    Object? clientName = freezed,
    Object? startDateTime = freezed,
    Object? endDateTime = freezed,
    Object? delta = freezed,
    Object? isVip = freezed,
    Object? totalPrice = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      branchId: branchId == freezed
          ? _value.branchId
          : branchId // ignore: cast_nullable_to_non_nullable
              as String,
      serviceId: serviceId == freezed
          ? _value.serviceId
          : serviceId // ignore: cast_nullable_to_non_nullable
              as String,
      serviceName: serviceName == freezed
          ? _value.serviceName
          : serviceName // ignore: cast_nullable_to_non_nullable
              as String,
      roomId: roomId == freezed
          ? _value.roomId
          : roomId // ignore: cast_nullable_to_non_nullable
              as String,
      roomName: roomName == freezed
          ? _value.roomName
          : roomName // ignore: cast_nullable_to_non_nullable
              as String,
      price: price == freezed
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as String,
      clientName: clientName == freezed
          ? _value.clientName
          : clientName // ignore: cast_nullable_to_non_nullable
              as String,
      startDateTime: startDateTime == freezed
          ? _value.startDateTime
          : startDateTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      endDateTime: endDateTime == freezed
          ? _value.endDateTime
          : endDateTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      delta: delta == freezed
          ? _value.delta
          : delta // ignore: cast_nullable_to_non_nullable
              as String,
      isVip: isVip == freezed
          ? _value.isVip
          : isVip // ignore: cast_nullable_to_non_nullable
              as bool,
      totalPrice: totalPrice == freezed
          ? _value.totalPrice
          : totalPrice // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$OrderModelCopyWith<$Res> implements $OrderModelCopyWith<$Res> {
  factory _$OrderModelCopyWith(
          _OrderModel value, $Res Function(_OrderModel) then) =
      __$OrderModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {String id,
      String branchId,
      String serviceId,
      String serviceName,
      String roomId,
      String roomName,
      String price,
      String clientName,
      @JsonKey(fromJson: _getDateTime) DateTime startDateTime,
      @JsonKey(fromJson: _getDateTime) DateTime endDateTime,
      String delta,
      @JsonKey(fromJson: _isVipFromJson, defaultValue: false) bool isVip,
      @JsonKey(defaultValue: '0') String totalPrice});
}

/// @nodoc
class __$OrderModelCopyWithImpl<$Res> extends _$OrderModelCopyWithImpl<$Res>
    implements _$OrderModelCopyWith<$Res> {
  __$OrderModelCopyWithImpl(
      _OrderModel _value, $Res Function(_OrderModel) _then)
      : super(_value, (v) => _then(v as _OrderModel));

  @override
  _OrderModel get _value => super._value as _OrderModel;

  @override
  $Res call({
    Object? id = freezed,
    Object? branchId = freezed,
    Object? serviceId = freezed,
    Object? serviceName = freezed,
    Object? roomId = freezed,
    Object? roomName = freezed,
    Object? price = freezed,
    Object? clientName = freezed,
    Object? startDateTime = freezed,
    Object? endDateTime = freezed,
    Object? delta = freezed,
    Object? isVip = freezed,
    Object? totalPrice = freezed,
  }) {
    return _then(_OrderModel(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      branchId: branchId == freezed
          ? _value.branchId
          : branchId // ignore: cast_nullable_to_non_nullable
              as String,
      serviceId: serviceId == freezed
          ? _value.serviceId
          : serviceId // ignore: cast_nullable_to_non_nullable
              as String,
      serviceName: serviceName == freezed
          ? _value.serviceName
          : serviceName // ignore: cast_nullable_to_non_nullable
              as String,
      roomId: roomId == freezed
          ? _value.roomId
          : roomId // ignore: cast_nullable_to_non_nullable
              as String,
      roomName: roomName == freezed
          ? _value.roomName
          : roomName // ignore: cast_nullable_to_non_nullable
              as String,
      price: price == freezed
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as String,
      clientName: clientName == freezed
          ? _value.clientName
          : clientName // ignore: cast_nullable_to_non_nullable
              as String,
      startDateTime: startDateTime == freezed
          ? _value.startDateTime
          : startDateTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      endDateTime: endDateTime == freezed
          ? _value.endDateTime
          : endDateTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      delta: delta == freezed
          ? _value.delta
          : delta // ignore: cast_nullable_to_non_nullable
              as String,
      isVip: isVip == freezed
          ? _value.isVip
          : isVip // ignore: cast_nullable_to_non_nullable
              as bool,
      totalPrice: totalPrice == freezed
          ? _value.totalPrice
          : totalPrice // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_OrderModel extends _OrderModel {
  const _$_OrderModel(
      {required this.id,
      required this.branchId,
      required this.serviceId,
      required this.serviceName,
      required this.roomId,
      required this.roomName,
      required this.price,
      required this.clientName,
      @JsonKey(fromJson: _getDateTime)
          required this.startDateTime,
      @JsonKey(fromJson: _getDateTime)
          required this.endDateTime,
      required this.delta,
      @JsonKey(fromJson: _isVipFromJson, defaultValue: false)
          required this.isVip,
      @JsonKey(defaultValue: '0')
          required this.totalPrice})
      : super._();

  factory _$_OrderModel.fromJson(Map<String, dynamic> json) =>
      _$$_OrderModelFromJson(json);

  @override
  final String id;
  @override
  final String branchId;
  @override
  final String serviceId;
  @override
  final String serviceName;
  @override
  final String roomId;
  @override
  final String roomName;
  @override
  final String price;
  @override
  final String clientName;
  @override
  @JsonKey(fromJson: _getDateTime)
  final DateTime startDateTime;
  @override
  @JsonKey(fromJson: _getDateTime)
  final DateTime endDateTime;
  @override
  final String delta;
  @override
  @JsonKey(fromJson: _isVipFromJson, defaultValue: false)
  final bool isVip;
  @override
  @JsonKey(defaultValue: '0')
  final String totalPrice;

  @override
  String toString() {
    return 'OrderModel(id: $id, branchId: $branchId, serviceId: $serviceId, serviceName: $serviceName, roomId: $roomId, roomName: $roomName, price: $price, clientName: $clientName, startDateTime: $startDateTime, endDateTime: $endDateTime, delta: $delta, isVip: $isVip, totalPrice: $totalPrice)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _OrderModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.branchId, branchId) ||
                other.branchId == branchId) &&
            (identical(other.serviceId, serviceId) ||
                other.serviceId == serviceId) &&
            (identical(other.serviceName, serviceName) ||
                other.serviceName == serviceName) &&
            (identical(other.roomId, roomId) || other.roomId == roomId) &&
            (identical(other.roomName, roomName) ||
                other.roomName == roomName) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.clientName, clientName) ||
                other.clientName == clientName) &&
            (identical(other.startDateTime, startDateTime) ||
                other.startDateTime == startDateTime) &&
            (identical(other.endDateTime, endDateTime) ||
                other.endDateTime == endDateTime) &&
            (identical(other.delta, delta) || other.delta == delta) &&
            (identical(other.isVip, isVip) || other.isVip == isVip) &&
            (identical(other.totalPrice, totalPrice) ||
                other.totalPrice == totalPrice));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      branchId,
      serviceId,
      serviceName,
      roomId,
      roomName,
      price,
      clientName,
      startDateTime,
      endDateTime,
      delta,
      isVip,
      totalPrice);

  @JsonKey(ignore: true)
  @override
  _$OrderModelCopyWith<_OrderModel> get copyWith =>
      __$OrderModelCopyWithImpl<_OrderModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_OrderModelToJson(this);
  }
}

abstract class _OrderModel extends OrderModel {
  const factory _OrderModel(
      {required String id,
      required String branchId,
      required String serviceId,
      required String serviceName,
      required String roomId,
      required String roomName,
      required String price,
      required String clientName,
      @JsonKey(fromJson: _getDateTime)
          required DateTime startDateTime,
      @JsonKey(fromJson: _getDateTime)
          required DateTime endDateTime,
      required String delta,
      @JsonKey(fromJson: _isVipFromJson, defaultValue: false)
          required bool isVip,
      @JsonKey(defaultValue: '0')
          required String totalPrice}) = _$_OrderModel;
  const _OrderModel._() : super._();

  factory _OrderModel.fromJson(Map<String, dynamic> json) =
      _$_OrderModel.fromJson;

  @override
  String get id;
  @override
  String get branchId;
  @override
  String get serviceId;
  @override
  String get serviceName;
  @override
  String get roomId;
  @override
  String get roomName;
  @override
  String get price;
  @override
  String get clientName;
  @override
  @JsonKey(fromJson: _getDateTime)
  DateTime get startDateTime;
  @override
  @JsonKey(fromJson: _getDateTime)
  DateTime get endDateTime;
  @override
  String get delta;
  @override
  @JsonKey(fromJson: _isVipFromJson, defaultValue: false)
  bool get isVip;
  @override
  @JsonKey(defaultValue: '0')
  String get totalPrice;
  @override
  @JsonKey(ignore: true)
  _$OrderModelCopyWith<_OrderModel> get copyWith =>
      throw _privateConstructorUsedError;
}
