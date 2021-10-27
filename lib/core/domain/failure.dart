import 'package:freezed_annotation/freezed_annotation.dart';

part 'failure.freezed.dart';

@freezed
class Failure with _$Failure {
  const factory Failure.server([String? message]) = _Server;
  const factory Failure.noConnection() = _NoConnection;
  const factory Failure.storage() = _Storage;
  const factory Failure.fatalError() = _Fatal;
}
