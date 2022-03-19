// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'user_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

UserModel _$UserModelFromJson(Map<String, dynamic> json) {
  return _UserModel.fromJson(json);
}

/// @nodoc
class _$UserModelTearOff {
  const _$UserModelTearOff();

  _UserModel call(
      {@HiveField(0) required int id,
      @HiveField(1) required int branchId,
      @JsonKey(defaultValue: 0) @HiveField(2) required int roomId,
      @JsonKey(defaultValue: '') @HiveField(3) required String name,
      @JsonKey(defaultValue: '') @HiveField(4) required String phone}) {
    return _UserModel(
      id: id,
      branchId: branchId,
      roomId: roomId,
      name: name,
      phone: phone,
    );
  }

  UserModel fromJson(Map<String, Object?> json) {
    return UserModel.fromJson(json);
  }
}

/// @nodoc
const $UserModel = _$UserModelTearOff();

/// @nodoc
mixin _$UserModel {
  @HiveField(0)
  int get id => throw _privateConstructorUsedError;
  @HiveField(1)
  int get branchId => throw _privateConstructorUsedError;
  @JsonKey(defaultValue: 0)
  @HiveField(2)
  int get roomId => throw _privateConstructorUsedError;
  @JsonKey(defaultValue: '')
  @HiveField(3)
  String get name => throw _privateConstructorUsedError;
  @JsonKey(defaultValue: '')
  @HiveField(4)
  String get phone => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserModelCopyWith<UserModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserModelCopyWith<$Res> {
  factory $UserModelCopyWith(UserModel value, $Res Function(UserModel) then) =
      _$UserModelCopyWithImpl<$Res>;
  $Res call(
      {@HiveField(0) int id,
      @HiveField(1) int branchId,
      @JsonKey(defaultValue: 0) @HiveField(2) int roomId,
      @JsonKey(defaultValue: '') @HiveField(3) String name,
      @JsonKey(defaultValue: '') @HiveField(4) String phone});
}

/// @nodoc
class _$UserModelCopyWithImpl<$Res> implements $UserModelCopyWith<$Res> {
  _$UserModelCopyWithImpl(this._value, this._then);

  final UserModel _value;
  // ignore: unused_field
  final $Res Function(UserModel) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? branchId = freezed,
    Object? roomId = freezed,
    Object? name = freezed,
    Object? phone = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      branchId: branchId == freezed
          ? _value.branchId
          : branchId // ignore: cast_nullable_to_non_nullable
              as int,
      roomId: roomId == freezed
          ? _value.roomId
          : roomId // ignore: cast_nullable_to_non_nullable
              as int,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      phone: phone == freezed
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$UserModelCopyWith<$Res> implements $UserModelCopyWith<$Res> {
  factory _$UserModelCopyWith(
          _UserModel value, $Res Function(_UserModel) then) =
      __$UserModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {@HiveField(0) int id,
      @HiveField(1) int branchId,
      @JsonKey(defaultValue: 0) @HiveField(2) int roomId,
      @JsonKey(defaultValue: '') @HiveField(3) String name,
      @JsonKey(defaultValue: '') @HiveField(4) String phone});
}

/// @nodoc
class __$UserModelCopyWithImpl<$Res> extends _$UserModelCopyWithImpl<$Res>
    implements _$UserModelCopyWith<$Res> {
  __$UserModelCopyWithImpl(_UserModel _value, $Res Function(_UserModel) _then)
      : super(_value, (v) => _then(v as _UserModel));

  @override
  _UserModel get _value => super._value as _UserModel;

  @override
  $Res call({
    Object? id = freezed,
    Object? branchId = freezed,
    Object? roomId = freezed,
    Object? name = freezed,
    Object? phone = freezed,
  }) {
    return _then(_UserModel(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      branchId: branchId == freezed
          ? _value.branchId
          : branchId // ignore: cast_nullable_to_non_nullable
              as int,
      roomId: roomId == freezed
          ? _value.roomId
          : roomId // ignore: cast_nullable_to_non_nullable
              as int,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      phone: phone == freezed
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_UserModel implements _UserModel {
  const _$_UserModel(
      {@HiveField(0) required this.id,
      @HiveField(1) required this.branchId,
      @JsonKey(defaultValue: 0) @HiveField(2) required this.roomId,
      @JsonKey(defaultValue: '') @HiveField(3) required this.name,
      @JsonKey(defaultValue: '') @HiveField(4) required this.phone});

  factory _$_UserModel.fromJson(Map<String, dynamic> json) =>
      _$$_UserModelFromJson(json);

  @override
  @HiveField(0)
  final int id;
  @override
  @HiveField(1)
  final int branchId;
  @override
  @JsonKey(defaultValue: 0)
  @HiveField(2)
  final int roomId;
  @override
  @JsonKey(defaultValue: '')
  @HiveField(3)
  final String name;
  @override
  @JsonKey(defaultValue: '')
  @HiveField(4)
  final String phone;

  @override
  String toString() {
    return 'UserModel(id: $id, branchId: $branchId, roomId: $roomId, name: $name, phone: $phone)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _UserModel &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.branchId, branchId) &&
            const DeepCollectionEquality().equals(other.roomId, roomId) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.phone, phone));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(branchId),
      const DeepCollectionEquality().hash(roomId),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(phone));

  @JsonKey(ignore: true)
  @override
  _$UserModelCopyWith<_UserModel> get copyWith =>
      __$UserModelCopyWithImpl<_UserModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UserModelToJson(this);
  }
}

abstract class _UserModel implements UserModel {
  const factory _UserModel(
          {@HiveField(0) required int id,
          @HiveField(1) required int branchId,
          @JsonKey(defaultValue: 0) @HiveField(2) required int roomId,
          @JsonKey(defaultValue: '') @HiveField(3) required String name,
          @JsonKey(defaultValue: '') @HiveField(4) required String phone}) =
      _$_UserModel;

  factory _UserModel.fromJson(Map<String, dynamic> json) =
      _$_UserModel.fromJson;

  @override
  @HiveField(0)
  int get id;
  @override
  @HiveField(1)
  int get branchId;
  @override
  @JsonKey(defaultValue: 0)
  @HiveField(2)
  int get roomId;
  @override
  @JsonKey(defaultValue: '')
  @HiveField(3)
  String get name;
  @override
  @JsonKey(defaultValue: '')
  @HiveField(4)
  String get phone;
  @override
  @JsonKey(ignore: true)
  _$UserModelCopyWith<_UserModel> get copyWith =>
      throw _privateConstructorUsedError;
}
