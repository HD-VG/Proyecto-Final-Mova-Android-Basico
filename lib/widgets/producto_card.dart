import 'package:flutter/material.dart';
import 'package:appmova/models/producto.dart';
import 'package:appmova/models/descuento.dart';
import 'package:appmova/core/constants.dart';

class ProductoCard extends StatelessWidget {
  final Producto producto;
  final Descuento? descuento;
  final VoidCallback onTap;

  const ProductoCard({
    super.key,
    required this.producto,
    this.descuento,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final double precioFinal = descuento != null
        ? (producto.precioUnitario ?? 0.0) * (1 - ((double.tryParse(descuento!.porcentaje ?? "0") ?? 0.0) / 100))
        : (producto.precioUnitario ?? 0.0);
    return Card(
      child: InkWell(
        onTap: onTap,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Image.network(
                producto.url ?? 'https://via.placeholder.com/150',
                fit: BoxFit.cover,
                errorBuilder: (context, error, stackTrace) {
                  print('Error al cargar la imagen: $error, URL: ${producto.url}');
                  return const Center(
                    child: Icon(Icons.error, color: Colors.red, size: 50),
                  );
                },
                loadingBuilder: (context, child, loadingProgress) {
                  if (loadingProgress == null) return child;
                  return const Center(child: CircularProgressIndicator());
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    producto.nombre ?? 'Sin nombre',
                    style: const TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Text('Sabor: ${producto.sabor ?? 'Sin sabor'}'),
                  Text('Precio: \$${precioFinal.toStringAsFixed(2)}'),
                  Text('Stock: ${producto.stock ?? 0}'),
                  Text('Estado: ${producto.estadoAI ?? 'Sin estado'}'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}