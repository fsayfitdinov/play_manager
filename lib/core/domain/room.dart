import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';

part 'room.freezed.dart';
part 'room.g.dart';

@freezed
@HiveType(typeId: 2)
class Room with _$Room {
  const Room._();

  const factory Room({
    @HiveField(0) String? id,
    @HiveField(1) String? branchId,
    @HiveField(2) String? name,
    @HiveField(3) String? description,
    @HiveField(4) String? position,
    @HiveField(5) String? author,
  }) = _Room;

  factory Room.fromJson(Map<String, dynamic> json) => _$RoomFromJson(json);
}
