import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'secure_storage.dart';
import 'constants.dart';

class HttpClient {
  static final Dio _dio = Dio(
    BaseOptions(
      baseUrl: AppConstants.apiBaseUrl,
      connectTimeout: const Duration(seconds: 10),
      receiveTimeout: const Duration(seconds: 10),
      headers: {
        'Content-Type': 'application/json',
      },
    ),
  );

  static Dio get dio {
    // Agregar interceptor para incluir el token JWT
    _dio.interceptors.add(
      InterceptorsWrapper(
        onRequest: (options, handler) async {
          final token = await SecureStorage.readToken();
          if (token != null) {
            options.headers['Authorization'] = 'Bearer $token';
          }
          return handler.next(options);
        },
        onError: (DioException e, handler) async {
          // Manejar errores de autenticación (por ejemplo, 401)
          if (e.response?.statusCode == 401) {
            // Opcional: Implementar refresh token o redirigir al login
            debugPrint('Error 401: Token inválido o expirado');
          }
          return handler.next(e);
        },
      ),
    );
    return _dio;
  }
}