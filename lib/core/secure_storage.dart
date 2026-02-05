import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class SecureStorage {
  static const _storage = FlutterSecureStorage();
  static const _tokenKey = 'jwt_token';

  // Guardar token
  static Future<void> writeToken(String token) async {
    await _storage.write(key: _tokenKey, value: token);
  }

  // Leer token
  static Future<String?> readToken() async {
    return await _storage.read(key: _tokenKey);
  }

  // Eliminar token
  static Future<void> deleteToken() async {
    await _storage.delete(key: _tokenKey);
  }
}