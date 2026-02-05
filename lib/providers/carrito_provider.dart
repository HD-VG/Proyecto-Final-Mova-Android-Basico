import 'package:flutter/foundation.dart';
import 'package:appmova/models/producto.dart';
import 'package:appmova/models/descuento.dart';

class CartItem {
  final Producto producto;
  int cantidad;
  final Descuento? descuento;

  CartItem({
    required this.producto,
    this.cantidad = 1,
    this.descuento,
  });

  double get subtotal {
    final precio = producto.precioUnitario ?? 0.0; // Valor por defecto si es null
    final descuentoPorcentaje = descuento?.porcentaje != null
        ? double.tryParse(descuento!.porcentaje!) ?? 0.0
        : 0.0;
    return precio * cantidad * (1 - descuentoPorcentaje / 100);
  }
}

class CarritoProvider with ChangeNotifier {
  final List<CartItem> _items = [];
  bool _isLoading = false;
  String? _error;

  // Getters
  List<CartItem> get items => _items;
  bool get isLoading => _isLoading;
  String? get error => _error;
  double get total => _items.fold(0.0, (sum, item) => sum + item.subtotal);

  // Añadir producto al carrito
  void addProducto(Producto producto, Descuento? descuento) {
    final index = _items.indexWhere((item) => item.producto.idProducto == producto.idProducto);
    if (index != -1) {
      _items[index].cantidad++;
    } else {
      _items.add(CartItem(producto: producto, descuento: descuento));
    }
    notifyListeners();
  }

  // Actualizar cantidad de un producto
  void updateCantidad(int idProducto, int cantidad) {
    if (cantidad < 1) return;
    final index = _items.indexWhere((item) => item.producto.idProducto == idProducto);
    if (index != -1) {
      _items[index].cantidad = cantidad;
      notifyListeners();
    }
  }

  // Eliminar producto del carrito
  void removeProducto(int idProducto) {
    _items.removeWhere((item) => item.producto.idProducto == idProducto);
    notifyListeners();
  }

  // Limpiar carrito
  void clearCarrito() {
    _items.clear();
    notifyListeners();
  }

  // Manejo de estado de carga
  void _setLoading(bool value) {
    _isLoading = value;
    notifyListeners();
  }

  // Establecer error
  void setError(String? error) {
    _error = error;
    notifyListeners();
  }
}