import 'package:dio/dio.dart'; // Añadido para reconocer DioException
import 'package:flutter/foundation.dart';
import 'package:appmova/core/secure_storage.dart';
import 'package:appmova/models/usuario.dart';
import 'package:appmova/services/auth_service.dart';
import 'package:appmova/services/usuario_service.dart';
import 'package:jwt_decoder/jwt_decoder.dart';

class AuthProvider with ChangeNotifier {
  Usuario? _usuario;
  String? _token;
  bool _isLoading = false;
  String? _error;

  // Getters
  Usuario? get usuario => _usuario;
  String? get token => _token;
  bool get isLoading => _isLoading;
  String? get error => _error;

  // Servicios
  final AuthService _authService = AuthService();
  final UsuarioService _usuarioService = UsuarioService();

  // Login
  Future<bool> login(String email, String password) async {
    setLoading(true);
    try {
      final response = await _authService.login(email, password);
      print('Login response: $response'); // Add this for debugging
      if (response != null && response is Map<String, dynamic>) {
        final usuarioData = response['usuario'] as Map<String, dynamic>?;
        if (usuarioData != null) {
          _usuario = Usuario.fromJson(usuarioData);
          _token = response['token'] as String?;
          if (_token != null) {
            await SecureStorage.writeToken(_token!);
          }
          _error = null;
        } else {
          _error = 'Respuesta inválida: usuario no encontrado';
          return false;
        }
      } else {
        _error = 'Respuesta inválida del servidor';
        return false;
      }
      notifyListeners();
      return true;
    } catch (e) {
      _error = e is DioException && e.response?.data != null ? e.response!.data['error'] ?? e.toString() : e.toString();
      notifyListeners();
      return false;
    } finally {
      setLoading(false);
    }
  }

  // Registro
  Future<bool> register({
    required String nombre,
    required String apellido,
    required String email,
    required String password,
    required String pregunta,
    required String respuesta,
    String? telefono,
    String? direccion,
    String? imagen,
  }) async {
    setLoading(true);
    try {
      final usuario = await _authService.register(
        nombre: nombre,
        apellido: apellido,
        email: email,
        password: password,
        pregunta: pregunta,
        respuesta: respuesta,
        telefono: telefono,
        direccion: direccion,
        imagen: imagen,
      );
      _usuario = usuario;
      _error = null;
      notifyListeners();
      return true;
    } catch (e) {
      _error = e is DioException && e.response?.data != null ? e.response!.data['error'] ?? e.toString() : e.toString();
      notifyListeners();
      return false;
    } finally {
      setLoading(false);
    }
  }

  // Recuperar contraseña por email
  Future<bool> recoverPasswordByEmail(String email) async {
    setLoading(true);
    try {
      await _authService.recoverPasswordByEmail(email);
      _error = null;
      notifyListeners();
      return true;
    } catch (e) {
      _error = e is DioException && e.response?.data != null ? e.response!.data['error'] ?? e.toString() : e.toString();
      notifyListeners();
      return false;
    } finally {
      setLoading(false);
    }
  }

  // Verificar código de recuperación
  Future<bool> verifyResetCode(String email, String code) async {
    setLoading(true);
    try {
      await _authService.verifyResetCode(email, code);
      _error = null;
      notifyListeners();
      return true;
    } catch (e) {
      _error = e is DioException && e.response?.data != null ? e.response!.data['error'] ?? e.toString() : e.toString();
      notifyListeners();
      return false;
    } finally {
      setLoading(false);
    }
  }

  // Recuperar contraseña por pregunta de seguridad
  Future<bool> recoverPasswordByQuestion(String email, String respuesta) async {
    setLoading(true);
    try {
      await _authService.recoverPasswordByQuestion(email, respuesta);
      _error = null;
      notifyListeners();
      return true;
    } catch (e) {
      _error = e is DioException && e.response?.data != null ? e.response!.data['error'] ?? e.toString() : e.toString();
      notifyListeners();
      return false;
    } finally {
      setLoading(false);
    }
  }

  // Restablecer contraseña
  Future<bool> resetPassword(String email, String newPassword, String repeatNewPassword) async {
    setLoading(true);
    try {
      await _authService.resetPassword(email, newPassword, repeatNewPassword);
      _error = null;
      notifyListeners();
      return true;
    } catch (e) {
      _error = e is DioException && e.response?.data != null ? e.response!.data['error'] ?? e.toString() : e.toString();
      notifyListeners();
      return false;
    } finally {
      setLoading(false);
    }
  }

  // Actualizar datos del usuario
  Future<bool> updateUsuario({
    required String nombre,
    required String apellido,
    required String email,
    String? telefono,
    String? direccion,
    String? imagen,
    String? pregunta,
    String? respuesta,
    String? password, // Nuevo parámetro
  }) async {
    if (_usuario == null) return false;
    setLoading(true);
    try {
      final usuario = await _usuarioService.updateUsuario(
        id: _usuario!.idUsuario,
        nombre: nombre,
        apellido: apellido,
        email: email,
        telefono: telefono,
        direccion: direccion,
        imagen: imagen,
        pregunta: pregunta,
        respuesta: respuesta,
        password: password, // Nuevo campo
      );
      _usuario = usuario;
      _error = null;
      notifyListeners();
      return true;
    } catch (e) {
      _error = e is DioException && e.response?.data != null ? e.response!.data['error'] ?? e.toString() : e.toString();
      notifyListeners();
      return false;
    } finally {
      setLoading(false);
    }
  }

  // Logout
  Future<void> logout() async {
    await SecureStorage.deleteToken();
    _usuario = null;
    _token = null;
    _error = null;
    notifyListeners();
  }

  // Verificar si el usuario está autenticado
  Future<bool> checkAuthStatus() async {
    setLoading(true);
    try {
      final token = await SecureStorage.readToken();
      print('Token from storage: $token'); // Add this
      if (token != null && !JwtDecoder.isExpired(token)) {
        _token = token;
        final decoded = JwtDecoder.decode(token);
        print('Decoded JWT: $decoded'); // Add this
        final usuario = await _usuarioService.getUsuario(int.parse(decoded['id']));
        _usuario = usuario;
        _error = null;
        notifyListeners();
        return true;
      }
      return false;
    } catch (e) {
      _error = e is DioException && e.response?.data != null ? e.response!.data['error'] ?? e.toString() : e.toString();
      notifyListeners();
      return false;
    } finally {
      setLoading(false);
    }
  }

  // Manejo de estado de carga (ahora público)
  void setLoading(bool value) {
    _isLoading = value;
    notifyListeners();
  }
}