import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';

part 'branch.freezed.dart';
part 'branch.g.dart';

@freezed
@HiveType(typeId: 1)
class Branch with _$Branch {
  const Branch._();

  const factory Branch({
    @HiveField(0) int? id,
    @HiveField(1) String? name,
    @HiveField(2) String? address,
    @HiveField(3) String? description,
  }) = _Branch;

  factory Branch.fromJson(Map<String, dynamic> json) => _$BranchFromJson(json);
}
