import 'package:dio/dio.dart';
import 'package:appmova/core/http_client.dart';
import 'package:appmova/core/secure_storage.dart';
import 'package:appmova/core/constants.dart';
import 'package:appmova/models/usuario.dart';

class AuthService {
  final Dio _dio = HttpClient.dio;

  // Login
  Future<Map<String, dynamic>> login(String email, String password) async {
    final response = await HttpClient.dio.post(
      '/auth/login',
      data: {'email': email, 'password': password},
    );
    if (response.statusCode == 200) {
      return response.data as Map<String, dynamic>;
    }
    throw Exception('Credenciales incorrectas');
  }

  // Registro (rol "cliente" por defecto)
  Future<Usuario> register({
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
    try {
      final response = await _dio.post(
        AppConstants.authRegister,
        data: {
          'nombre': nombre,
          'apellido': apellido,
          'email': email,
          'password': password,
          'pregunta': pregunta,
          'respuesta': respuesta,
          'telefono': telefono,
          'direccion': direccion,
          'imagen': imagen,
          'rol': 'cliente',
          'nuevo': 'true',
          'estadoAI': 'activo'
        },
      );
      return Usuario.fromJson(response.data);
    } on DioException catch (e) {
      throw _handleError(e);
    }
  }

  // Recuperar contraseña por email
  Future<void> recoverPasswordByEmail(String email) async {
    try {
      await _dio.post(
        AppConstants.authRecoverEmail,
        data: {'email': email},
      );
    } on DioException catch (e) {
      throw _handleError(e);
    }
  }

  // Verificar código de recuperación
  Future<void> verifyResetCode(String email, String code) async {
    try {
      await _dio.post(
        AppConstants.authVerifyCode,
        data: {'email': email, 'code': code},
      );
    } on DioException catch (e) {
      throw _handleError(e);
    }
  }

  // Recuperar contraseña por pregunta de seguridad
  Future<void> recoverPasswordByQuestion(String email, String respuesta) async {
    try {
      await _dio.post(
        AppConstants.authRecoverQuestion,
        data: {'email': email, 'respuesta': respuesta},
      );
    } on DioException catch (e) {
      throw _handleError(e);
    }
  }

  // Restablecer contraseña
  Future<void> resetPassword(String email, String newPassword, String repeatNewPassword) async {
    try {
      await _dio.post(
        AppConstants.authResetPassword,
        data: {'email': email, 'newPassword': newPassword, 'repeatNewPassword': repeatNewPassword},
      );
    } on DioException catch (e) {
      throw _handleError(e);
    }
  }

  // Manejo de errores
  String _handleError(DioException e) {
    if (e.response != null) {
      return e.response!.data['error'] ?? 'Error desconocido';
    }
    return 'Error de red: ${e.message}';
  }
}