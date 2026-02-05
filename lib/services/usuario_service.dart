import 'package:dio/dio.dart';
import 'package:appmova/core/http_client.dart';
import 'package:appmova/core/constants.dart';
import 'package:appmova/models/usuario.dart';

class UsuarioService {
  final Dio _dio = HttpClient.dio;

  // Obtener datos del usuario por ID
  Future<Usuario> getUsuario(int id) async {
    try {
      final response = await _dio.get('${AppConstants.usuarios}$id');
      return Usuario.fromJson(response.data);
    } on DioException catch (e) {
      throw _handleError(e);
    }
  }

  // Actualizar datos del usuario
  Future<Usuario> updateUsuario({
    required int id,
    required String nombre,
    required String apellido,
    required String email,
    String? telefono,
    String? direccion,
    String? imagen,
    String? pregunta,
    String? respuesta,
    String? password,
  }) async {
    try {
      final response = await _dio.put(
        '${AppConstants.usuarios}$id',
        data: {
          'nombre': nombre,
          'apellido': apellido,
          'email': email,
          'telefono': telefono,
          'direccion': direccion,
          'imagen': imagen,
          'pregunta': pregunta,
          'respuesta': respuesta,
          'password': password,
        },
      );
      return Usuario.fromJson(response.data);
    } on DioException catch (e) {
      throw _handleError(e);
    }
  }

  // Manejo de errores
  String _handleError(DioException e) {
    if (e.response != null) {
      return e.response!.data['message'] ?? 'Error desconocido';
    }
    return 'Error de red: ${e.message}';
  }
}