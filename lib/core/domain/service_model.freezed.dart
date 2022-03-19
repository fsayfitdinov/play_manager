// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'service_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ServiceModel _$ServiceModelFromJson(Map<String, dynamic> json) {
  return _ServiceModel.fromJson(json);
}

/// @nodoc
class _$ServiceModelTearOff {
  const _$ServiceModelTearOff();

  _ServiceModel call(
      {@HiveField(0) String? id,
      @HiveField(1) String? branchId,
      @HiveField(2) String? name,
      @HiveField(3) String? price,
      @HiveField(4) String? delta,
      @HiveField(5) String? position,
      @HiveField(6) String? description,
      @HiveField(7) String? author,
      @HiveField(8) String? date,
      @HiveField(9) String? isActive}) {
    return _ServiceModel(
      id: id,
      branchId: branchId,
      name: name,
      price: price,
      delta: delta,
      position: position,
      description: description,
      author: author,
      date: date,
      isActive: isActive,
    );
  }

  ServiceModel fromJson(Map<String, Object?> json) {
    return ServiceModel.fromJson(json);
  }
}

/// @nodoc
const $ServiceModel = _$ServiceModelTearOff();

/// @nodoc
mixin _$ServiceModel {
  @HiveField(0)
  String? get id => throw _privateConstructorUsedError;
  @HiveField(1)
  String? get branchId => throw _privateConstructorUsedError;
  @HiveField(2)
  String? get name => throw _privateConstructorUsedError;
  @HiveField(3)
  String? get price => throw _privateConstructorUsedError;
  @HiveField(4)
  String? get delta => throw _privateConstructorUsedError;
  @HiveField(5)
  String? get position => throw _privateConstructorUsedError;
  @HiveField(6)
  String? get description => throw _privateConstructorUsedError;
  @HiveField(7)
  String? get author => throw _privateConstructorUsedError;
  @HiveField(8)
  String? get date => throw _privateConstructorUsedError;
  @HiveField(9)
  String? get isActive => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ServiceModelCopyWith<ServiceModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ServiceModelCopyWith<$Res> {
  factory $ServiceModelCopyWith(
          ServiceModel value, $Res Function(ServiceModel) then) =
      _$ServiceModelCopyWithImpl<$Res>;
  $Res call(
      {@HiveField(0) String? id,
      @HiveField(1) String? branchId,
      @HiveField(2) String? name,
      @HiveField(3) String? price,
      @HiveField(4) String? delta,
      @HiveField(5) String? position,
      @HiveField(6) String? description,
      @HiveField(7) String? author,
      @HiveField(8) String? date,
      @HiveField(9) String? isActive});
}

/// @nodoc
class _$ServiceModelCopyWithImpl<$Res> implements $ServiceModelCopyWith<$Res> {
  _$ServiceModelCopyWithImpl(this._value, this._then);

  final ServiceModel _value;
  // ignore: unused_field
  final $Res Function(ServiceModel) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? branchId = freezed,
    Object? name = freezed,
    Object? price = freezed,
    Object? delta = freezed,
    Object? position = freezed,
    Object? description = freezed,
    Object? author = freezed,
    Object? date = freezed,
    Object? isActive = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      branchId: branchId == freezed
          ? _value.branchId
          : branchId // ignore: cast_nullable_to_non_nullable
              as String?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      price: price == freezed
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as String?,
      delta: delta == freezed
          ? _value.delta
          : delta // ignore: cast_nullable_to_non_nullable
              as String?,
      position: position == freezed
          ? _value.position
          : position // ignore: cast_nullable_to_non_nullable
              as String?,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      author: author == freezed
          ? _value.author
          : author // ignore: cast_nullable_to_non_nullable
              as String?,
      date: date == freezed
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String?,
      isActive: isActive == freezed
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$ServiceModelCopyWith<$Res>
    implements $ServiceModelCopyWith<$Res> {
  factory _$ServiceModelCopyWith(
          _ServiceModel value, $Res Function(_ServiceModel) then) =
      __$ServiceModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {@HiveField(0) String? id,
      @HiveField(1) String? branchId,
      @HiveField(2) String? name,
      @HiveField(3) String? price,
      @HiveField(4) String? delta,
      @HiveField(5) String? position,
      @HiveField(6) String? description,
      @HiveField(7) String? author,
      @HiveField(8) String? date,
      @HiveField(9) String? isActive});
}

/// @nodoc
class __$ServiceModelCopyWithImpl<$Res> extends _$ServiceModelCopyWithImpl<$Res>
    implements _$ServiceModelCopyWith<$Res> {
  __$ServiceModelCopyWithImpl(
      _ServiceModel _value, $Res Function(_ServiceModel) _then)
      : super(_value, (v) => _then(v as _ServiceModel));

  @override
  _ServiceModel get _value => super._value as _ServiceModel;

  @override
  $Res call({
    Object? id = freezed,
    Object? branchId = freezed,
    Object? name = freezed,
    Object? price = freezed,
    Object? delta = freezed,
    Object? position = freezed,
    Object? description = freezed,
    Object? author = freezed,
    Object? date = freezed,
    Object? isActive = freezed,
  }) {
    return _then(_ServiceModel(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      branchId: branchId == freezed
          ? _value.branchId
          : branchId // ignore: cast_nullable_to_non_nullable
              as String?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      price: price == freezed
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as String?,
      delta: delta == freezed
          ? _value.delta
          : delta // ignore: cast_nullable_to_non_nullable
              as String?,
      position: position == freezed
          ? _value.position
          : position // ignore: cast_nullable_to_non_nullable
              as String?,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      author: author == freezed
          ? _value.author
          : author // ignore: cast_nullable_to_non_nullable
              as String?,
      date: date == freezed
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String?,
      isActive: isActive == freezed
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ServiceModel extends _ServiceModel {
  const _$_ServiceModel(
      {@HiveField(0) this.id,
      @HiveField(1) this.branchId,
      @HiveField(2) this.name,
      @HiveField(3) this.price,
      @HiveField(4) this.delta,
      @HiveField(5) this.position,
      @HiveField(6) this.description,
      @HiveField(7) this.author,
      @HiveField(8) this.date,
      @HiveField(9) this.isActive})
      : super._();

  factory _$_ServiceModel.fromJson(Map<String, dynamic> json) =>
      _$$_ServiceModelFromJson(json);

  @override
  @HiveField(0)
  final String? id;
  @override
  @HiveField(1)
  final String? branchId;
  @override
  @HiveField(2)
  final String? name;
  @override
  @HiveField(3)
  final String? price;
  @override
  @HiveField(4)
  final String? delta;
  @override
  @HiveField(5)
  final String? position;
  @override
  @HiveField(6)
  final String? description;
  @override
  @HiveField(7)
  final String? author;
  @override
  @HiveField(8)
  final String? date;
  @override
  @HiveField(9)
  final String? isActive;

  @override
  String toString() {
    return 'ServiceModel(id: $id, branchId: $branchId, name: $name, price: $price, delta: $delta, position: $position, description: $description, author: $author, date: $date, isActive: $isActive)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ServiceModel &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.branchId, branchId) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.price, price) &&
            const DeepCollectionEquality().equals(other.delta, delta) &&
            const DeepCollectionEquality().equals(other.position, position) &&
            const DeepCollectionEquality()
                .equals(other.description, description) &&
            const DeepCollectionEquality().equals(other.author, author) &&
            const DeepCollectionEquality().equals(other.date, date) &&
            const DeepCollectionEquality().equals(other.isActive, isActive));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(branchId),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(price),
      const DeepCollectionEquality().hash(delta),
      const DeepCollectionEquality().hash(position),
      const DeepCollectionEquality().hash(description),
      const DeepCollectionEquality().hash(author),
      const DeepCollectionEquality().hash(date),
      const DeepCollectionEquality().hash(isActive));

  @JsonKey(ignore: true)
  @override
  _$ServiceModelCopyWith<_ServiceModel> get copyWith =>
      __$ServiceModelCopyWithImpl<_ServiceModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ServiceModelToJson(this);
  }
}

abstract class _ServiceModel extends ServiceModel {
  const factory _ServiceModel(
      {@HiveField(0) String? id,
      @HiveField(1) String? branchId,
      @HiveField(2) String? name,
      @HiveField(3) String? price,
      @HiveField(4) String? delta,
      @HiveField(5) String? position,
      @HiveField(6) String? description,
      @HiveField(7) String? author,
      @HiveField(8) String? date,
      @HiveField(9) String? isActive}) = _$_ServiceModel;
  const _ServiceModel._() : super._();

  factory _ServiceModel.fromJson(Map<String, dynamic> json) =
      _$_ServiceModel.fromJson;

  @override
  @HiveField(0)
  String? get id;
  @override
  @HiveField(1)
  String? get branchId;
  @override
  @HiveField(2)
  String? get name;
  @override
  @HiveField(3)
  String? get price;
  @override
  @HiveField(4)
  String? get delta;
  @override
  @HiveField(5)
  String? get position;
  @override
  @HiveField(6)
  String? get description;
  @override
  @HiveField(7)
  String? get author;
  @override
  @HiveField(8)
  String? get date;
  @override
  @HiveField(9)
  String? get isActive;
  @override
  @JsonKey(ignore: true)
  _$ServiceModelCopyWith<_ServiceModel> get copyWith =>
      throw _privateConstructorUsedError;
}
