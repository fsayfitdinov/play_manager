import 'package:dartz/dartz.dart';

import 'package:play_manager/core/domain/failure.dart';
import 'package:play_manager/core/domain/user_model.dart';
import 'package:play_manager/core/infrastructure/network_exceptions.dart';

import 'package:play_manager/auth/infrastructure/auth_local_service.dart';
import 'package:play_manager/auth/infrastructure/auth_remote_service.dart';

class AuthRepository {
  final AuthLocalService _localService;
  final AuthRemoteService _remoteService;

  AuthRepository(this._localService, this._remoteService);

  bool isSignedIn() {
    final user = _localService.setUser();
    return user != null;
  }

  UserModel? get user => _localService.setUser();

  Future<Either<Failure, UserModel>> signIn({
    required String login,
    required String password,
  }) async {
    try {
      final failureOrSuccess = await _remoteService.signIn(login: login, password: password);
      return failureOrSuccess.fold(
        (failure) => left(
          failure.maybeMap(
            orElse: () => const Failure.noConnection(),
          ),
        ),
        (user) async {
          await _localService.addUser(user: user);
          return right(user);
        },
      );
    } on RestApiException catch (e) {
      return left(Failure.server("${e.errorCode}: ${e.message}"));
    }
  }

  Future<void> signOut() async {
    await _localService.removeUser();
  }
}
