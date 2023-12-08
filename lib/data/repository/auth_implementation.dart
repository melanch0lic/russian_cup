import '../../domain/repository/auth_repository.dart';

class AuthRepositoryImplementation implements AuthRepository {
  AuthRepositoryImplementation();

  @override
  Future<void> logInWithEmailAndPassword(
      {required String email, required String password}) async {
    Future.delayed(const Duration(milliseconds: 300))
        .whenComplete(() => print('user logged in'));
  }

  @override
  Future<void> logOut() async {
    print('user logged out');
  }

  @override
  Future<void> signUp({required String email, required String password}) async {
    Future.delayed(const Duration(milliseconds: 300))
        .whenComplete(() => print('user signed up'));
  }
}
