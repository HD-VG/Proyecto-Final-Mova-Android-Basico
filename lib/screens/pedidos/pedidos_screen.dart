import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';
import 'package:appmova/core/constants.dart';
import 'package:appmova/providers/auth_provider.dart';
import 'package:appmova/providers/transaccion_provider.dart';
import 'package:appmova/widgets/pedido_card.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:fluttertoast/fluttertoast.dart';

class PedidosScreen extends StatefulWidget {
  const PedidosScreen({super.key});

  @override
  State<PedidosScreen> createState() => _PedidosScreenState();
}

class _PedidosScreenState extends State<PedidosScreen> {
  @override
  void initState() {
    super.initState();
    final authProvider = Provider.of<AuthProvider>(context, listen: false);
    if (authProvider.usuario != null) {
      Provider.of<TransaccionProvider>(context, listen: false)
          .fetchTransacciones(authProvider.usuario!.idUsuario);
    }
  }

  @override
  Widget build(BuildContext context) {
    final authProvider = Provider.of<AuthProvider>(context);
    final transaccionProvider = Provider.of<TransaccionProvider>(context);

    if (authProvider.usuario == null) {
      return Scaffold(
        appBar: AppBar(title: const Text('Mis Pedidos')),
        body: const Center(child: Text('Inicia sesión para ver tus pedidos')),
      );
    }

    return Scaffold(
      appBar: AppBar(title: const Text('Mis Pedidos')),
      body: transaccionProvider.isLoading
          ? const Center(child: SpinKitFadingCircle(color: AppConstants.primaryColor))
          : transaccionProvider.transacciones.isEmpty
          ? const Center(child: Text('No hay pedidos'))
          : ListView.builder(
        padding: const EdgeInsets.all(16),
        itemCount: transaccionProvider.transacciones.length,
        itemBuilder: (context, index) {
          final transaccion = transaccionProvider.transacciones[index];
          return PedidoCard(
            transaccion: transaccion,
            onTap: () => context.push('/pedido/${transaccion.idTransaccion}'),
          );
        },
      ),
    );
  }
}