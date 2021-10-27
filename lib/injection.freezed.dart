// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'injection.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$AppInjectionsTearOff {
  const _$AppInjectionsTearOff();

  _AppInjections call(
      {required AppConfig appConfig,
      required DeviceDetails? details,
      required HiveDataStore dataStore,
      required SharedPreferences sharedPrefs,
      required Dio dio}) {
    return _AppInjections(
      appConfig: appConfig,
      details: details,
      dataStore: dataStore,
      sharedPrefs: sharedPrefs,
      dio: dio,
    );
  }
}

/// @nodoc
const $AppInjections = _$AppInjectionsTearOff();

/// @nodoc
mixin _$AppInjections {
  AppConfig get appConfig => throw _privateConstructorUsedError;
  DeviceDetails? get details => throw _privateConstructorUsedError;
  HiveDataStore get dataStore => throw _privateConstructorUsedError;
  SharedPreferences get sharedPrefs => throw _privateConstructorUsedError;
  Dio get dio => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AppInjectionsCopyWith<AppInjections> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppInjectionsCopyWith<$Res> {
  factory $AppInjectionsCopyWith(
          AppInjections value, $Res Function(AppInjections) then) =
      _$AppInjectionsCopyWithImpl<$Res>;
  $Res call(
      {AppConfig appConfig,
      DeviceDetails? details,
      HiveDataStore dataStore,
      SharedPreferences sharedPrefs,
      Dio dio});

  $DeviceDetailsCopyWith<$Res>? get details;
}

/// @nodoc
class _$AppInjectionsCopyWithImpl<$Res>
    implements $AppInjectionsCopyWith<$Res> {
  _$AppInjectionsCopyWithImpl(this._value, this._then);

  final AppInjections _value;
  // ignore: unused_field
  final $Res Function(AppInjections) _then;

  @override
  $Res call({
    Object? appConfig = freezed,
    Object? details = freezed,
    Object? dataStore = freezed,
    Object? sharedPrefs = freezed,
    Object? dio = freezed,
  }) {
    return _then(_value.copyWith(
      appConfig: appConfig == freezed
          ? _value.appConfig
          : appConfig // ignore: cast_nullable_to_non_nullable
              as AppConfig,
      details: details == freezed
          ? _value.details
          : details // ignore: cast_nullable_to_non_nullable
              as DeviceDetails?,
      dataStore: dataStore == freezed
          ? _value.dataStore
          : dataStore // ignore: cast_nullable_to_non_nullable
              as HiveDataStore,
      sharedPrefs: sharedPrefs == freezed
          ? _value.sharedPrefs
          : sharedPrefs // ignore: cast_nullable_to_non_nullable
              as SharedPreferences,
      dio: dio == freezed
          ? _value.dio
          : dio // ignore: cast_nullable_to_non_nullable
              as Dio,
    ));
  }

  @override
  $DeviceDetailsCopyWith<$Res>? get details {
    if (_value.details == null) {
      return null;
    }

    return $DeviceDetailsCopyWith<$Res>(_value.details!, (value) {
      return _then(_value.copyWith(details: value));
    });
  }
}

/// @nodoc
abstract class _$AppInjectionsCopyWith<$Res>
    implements $AppInjectionsCopyWith<$Res> {
  factory _$AppInjectionsCopyWith(
          _AppInjections value, $Res Function(_AppInjections) then) =
      __$AppInjectionsCopyWithImpl<$Res>;
  @override
  $Res call(
      {AppConfig appConfig,
      DeviceDetails? details,
      HiveDataStore dataStore,
      SharedPreferences sharedPrefs,
      Dio dio});

  @override
  $DeviceDetailsCopyWith<$Res>? get details;
}

/// @nodoc
class __$AppInjectionsCopyWithImpl<$Res>
    extends _$AppInjectionsCopyWithImpl<$Res>
    implements _$AppInjectionsCopyWith<$Res> {
  __$AppInjectionsCopyWithImpl(
      _AppInjections _value, $Res Function(_AppInjections) _then)
      : super(_value, (v) => _then(v as _AppInjections));

  @override
  _AppInjections get _value => super._value as _AppInjections;

  @override
  $Res call({
    Object? appConfig = freezed,
    Object? details = freezed,
    Object? dataStore = freezed,
    Object? sharedPrefs = freezed,
    Object? dio = freezed,
  }) {
    return _then(_AppInjections(
      appConfig: appConfig == freezed
          ? _value.appConfig
          : appConfig // ignore: cast_nullable_to_non_nullable
              as AppConfig,
      details: details == freezed
          ? _value.details
          : details // ignore: cast_nullable_to_non_nullable
              as DeviceDetails?,
      dataStore: dataStore == freezed
          ? _value.dataStore
          : dataStore // ignore: cast_nullable_to_non_nullable
              as HiveDataStore,
      sharedPrefs: sharedPrefs == freezed
          ? _value.sharedPrefs
          : sharedPrefs // ignore: cast_nullable_to_non_nullable
              as SharedPreferences,
      dio: dio == freezed
          ? _value.dio
          : dio // ignore: cast_nullable_to_non_nullable
              as Dio,
    ));
  }
}

/// @nodoc

class _$_AppInjections extends _AppInjections {
  const _$_AppInjections(
      {required this.appConfig,
      required this.details,
      required this.dataStore,
      required this.sharedPrefs,
      required this.dio})
      : super._();

  @override
  final AppConfig appConfig;
  @override
  final DeviceDetails? details;
  @override
  final HiveDataStore dataStore;
  @override
  final SharedPreferences sharedPrefs;
  @override
  final Dio dio;

  @override
  String toString() {
    return 'AppInjections(appConfig: $appConfig, details: $details, dataStore: $dataStore, sharedPrefs: $sharedPrefs, dio: $dio)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _AppInjections &&
            (identical(other.appConfig, appConfig) ||
                other.appConfig == appConfig) &&
            (identical(other.details, details) || other.details == details) &&
            (identical(other.dataStore, dataStore) ||
                other.dataStore == dataStore) &&
            (identical(other.sharedPrefs, sharedPrefs) ||
                other.sharedPrefs == sharedPrefs) &&
            (identical(other.dio, dio) || other.dio == dio));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, appConfig, details, dataStore, sharedPrefs, dio);

  @JsonKey(ignore: true)
  @override
  _$AppInjectionsCopyWith<_AppInjections> get copyWith =>
      __$AppInjectionsCopyWithImpl<_AppInjections>(this, _$identity);
}

abstract class _AppInjections extends AppInjections {
  const factory _AppInjections(
      {required AppConfig appConfig,
      required DeviceDetails? details,
      required HiveDataStore dataStore,
      required SharedPreferences sharedPrefs,
      required Dio dio}) = _$_AppInjections;
  const _AppInjections._() : super._();

  @override
  AppConfig get appConfig;
  @override
  DeviceDetails? get details;
  @override
  HiveDataStore get dataStore;
  @override
  SharedPreferences get sharedPrefs;
  @override
  Dio get dio;
  @override
  @JsonKey(ignore: true)
  _$AppInjectionsCopyWith<_AppInjections> get copyWith =>
      throw _privateConstructorUsedError;
}
