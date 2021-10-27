// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'room.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Room _$RoomFromJson(Map<String, dynamic> json) {
  return _Room.fromJson(json);
}

/// @nodoc
class _$RoomTearOff {
  const _$RoomTearOff();

  _Room call(
      {@HiveField(0) String? id,
      @HiveField(1) String? branchId,
      @HiveField(2) String? name,
      @HiveField(3) String? description,
      @HiveField(4) String? position,
      @HiveField(5) String? author}) {
    return _Room(
      id: id,
      branchId: branchId,
      name: name,
      description: description,
      position: position,
      author: author,
    );
  }

  Room fromJson(Map<String, Object?> json) {
    return Room.fromJson(json);
  }
}

/// @nodoc
const $Room = _$RoomTearOff();

/// @nodoc
mixin _$Room {
  @HiveField(0)
  String? get id => throw _privateConstructorUsedError;
  @HiveField(1)
  String? get branchId => throw _privateConstructorUsedError;
  @HiveField(2)
  String? get name => throw _privateConstructorUsedError;
  @HiveField(3)
  String? get description => throw _privateConstructorUsedError;
  @HiveField(4)
  String? get position => throw _privateConstructorUsedError;
  @HiveField(5)
  String? get author => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RoomCopyWith<Room> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RoomCopyWith<$Res> {
  factory $RoomCopyWith(Room value, $Res Function(Room) then) =
      _$RoomCopyWithImpl<$Res>;
  $Res call(
      {@HiveField(0) String? id,
      @HiveField(1) String? branchId,
      @HiveField(2) String? name,
      @HiveField(3) String? description,
      @HiveField(4) String? position,
      @HiveField(5) String? author});
}

/// @nodoc
class _$RoomCopyWithImpl<$Res> implements $RoomCopyWith<$Res> {
  _$RoomCopyWithImpl(this._value, this._then);

  final Room _value;
  // ignore: unused_field
  final $Res Function(Room) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? branchId = freezed,
    Object? name = freezed,
    Object? description = freezed,
    Object? position = freezed,
    Object? author = freezed,
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
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      position: position == freezed
          ? _value.position
          : position // ignore: cast_nullable_to_non_nullable
              as String?,
      author: author == freezed
          ? _value.author
          : author // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$RoomCopyWith<$Res> implements $RoomCopyWith<$Res> {
  factory _$RoomCopyWith(_Room value, $Res Function(_Room) then) =
      __$RoomCopyWithImpl<$Res>;
  @override
  $Res call(
      {@HiveField(0) String? id,
      @HiveField(1) String? branchId,
      @HiveField(2) String? name,
      @HiveField(3) String? description,
      @HiveField(4) String? position,
      @HiveField(5) String? author});
}

/// @nodoc
class __$RoomCopyWithImpl<$Res> extends _$RoomCopyWithImpl<$Res>
    implements _$RoomCopyWith<$Res> {
  __$RoomCopyWithImpl(_Room _value, $Res Function(_Room) _then)
      : super(_value, (v) => _then(v as _Room));

  @override
  _Room get _value => super._value as _Room;

  @override
  $Res call({
    Object? id = freezed,
    Object? branchId = freezed,
    Object? name = freezed,
    Object? description = freezed,
    Object? position = freezed,
    Object? author = freezed,
  }) {
    return _then(_Room(
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
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      position: position == freezed
          ? _value.position
          : position // ignore: cast_nullable_to_non_nullable
              as String?,
      author: author == freezed
          ? _value.author
          : author // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Room extends _Room {
  const _$_Room(
      {@HiveField(0) this.id,
      @HiveField(1) this.branchId,
      @HiveField(2) this.name,
      @HiveField(3) this.description,
      @HiveField(4) this.position,
      @HiveField(5) this.author})
      : super._();

  factory _$_Room.fromJson(Map<String, dynamic> json) => _$$_RoomFromJson(json);

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
  final String? description;
  @override
  @HiveField(4)
  final String? position;
  @override
  @HiveField(5)
  final String? author;

  @override
  String toString() {
    return 'Room(id: $id, branchId: $branchId, name: $name, description: $description, position: $position, author: $author)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Room &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.branchId, branchId) ||
                other.branchId == branchId) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.position, position) ||
                other.position == position) &&
            (identical(other.author, author) || other.author == author));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, id, branchId, name, description, position, author);

  @JsonKey(ignore: true)
  @override
  _$RoomCopyWith<_Room> get copyWith =>
      __$RoomCopyWithImpl<_Room>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_RoomToJson(this);
  }
}

abstract class _Room extends Room {
  const factory _Room(
      {@HiveField(0) String? id,
      @HiveField(1) String? branchId,
      @HiveField(2) String? name,
      @HiveField(3) String? description,
      @HiveField(4) String? position,
      @HiveField(5) String? author}) = _$_Room;
  const _Room._() : super._();

  factory _Room.fromJson(Map<String, dynamic> json) = _$_Room.fromJson;

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
  String? get description;
  @override
  @HiveField(4)
  String? get position;
  @override
  @HiveField(5)
  String? get author;
  @override
  @JsonKey(ignore: true)
  _$RoomCopyWith<_Room> get copyWith => throw _privateConstructorUsedError;
}
