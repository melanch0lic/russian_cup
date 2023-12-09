import 'package:flutter_secure_storage/flutter_secure_storage.dart';

const String _tokenKey = 'TOKEN_KEY';
const String _refreshKey = 'REFRESH_KEY';

class SecureStorage {
  final storage = const FlutterSecureStorage();

  Future<String?> get tokenValue async => await storage.read(key: _tokenKey);
  Future<String?> get refreshValue async =>
      await storage.read(key: _refreshKey);

  Future<bool> isUserAuthorized() async {
    final bool isAuth = await storage.containsKey(key: _tokenKey);
    return isAuth;
  }

  Future<void> saveToken(String token, String refresh) async {
    await storage.write(key: _tokenKey, value: token);
    await storage.write(key: _refreshKey, value: refresh);
  }

  Future<void> clearUserData() async {
    await storage.deleteAll();
  }
}
