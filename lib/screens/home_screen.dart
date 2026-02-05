import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:appmova/providers/auth_provider.dart';
import 'package:go_router/go_router.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final authProvider = Provider.of<AuthProvider>(context);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Inicio'),
        actions: [
          IconButton(
            icon: const Icon(Icons.account_circle),
            onPressed: () => context.push('/cuenta'),
          ),
          IconButton(
            icon: const Icon(Icons.logout),
            onPressed: () async {
              await authProvider.logout();
              if (!context.mounted) return;
              context.go('/login');
            },
          ),
        ],
      ),
      body: Center(
        child: authProvider.usuario != null
            ? Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Bienvenido, ${authProvider.usuario!.nombre} ${authProvider.usuario!.apellido}'),
            ElevatedButton(
              onPressed: () => context.push('/catalogo'),
              child: const Text('Ir al Catálogo'),
            ),
          ],
        )
            : const CircularProgressIndicator(),
      ),
    );
  }
}