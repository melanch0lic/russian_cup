abstract class AuthRepository {
  Future<void> signUp({required String email, required String password});
  Future<void> logInWithEmailAndPassword(
      {required String email, required String password});
  Future<void> logOut();
}
