import 'package:dartz/dartz.dart';

import '../../core/domain/failure.dart';
import '../../core/domain/user_model.dart';
import '../../core/infrastructure/network_exceptions.dart';

import 'auth_local_service.dart';
import 'auth_remote_service.dart';

class AuthRepository {
  final AuthLocalService _localService;
  final AuthRemoteService _remoteService;

  AuthRepository(this._localService, this._remoteService);

  Future<bool> isSignedIn() async {
    final user = _localService.setUser();
    return user != null;
  }

  Future<Either<Failure, UserModel>> signIn({
    required String login,
    required String password,
  }) async {
    try {
      final failureOrSuccess =
          await _remoteService.signIn(login: login, password: password);

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
