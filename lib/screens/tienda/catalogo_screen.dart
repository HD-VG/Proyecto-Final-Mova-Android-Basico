import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';
import 'package:appmova/core/constants.dart';
import 'package:appmova/models/producto.dart';
import 'package:appmova/models/descuento.dart';
import 'package:appmova/services/producto_service.dart';
import 'package:appmova/widgets/producto_card.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:fluttertoast/fluttertoast.dart';

class CatalogoScreen extends StatefulWidget {
  const CatalogoScreen({super.key});

  @override
  State<CatalogoScreen> createState() => _CatalogoScreenState();
}

class _CatalogoScreenState extends State<CatalogoScreen> {
  final ProductoService _productoService = ProductoService();
  List<Producto> _productos = [];
  Map<int, List<Descuento>> _descuentos = {};
  bool _isLoading = true;

  @override
  void initState() {
    super.initState();
    _fetchProductos();
  }

  Future<void> _fetchProductos() async {
    try {
      final productos = await _productoService.getProductos();
      final descuentos = <int, List<Descuento>>{};
      for (var producto in productos) {
        final desc = await _productoService.getDescuentosPorProducto(producto.idProducto);
        descuentos[producto.idProducto] = desc;
      }
      setState(() {
        // Filtrar solo productos con estadoAI = "activo", manejando null como no activo
        _productos = productos.where((p) => (p.estadoAI?.toLowerCase() ?? '') == 'activo').toList();
        _descuentos = descuentos;
        _isLoading = false;
      });
    } catch (e) {
      Fluttertoast.showToast(msg: 'Error al cargar productos: $e');
      setState(() => _isLoading = false);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Catálogo'),
        actions: [
          IconButton(
            icon: const Icon(Icons.shopping_cart),
            onPressed: () => context.push('/carrito'),
          ),
        ],
      ),
      body: _isLoading
          ? const Center(child: SpinKitFadingCircle(color: AppConstants.primaryColor))
          : _productos.isEmpty
          ? const Center(child: Text('No hay productos disponibles'))
          : GridView.builder(
        padding: const EdgeInsets.all(16),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 16,
          mainAxisSpacing: 16,
          childAspectRatio: 0.7,
        ),
        itemCount: _productos.length,
        itemBuilder: (context, index) {
          final producto = _productos[index];
          final descuentos = _descuentos[producto.idProducto] ?? [];
          final descuento = descuentos.isNotEmpty ? descuentos.first : null;
          return ProductoCard(
            producto: producto,
            descuento: descuento,
            onTap: () => context.push('/producto/${producto.idProducto}'),
          );
        },
      ),
    );
  }
}