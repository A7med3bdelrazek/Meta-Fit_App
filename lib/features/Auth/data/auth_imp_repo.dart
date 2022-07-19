import 'package:meta_fit_app/features/Auth/domain/auth_repo.dart';

class AuthRepoImp extends AuthRepo {
  @override
  Future completeInformation({
    required String name,
    required String phoneNumber,
    required String email,
  }) {
    throw UnimplementedError();
  }

  @override
  Future loginWithFacebook() {
    throw UnimplementedError();
  }

  @override
  Future loginWithGoogle() {
    throw UnimplementedError();
  }
}
