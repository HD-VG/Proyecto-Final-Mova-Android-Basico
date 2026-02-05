import 'package:flutter/material.dart';
import 'package:appmova/core/constants.dart';
import 'package:appmova/models/transaccion.dart';

class PedidoCard extends StatelessWidget {
  final Transaccion transaccion;
  final VoidCallback onTap;

  const PedidoCard({
    super.key,
    required this.transaccion,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      child: ListTile(
        title: Text('Pedido #${transaccion.idTransaccion}'),
        subtitle: Text('Total: \$${transaccion.total?.toStringAsFixed(2) ?? '0.00'}'),
        trailing: Text(transaccion.tipo ?? 'Sin tipo'),
        onTap: onTap,
      ),
    );
  }
}