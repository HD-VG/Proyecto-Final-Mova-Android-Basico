import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';
import 'package:appmova/core/constants.dart';
import 'package:appmova/providers/auth_provider.dart';
import 'package:appmova/providers/carrito_provider.dart';
import 'package:appmova/providers/transaccion_provider.dart';
import 'package:appmova/widgets/carrito_item.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:fluttertoast/fluttertoast.dart';

class CarritoScreen extends StatelessWidget {
  const CarritoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final carritoProvider = Provider.of<CarritoProvider>(context);
    final authProvider = Provider.of<AuthProvider>(context);
    final transaccionProvider = Provider.of<TransaccionProvider>(context);

    return Scaffold(
      appBar: AppBar(title: const Text('Carrito')),
      body: carritoProvider.items.isEmpty
          ? const Center(child: Text('El carrito está vacío'))
          : Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: carritoProvider.items.length,
              itemBuilder: (context, index) {
                final item = carritoProvider.items[index];
                return CarritoItem(
                  item: item,
                  onRemove: () => carritoProvider.removeProducto(item.producto.idProducto),
                  onUpdateCantidad: (cantidad) => carritoProvider.updateCantidad(
                    item.producto.idProducto,
                    cantidad,
                  ),
                );
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              children: [
                Text(
                  'Total: \$${carritoProvider.total.toStringAsFixed(2)}',
                  style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 16),
                if (transaccionProvider.isLoading)
                  const SpinKitFadingCircle(color: AppConstants.primaryColor)
                else
                  ElevatedButton(
                    onPressed: authProvider.usuario == null
                        ? () {
                      context.push('/login');
                    }
                        : () async {
                      if (!context.mounted) return;
                      final success = await transaccionProvider.crearTransaccion(
                        fkIdUsuario: authProvider.usuario!.idUsuario,
                        carritoProvider: carritoProvider,
                      );
                      if (!context.mounted) return;
                      if (success) {
                        carritoProvider.clearCarrito();
                        Fluttertoast.showToast(msg: 'Compra realizada con éxito');
                        context.go('/home');
                      } else {
                        Fluttertoast.showToast(
                          msg: transaccionProvider.error ?? 'Error al realizar la compra',
                        );
                      }
                    },
                    child: const Text('Realizar Compra'),
                  ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}