import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'package:play_manager/auth/infrastructure/auth_repository.dart';
import 'package:play_manager/core/domain/failure.dart';

part 'auth_notifier.freezed.dart';

@freezed
class AuthState with _$AuthState {
  const AuthState._();

  const factory AuthState.initial() = _Initial;
  const factory AuthState.authenticated() = _Authenticated;
  const factory AuthState.unAuthenticated() = _UnAuthenticated;
  const factory AuthState.failure(Failure failure) = _Failure;
}

class AuthNotifier extends StateNotifier<AuthState> {
  AuthNotifier(this._repository) : super(const AuthState.initial());

  final AuthRepository _repository;

  Future<void> checkAndUpdateStatus() async {
    final signedIn = await _repository.isSignedIn();
    state = signedIn
        ? const AuthState.authenticated()
        : const AuthState.unAuthenticated();
  }

  Future<void> signIn({
    required String login,
    required String password,
  }) async {
    final failureOrSuccess = await _repository.signIn(
      login: login,
      password: password,
    );

    state = failureOrSuccess.fold(
      (l) => AuthState.failure(l),
      (r) {
        return const AuthState.authenticated();
      },
    );
  }

  Future<void> signOut() async {
    await _repository.signOut();
    state = const AuthState.unAuthenticated();
  }
}
