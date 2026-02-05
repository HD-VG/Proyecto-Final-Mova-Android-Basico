import 'package:dio/dio.dart';
import 'package:appmova/core/http_client.dart';
import 'package:appmova/core/constants.dart';
import 'package:appmova/models/producto.dart';
import 'package:appmova/models/descuento.dart';

class ProductoService {
  final Dio _dio = HttpClient.dio;

  // Obtener todos los productos
  Future<List<Producto>> getProductos() async {
    try {
      final response = await _dio.get(AppConstants.productos);
      return (response.data as List).map((json) => Producto.fromJson(json)).toList();
    } on DioException catch (e) {
      throw _handleError(e);
    }
  }

  // Obtener un producto por ID
  Future<Producto> getProductoPorId(int idProducto) async {
    try {
      final response = await _dio.get('${AppConstants.productos}$idProducto');
      return Producto.fromJson(response.data);
    } on DioException catch (e) {
      throw _handleError(e);
    }
  }

  // Obtener descuentos por producto
  Future<List<Descuento>> getDescuentosPorProducto(int idProducto) async {
    try {
      final response = await _dio.get('${AppConstants.descuentosPorProducto}$idProducto');
      return (response.data as List).map((json) => Descuento.fromJson(json)).toList();
    } on DioException catch (e) {
      if (e.response?.statusCode == 404) {
        return []; // Devuelve una lista vacía si no se encuentran descuentos
      }
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