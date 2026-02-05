import 'package:dio/dio.dart';
import 'package:appmova/core/http_client.dart';
import 'package:appmova/core/constants.dart';
import 'package:appmova/models/transaccion.dart';
import 'package:appmova/models/detalle_transaccion.dart';

class TransaccionService {
final Dio _dio = HttpClient.dio;

// Crear transacción
Future<Transaccion> crearTransaccion({
required int fkIdUsuario,
required int fkIdVendedor,
required double total,
required String tipo,
}) async {
try {
final response = await _dio.post(
AppConstants.transacciones,
data: {
'fk_id_usuario': fkIdUsuario,
'fk_id_vendedor': fkIdVendedor,
'fk_id_tienda': null,
'total': total,
'tipo': tipo,
},
);
return Transaccion.fromJson(response.data);
} on DioException catch (e) {
throw _handleError(e);
}
}

// Actualizar total de transacción
Future<Transaccion> actualizarTotalTransaccion({
required int idTransaccion,
required double total,
}) async {
try {
final response = await _dio.put(
'${AppConstants.transacciones}$idTransaccion',
data: {'total': total},
);
return Transaccion.fromJson(response.data);
} on DioException catch (e) {
throw _handleError(e);
}
}

// Eliminar detalle de transacción
Future<void> eliminarDetalleTransaccion({
required int idDetalleTransaccion,
}) async {
try {
await _dio.delete('${AppConstants.detalles}/$idDetalleTransaccion');
} on DioException catch (e) {
throw _handleError(e);
}
}

// Crear detalle de transacción
Future<DetalleTransaccion> crearDetalleTransaccion({
required int fkIdTransaccion,
required int fkIdProducto,
required int cantidad,
required double subtotal,
}) async {
try {
final response = await _dio.post(
AppConstants.detalles,
data: {
'fk_id_transaccion': fkIdTransaccion,
'fk_id_producto': fkIdProducto,
'cantidad': cantidad,
'subtotal': subtotal,
},
);
print('Respuesta del backend para detalle: ${response.data}'); // Depuración
return DetalleTransaccion.fromJson(response.data);
} on DioException catch (e) {
throw _handleError(e);
}
}

// Obtener transacciones por usuario
Future<List<Transaccion>> getTransaccionesPorUsuario(int idUsuario) async {
try {
final response = await _dio.get('${AppConstants.transaccionesPorUsuario}$idUsuario');
return (response.data as List).map((json) => Transaccion.fromJson(json)).toList();
} on DioException catch (e) {
throw _handleError(e);
}
}

// Obtener detalles por transacción
Future<List<DetalleTransaccion>> getDetallesPorTransaccion(int idTransaccion) async {
try {
final response = await _dio.get(
'${AppConstants.detallesPorTransaccion}$idTransaccion'
);
return (response.data as List).map((json) => DetalleTransaccion.fromJson(json)).toList();
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