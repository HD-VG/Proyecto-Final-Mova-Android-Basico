import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';
import 'package:appmova/core/constants.dart';
import 'package:appmova/models/producto.dart';
import 'package:appmova/models/descuento.dart';
import 'package:appmova/providers/carrito_provider.dart';
import 'package:appmova/services/producto_service.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:fluttertoast/fluttertoast.dart';

class ProductoDetalleScreen extends StatefulWidget {
  final int idProducto;
  const ProductoDetalleScreen({super.key, required this.idProducto});

  @override
  State<ProductoDetalleScreen> createState() => _ProductoDetalleScreenState();
}

class _ProductoDetalleScreenState extends State<ProductoDetalleScreen> {
  final ProductoService _productoService = ProductoService();
  Producto? _producto;
  List<Descuento> _descuentos = [];
  bool _isLoading = true;
  int _cantidad = 1;

  @override
  void initState() {
    super.initState();
    _fetchProducto();
  }

  Future<void> _fetchProducto() async {
    try {
      final productos = await _productoService.getProductos();
      final producto = productos.firstWhere((p) => p.idProducto == widget.idProducto);
      final descuentos = await _productoService.getDescuentosPorProducto(widget.idProducto);
      setState(() {
        _producto = producto;
        _descuentos = descuentos;
        _isLoading = false;
      });
    } catch (e) {
      Fluttertoast.showToast(msg: 'Error al cargar producto: $e');
      setState(() => _isLoading = false);
    }
  }

  @override
  Widget build(BuildContext context) {
    final carritoProvider = Provider.of<CarritoProvider>(context);
    final descuento = _descuentos.isNotEmpty ? _descuentos.first : null;

    // Calcular precio final con descuento
    final double precioBase = _producto?.precioUnitario ?? 0.0;
    final double precioFinal = descuento != null && descuento.porcentaje != null
        ? precioBase * (1 - (double.tryParse(descuento.porcentaje!) ?? 0) / 100)
        : precioBase;

    return Scaffold(
      appBar: AppBar(
        title: Text(_producto?.nombre ?? 'Cargando...'),
        actions: [
          IconButton(
            icon: const Icon(Icons.shopping_cart),
            onPressed: () => context.push('/carrito'),
          ),
        ],
      ),
      body: _isLoading
          ? const Center(child: SpinKitFadingCircle(color: AppConstants.primaryColor))
          : _producto == null
          ? const Center(child: Text('Producto no encontrado'))
          : SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _producto!.url != null
                ? CachedNetworkImage(
              imageUrl: _producto!.url!,
              height: 300,
              width: double.infinity,
              fit: BoxFit.cover,
              placeholder: (context, url) => const SpinKitFadingCircle(
                color: AppConstants.primaryColor,
                size: 50,
              ),
              errorWidget: (context, url, error) => const Icon(Icons.error),
            )
                : const Icon(Icons.image_not_supported, size: 300),
            Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    _producto!.nombre ?? 'Producto sin nombre',
                    style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    _producto!.sabor ?? 'Sin sabor',
                    style: const TextStyle(fontSize: 16, color: Colors.grey),
                  ),
                  const SizedBox(height: 16),
                  Text(
                    '\$${precioBase.toStringAsFixed(2)}',
                    style: TextStyle(
                      fontSize: 20,
                      color: descuento != null ? Colors.grey : AppConstants.textColor,
                      decoration: descuento != null ? TextDecoration.lineThrough : null,
                    ),
                  ),
                  if (descuento != null && descuento.porcentaje != null)
                    Text(
                      '\$${precioFinal.toStringAsFixed(2)}',
                      style: const TextStyle(
                        fontSize: 20,
                        color: Colors.green,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  const SizedBox(height: 16),
                  Text('Stock: ${_producto!.stock ?? 0}'),
                  const SizedBox(height: 16),
                  Row(
                    children: [
                      IconButton(
                        icon: const Icon(Icons.remove),
                        onPressed: (_producto!.stock ?? 0) > 0 && _cantidad > 1
                            ? () => setState(() => _cantidad--)
                            : null,
                      ),
                      Text('$_cantidad', style: const TextStyle(fontSize: 18)),
                      IconButton(
                        icon: const Icon(Icons.add),
                        onPressed: (_producto!.stock ?? 0) > _cantidad
                            ? () => setState(() => _cantidad++)
                            : null,
                      ),
                    ],
                  ),
                  const SizedBox(height: 16),
                  ElevatedButton(
                    onPressed: () {
                      if (_producto != null) {
                        for (int i = 0; i < _cantidad; i++) {
                          carritoProvider.addProducto(_producto!, descuento);
                        }
                        Fluttertoast.showToast(msg: 'Producto añadido al carrito');
                      }
                    },
                    child: const Text('Añadir al Carrito'),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}