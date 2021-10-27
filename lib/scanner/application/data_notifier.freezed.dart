// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'data_notifier.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$DataNotifierStateTearOff {
  const _$DataNotifierStateTearOff();

  _DataNotifierState call(
      {required bool loading,
      required bool hasError,
      Failure? error,
      required List<ServiceModel> services,
      required List<OrderModel> orders,
      required List<Room> rooms,
      Branch? branch}) {
    return _DataNotifierState(
      loading: loading,
      hasError: hasError,
      error: error,
      services: services,
      orders: orders,
      rooms: rooms,
      branch: branch,
    );
  }
}

/// @nodoc
const $DataNotifierState = _$DataNotifierStateTearOff();

/// @nodoc
mixin _$DataNotifierState {
  bool get loading => throw _privateConstructorUsedError;
  bool get hasError => throw _privateConstructorUsedError;
  Failure? get error => throw _privateConstructorUsedError;
  List<ServiceModel> get services => throw _privateConstructorUsedError;
  List<OrderModel> get orders => throw _privateConstructorUsedError;
  List<Room> get rooms => throw _privateConstructorUsedError;
  Branch? get branch => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DataNotifierStateCopyWith<DataNotifierState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DataNotifierStateCopyWith<$Res> {
  factory $DataNotifierStateCopyWith(
          DataNotifierState value, $Res Function(DataNotifierState) then) =
      _$DataNotifierStateCopyWithImpl<$Res>;
  $Res call(
      {bool loading,
      bool hasError,
      Failure? error,
      List<ServiceModel> services,
      List<OrderModel> orders,
      List<Room> rooms,
      Branch? branch});

  $FailureCopyWith<$Res>? get error;
  $BranchCopyWith<$Res>? get branch;
}

/// @nodoc
class _$DataNotifierStateCopyWithImpl<$Res>
    implements $DataNotifierStateCopyWith<$Res> {
  _$DataNotifierStateCopyWithImpl(this._value, this._then);

  final DataNotifierState _value;
  // ignore: unused_field
  final $Res Function(DataNotifierState) _then;

  @override
  $Res call({
    Object? loading = freezed,
    Object? hasError = freezed,
    Object? error = freezed,
    Object? services = freezed,
    Object? orders = freezed,
    Object? rooms = freezed,
    Object? branch = freezed,
  }) {
    return _then(_value.copyWith(
      loading: loading == freezed
          ? _value.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as bool,
      hasError: hasError == freezed
          ? _value.hasError
          : hasError // ignore: cast_nullable_to_non_nullable
              as bool,
      error: error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as Failure?,
      services: services == freezed
          ? _value.services
          : services // ignore: cast_nullable_to_non_nullable
              as List<ServiceModel>,
      orders: orders == freezed
          ? _value.orders
          : orders // ignore: cast_nullable_to_non_nullable
              as List<OrderModel>,
      rooms: rooms == freezed
          ? _value.rooms
          : rooms // ignore: cast_nullable_to_non_nullable
              as List<Room>,
      branch: branch == freezed
          ? _value.branch
          : branch // ignore: cast_nullable_to_non_nullable
              as Branch?,
    ));
  }

  @override
  $FailureCopyWith<$Res>? get error {
    if (_value.error == null) {
      return null;
    }

    return $FailureCopyWith<$Res>(_value.error!, (value) {
      return _then(_value.copyWith(error: value));
    });
  }

  @override
  $BranchCopyWith<$Res>? get branch {
    if (_value.branch == null) {
      return null;
    }

    return $BranchCopyWith<$Res>(_value.branch!, (value) {
      return _then(_value.copyWith(branch: value));
    });
  }
}

/// @nodoc
abstract class _$DataNotifierStateCopyWith<$Res>
    implements $DataNotifierStateCopyWith<$Res> {
  factory _$DataNotifierStateCopyWith(
          _DataNotifierState value, $Res Function(_DataNotifierState) then) =
      __$DataNotifierStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {bool loading,
      bool hasError,
      Failure? error,
      List<ServiceModel> services,
      List<OrderModel> orders,
      List<Room> rooms,
      Branch? branch});

  @override
  $FailureCopyWith<$Res>? get error;
  @override
  $BranchCopyWith<$Res>? get branch;
}

