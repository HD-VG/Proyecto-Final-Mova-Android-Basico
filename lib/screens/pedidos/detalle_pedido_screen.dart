import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:appmova/core/constants.dart';
import 'package:appmova/providers/transaccion_provider.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class DetallePedidoScreen extends StatefulWidget {
  final int idTransaccion;
  const DetallePedidoScreen({super.key, required this.idTransaccion});

  @override
  State<DetallePedidoScreen> createState() => _DetallePedidoScreenState();
}

class _DetallePedidoScreenState extends State<DetallePedidoScreen> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      Provider.of<TransaccionProvider>(context, listen: false)
          .fetchDetalles(widget.idTransaccion);
    });
  }

  @override
  Widget build(BuildContext context) {
    final transaccionProvider = Provider.of<TransaccionProvider>(context);

    return Scaffold(
      appBar: AppBar(title: const Text('Detalles del Pedido')),
      body: transaccionProvider.isLoading
          ? const Center(child: SpinKitFadingCircle(color: AppConstants.primaryColor))
          : transaccionProvider.detalles.isEmpty
          ? const Center(child: Text('No hay detalles disponibles'))
          : ListView.builder(
        padding: const EdgeInsets.all(16),
        itemCount: transaccionProvider.detalles.length,
        itemBuilder: (context, index) {
          final detalle = transaccionProvider.detalles[index];
          return ListTile(
            leading: detalle.producto != null && detalle.producto!.url != null
                ? CachedNetworkImage(
              imageUrl: detalle.producto!.url!,
              width: 50,
              height: 50,
              fit: BoxFit.cover,
              placeholder: (context, url) => const SpinKitFadingCircle(
                color: AppConstants.primaryColor,
                size: 30,
              ),
              errorWidget: (context, url, error) => const Icon(Icons.error),
            )
                : const Icon(Icons.image_not_supported),
            title: Text(detalle.producto?.nombre ?? 'Producto sin nombre'),
            subtitle: Text('Cantidad: ${detalle.cantidad?.toString() ?? '0'}'),
            trailing: Text('\$${detalle.subtotal?.toStringAsFixed(2) ?? '0.00'}'),
          );
        },
      ),
    );
  }
}