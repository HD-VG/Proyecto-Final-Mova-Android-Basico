import 'package:flutter/material.dart';
import 'package:appmova/core/constants.dart';
import 'package:appmova/providers/carrito_provider.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class CarritoItem extends StatelessWidget {
  final CartItem item;
  final VoidCallback onRemove;
  final Function(int) onUpdateCantidad;

  const CarritoItem({
    super.key,
    required this.item,
    required this.onRemove,
    required this.onUpdateCantidad,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CachedNetworkImage(
        imageUrl: item.producto.url ?? 'https://via.placeholder.com/150',
        width: 50,
        height: 50,
        fit: BoxFit.cover,
        placeholder: (context, url) => const SpinKitFadingCircle(
          color: AppConstants.primaryColor,
          size: 30,
        ),
        errorWidget: (context, url, error) => const Icon(Icons.error),
      ),
      title: Text(item.producto.nombre ?? 'Sin nombre'),
      subtitle: Text(
        '\$${item.subtotal?.toStringAsFixed(2) ?? '0.00'} (${item.cantidad} x \$${item.producto.precioUnitario?.toStringAsFixed(2) ?? '0.00'})',
      ),
      trailing: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          IconButton(
            icon: const Icon(Icons.remove),
            onPressed: () {
              if (item.cantidad > 1) {
                onUpdateCantidad(item.cantidad - 1);
              }
            },
          ),
          Text('${item.cantidad}'),
          IconButton(
            icon: const Icon(Icons.add),
            onPressed: () {
              if (item.cantidad < (item.producto.stock ?? 0)) {
                onUpdateCantidad(item.cantidad + 1);
              }
            },
          ),
          IconButton(
            icon: const Icon(Icons.delete),
            onPressed: onRemove,
          ),
        ],
      ),
    );
  }
}