/// @nodoc
class __$DataNotifierStateCopyWithImpl<$Res>
    extends _$DataNotifierStateCopyWithImpl<$Res>
    implements _$DataNotifierStateCopyWith<$Res> {
  __$DataNotifierStateCopyWithImpl(
      _DataNotifierState _value, $Res Function(_DataNotifierState) _then)
      : super(_value, (v) => _then(v as _DataNotifierState));

  @override
  _DataNotifierState get _value => super._value as _DataNotifierState;

  @override
  $Res call({
    Object? loading = freezed,
    Object? hasError = freezed,
    Object? error = freezed,
    Object? services = freezed,
    Object? orders = freezed,
    Object? rooms = freezed,
    Object? branch = freezed,
  }) {
    return _then(_DataNotifierState(
      loading: loading == freezed
          ? _value.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as bool,
      hasError: hasError == freezed
          ? _value.hasError
          : hasError // ignore: cast_nullable_to_non_nullable
              as bool,
      error: error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as Failure?,
      services: services == freezed
          ? _value.services
          : services // ignore: cast_nullable_to_non_nullable
              as List<ServiceModel>,
      orders: orders == freezed
          ? _value.orders
          : orders // ignore: cast_nullable_to_non_nullable
              as List<OrderModel>,
      rooms: rooms == freezed
          ? _value.rooms
          : rooms // ignore: cast_nullable_to_non_nullable
              as List<Room>,
      branch: branch == freezed
          ? _value.branch
          : branch // ignore: cast_nullable_to_non_nullable
              as Branch?,
    ));
  }
}

/// @nodoc

class _$_DataNotifierState implements _DataNotifierState {
  _$_DataNotifierState(
      {required this.loading,
      required this.hasError,
      this.error,
      required this.services,
      required this.orders,
      required this.rooms,
      this.branch});

  @override
  final bool loading;
  @override
  final bool hasError;
  @override
  final Failure? error;
  @override
  final List<ServiceModel> services;
  @override
  final List<OrderModel> orders;
  @override
  final List<Room> rooms;
  @override
  final Branch? branch;

  @override
  String toString() {
    return 'DataNotifierState(loading: $loading, hasError: $hasError, error: $error, services: $services, orders: $orders, rooms: $rooms, branch: $branch)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _DataNotifierState &&
            (identical(other.loading, loading) || other.loading == loading) &&
            (identical(other.hasError, hasError) ||
                other.hasError == hasError) &&
            (identical(other.error, error) || other.error == error) &&
            const DeepCollectionEquality().equals(other.services, services) &&
            const DeepCollectionEquality().equals(other.orders, orders) &&
            const DeepCollectionEquality().equals(other.rooms, rooms) &&
            (identical(other.branch, branch) || other.branch == branch));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      loading,
      hasError,
      error,
      const DeepCollectionEquality().hash(services),
      const DeepCollectionEquality().hash(orders),
      const DeepCollectionEquality().hash(rooms),
      branch);

  @JsonKey(ignore: true)
  @override
  _$DataNotifierStateCopyWith<_DataNotifierState> get copyWith =>
      __$DataNotifierStateCopyWithImpl<_DataNotifierState>(this, _$identity);
}

abstract class _DataNotifierState implements DataNotifierState {
  factory _DataNotifierState(
      {required bool loading,
      required bool hasError,
      Failure? error,
      required List<ServiceModel> services,
      required List<OrderModel> orders,
      required List<Room> rooms,
      Branch? branch}) = _$_DataNotifierState;

  @override
  bool get loading;
  @override
  bool get hasError;
  @override
  Failure? get error;
  @override
  List<ServiceModel> get services;
  @override
  List<OrderModel> get orders;
  @override
  List<Room> get rooms;
  @override
  Branch? get branch;
  @override
  @JsonKey(ignore: true)
  _$DataNotifierStateCopyWith<_DataNotifierState> get copyWith =>
      throw _privateConstructorUsedError;
}
