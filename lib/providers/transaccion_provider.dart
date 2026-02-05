import 'package:flutter/foundation.dart';
import 'package:appmova/models/transaccion.dart';
import 'package:appmova/models/detalle_transaccion.dart';
import 'package:appmova/models/producto.dart';
import 'package:appmova/services/transaccion_service.dart';
import 'package:appmova/services/producto_service.dart';
import 'package:appmova/providers/carrito_provider.dart';

class TransaccionProvider with ChangeNotifier {
  final List<Transaccion> _transacciones = [];
  List<DetalleTransaccion> _detalles = [];
  bool _isLoading = false;
  String? _error;

  // Getters
  List<Transaccion> get transacciones => _transacciones;
  List<DetalleTransaccion> get detalles => _detalles;
  bool get isLoading => _isLoading;
  String? get error => _error;

  // Servicios
  final TransaccionService _transaccionService = TransaccionService();
  final ProductoService _productoService = ProductoService();

  // Obtener transacciones por usuario
  Future<void> fetchTransacciones(int idUsuario) async {
    _setLoading(true);
    try {
      final transacciones = await _transaccionService.getTransaccionesPorUsuario(idUsuario);
      _transacciones.clear();
      _transacciones.addAll(transacciones);
      _error = null;
      notifyListeners();
    } catch (e) {
      _error = e.toString();
      notifyListeners();
    } finally {
      _setLoading(false);
    }
  }

  // Obtener detalles de una transacción
  Future<void> fetchDetalles(int idTransaccion) async {
    _setLoading(true);
    try {
      final detalles = await _transaccionService.getDetallesPorTransaccion(idTransaccion);
      final detallesConProductos = <DetalleTransaccion>[];
      for (var detalle in detalles) {
        final producto = detalle.fkIdProducto != null
            ? await _productoService.getProductoPorId(detalle.fkIdProducto!)
            : null;
        detallesConProductos.add(DetalleTransaccion(
          idDetalle: detalle.idDetalle,
          fkIdTransaccion: detalle.fkIdTransaccion,
          fkIdProducto: detalle.fkIdProducto,
          cantidad: detalle.cantidad,
          precioUnitario: detalle.precioUnitario,
          precioUnitarioDescuento: detalle.precioUnitarioDescuento,
          subtotal: detalle.subtotal,
          estadoAI: detalle.estadoAI,
          producto: producto,
        ));
      }
      _detalles = detallesConProductos;
      _error = null;
      notifyListeners();
    } catch (e) {
      _error = e.toString();
      notifyListeners();
    } finally {
      _setLoading(false);
    }
  }

  // Crear transacción y detalles
  Future<bool> crearTransaccion({
    required int fkIdUsuario,
    required CarritoProvider carritoProvider,
  }) async {
    _setLoading(true);
    try {
      // Crear transacción inicial con total 0.0
      final transaccion = await _transaccionService.crearTransaccion(
        fkIdUsuario: fkIdUsuario,
        fkIdVendedor: fkIdUsuario,
        total: 0.0,
        tipo: 'pedido',
      );

      // Crear detalles basados en el carrito
      final detalles = carritoProvider.items.map((item) {
        return {
          'fk_id_transaccion': transaccion.idTransaccion,
          'fk_id_producto': item.producto.idProducto,
          'cantidad': item.cantidad,
          'subtotal': item.subtotal,
        };
      }).toList();

      for (var detalle in detalles) {
        print('Enviando detalle: fk_id_transaccion: ${transaccion.idTransaccion}, fk_id_producto: ${detalle['fk_id_producto']}, cantidad: ${detalle['cantidad']}, subtotal: ${detalle['subtotal']}');
        await _transaccionService.crearDetalleTransaccion(
          fkIdTransaccion: transaccion.idTransaccion,
          fkIdProducto: int.tryParse(detalle['fk_id_producto'].toString()) ?? 0,
          cantidad: int.tryParse(detalle['cantidad'].toString()) ?? 0,
          subtotal: double.tryParse(detalle['subtotal'].toString()) ?? 0.0,
        );
      }

      // Actualizar total basado en el carrito
      await _transaccionService.actualizarTotalTransaccion(
        idTransaccion: transaccion.idTransaccion,
        total: carritoProvider.total,
      );

      _transacciones.add(transaccion);
      _error = null;
      notifyListeners();
      return true;
    } catch (e) {
      _error = e.toString();
      notifyListeners();
      return false;
    } finally {
      _setLoading(false);
    }
  }

  // Manejo de estado de carga
  void _setLoading(bool value) {
    _isLoading = value;
    notifyListeners();
  }
}