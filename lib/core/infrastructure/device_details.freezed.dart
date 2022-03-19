// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'device_details.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$DeviceDetailsTearOff {
  const _$DeviceDetailsTearOff();

  _DeviceDetails call(
      {required String appVersion,
      required String system,
      required String systemVersion,
      required String deviceId,
      required String deviceName,
      required String systemName}) {
    return _DeviceDetails(
      appVersion: appVersion,
      system: system,
      systemVersion: systemVersion,
      deviceId: deviceId,
      deviceName: deviceName,
      systemName: systemName,
    );
  }
}

/// @nodoc
const $DeviceDetails = _$DeviceDetailsTearOff();

/// @nodoc
mixin _$DeviceDetails {
  String get appVersion => throw _privateConstructorUsedError;
  String get system => throw _privateConstructorUsedError;
  String get systemVersion => throw _privateConstructorUsedError;
  String get deviceId => throw _privateConstructorUsedError;
  String get deviceName => throw _privateConstructorUsedError;
  String get systemName => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DeviceDetailsCopyWith<DeviceDetails> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeviceDetailsCopyWith<$Res> {
  factory $DeviceDetailsCopyWith(
          DeviceDetails value, $Res Function(DeviceDetails) then) =
      _$DeviceDetailsCopyWithImpl<$Res>;
  $Res call(
      {String appVersion,
      String system,
      String systemVersion,
      String deviceId,
      String deviceName,
      String systemName});
}

/// @nodoc
class _$DeviceDetailsCopyWithImpl<$Res>
    implements $DeviceDetailsCopyWith<$Res> {
  _$DeviceDetailsCopyWithImpl(this._value, this._then);

  final DeviceDetails _value;
  // ignore: unused_field
  final $Res Function(DeviceDetails) _then;

  @override
  $Res call({
    Object? appVersion = freezed,
    Object? system = freezed,
    Object? systemVersion = freezed,
    Object? deviceId = freezed,
    Object? deviceName = freezed,
    Object? systemName = freezed,
  }) {
    return _then(_value.copyWith(
      appVersion: appVersion == freezed
          ? _value.appVersion
          : appVersion // ignore: cast_nullable_to_non_nullable
              as String,
      system: system == freezed
          ? _value.system
          : system // ignore: cast_nullable_to_non_nullable
              as String,
      systemVersion: systemVersion == freezed
          ? _value.systemVersion
          : systemVersion // ignore: cast_nullable_to_non_nullable
              as String,
      deviceId: deviceId == freezed
          ? _value.deviceId
          : deviceId // ignore: cast_nullable_to_non_nullable
              as String,
      deviceName: deviceName == freezed
          ? _value.deviceName
          : deviceName // ignore: cast_nullable_to_non_nullable
              as String,
      systemName: systemName == freezed
          ? _value.systemName
          : systemName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$DeviceDetailsCopyWith<$Res>
    implements $DeviceDetailsCopyWith<$Res> {
  factory _$DeviceDetailsCopyWith(
          _DeviceDetails value, $Res Function(_DeviceDetails) then) =
      __$DeviceDetailsCopyWithImpl<$Res>;
  @override
  $Res call(
      {String appVersion,
      String system,
      String systemVersion,
      String deviceId,
      String deviceName,
      String systemName});
}

/// @nodoc
class __$DeviceDetailsCopyWithImpl<$Res>
    extends _$DeviceDetailsCopyWithImpl<$Res>
    implements _$DeviceDetailsCopyWith<$Res> {
  __$DeviceDetailsCopyWithImpl(
      _DeviceDetails _value, $Res Function(_DeviceDetails) _then)
      : super(_value, (v) => _then(v as _DeviceDetails));

  @override
  _DeviceDetails get _value => super._value as _DeviceDetails;

  @override
  $Res call({
    Object? appVersion = freezed,
    Object? system = freezed,
    Object? systemVersion = freezed,
    Object? deviceId = freezed,
    Object? deviceName = freezed,
    Object? systemName = freezed,
  }) {
    return _then(_DeviceDetails(
      appVersion: appVersion == freezed
          ? _value.appVersion
          : appVersion // ignore: cast_nullable_to_non_nullable
              as String,
      system: system == freezed
          ? _value.system
          : system // ignore: cast_nullable_to_non_nullable
              as String,
      systemVersion: systemVersion == freezed
          ? _value.systemVersion
          : systemVersion // ignore: cast_nullable_to_non_nullable
              as String,
      deviceId: deviceId == freezed
          ? _value.deviceId
          : deviceId // ignore: cast_nullable_to_non_nullable
              as String,
      deviceName: deviceName == freezed
          ? _value.deviceName
          : deviceName // ignore: cast_nullable_to_non_nullable
              as String,
      systemName: systemName == freezed
          ? _value.systemName
          : systemName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_DeviceDetails extends _DeviceDetails {
  const _$_DeviceDetails(
      {required this.appVersion,
      required this.system,
      required this.systemVersion,
      required this.deviceId,
      required this.deviceName,
      required this.systemName})
      : super._();

  @override
  final String appVersion;
  @override
  final String system;
  @override
  final String systemVersion;
  @override
  final String deviceId;
  @override
  final String deviceName;
  @override
  final String systemName;

  @override
  String toString() {
    return 'DeviceDetails(appVersion: $appVersion, system: $system, systemVersion: $systemVersion, deviceId: $deviceId, deviceName: $deviceName, systemName: $systemName)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _DeviceDetails &&
            const DeepCollectionEquality()
                .equals(other.appVersion, appVersion) &&
            const DeepCollectionEquality().equals(other.system, system) &&
            const DeepCollectionEquality()
                .equals(other.systemVersion, systemVersion) &&
            const DeepCollectionEquality().equals(other.deviceId, deviceId) &&
            const DeepCollectionEquality()
                .equals(other.deviceName, deviceName) &&
            const DeepCollectionEquality()
                .equals(other.systemName, systemName));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(appVersion),
      const DeepCollectionEquality().hash(system),
      const DeepCollectionEquality().hash(systemVersion),
      const DeepCollectionEquality().hash(deviceId),
      const DeepCollectionEquality().hash(deviceName),
      const DeepCollectionEquality().hash(systemName));

  @JsonKey(ignore: true)
  @override
  _$DeviceDetailsCopyWith<_DeviceDetails> get copyWith =>
      __$DeviceDetailsCopyWithImpl<_DeviceDetails>(this, _$identity);
}

abstract class _DeviceDetails extends DeviceDetails {
  const factory _DeviceDetails(
      {required String appVersion,
      required String system,
      required String systemVersion,
      required String deviceId,
      required String deviceName,
      required String systemName}) = _$_DeviceDetails;
  const _DeviceDetails._() : super._();

  @override
  String get appVersion;
  @override
  String get system;
  @override
  String get systemVersion;
  @override
  String get deviceId;
  @override
  String get deviceName;
  @override
  String get systemName;
  @override
  @JsonKey(ignore: true)
  _$DeviceDetailsCopyWith<_DeviceDetails> get copyWith =>
      throw _privateConstructorUsedError;
}
