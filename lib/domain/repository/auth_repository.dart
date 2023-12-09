abstract class AuthRepository {
  Future<void> signUp(
      {required String login, required String password, required int age});
  Future<void> logInWithEmailAndPassword(
      {required String login, required String password});
  Future<bool> isAuthenticated();
  Future<void> logOut();
}
