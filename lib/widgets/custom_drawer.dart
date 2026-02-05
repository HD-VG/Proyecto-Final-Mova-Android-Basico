import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';
import 'package:appmova/core/constants.dart';
import 'package:appmova/providers/auth_provider.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    final authProvider = Provider.of<AuthProvider>(context);

    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          DrawerHeader(
            decoration: const BoxDecoration(
              color: AppConstants.primaryColor,
            ),
            child: Text(
              authProvider.usuario?.nombre ?? 'Bienvenido',
              style: const TextStyle(color: Colors.white, fontSize: 24),
            ),
          ),
          ListTile(
            leading: const Icon(Icons.home),
            title: const Text('Inicio'),
            onTap: () => context.go('/home'),
          ),
          ListTile(
            leading: const Icon(Icons.store),
            title: const Text('Catálogo'),
            onTap: () => context.go('/catalogo'),
          ),
          ListTile(
            leading: const Icon(Icons.shopping_cart),
            title: const Text('Carrito'),
            onTap: () => context.go('/carrito'),
          ),
          ListTile(
            leading: const Icon(Icons.history),
            title: const Text('Mis Pedidos'),
            onTap: () => context.go('/pedidos'),
          ),
          ListTile(
            leading: const Icon(Icons.account_circle),
            title: const Text('Mi Cuenta'),
            onTap: () => context.go('/cuenta'),
          ),
          if (authProvider.usuario != null)
            ListTile(
              leading: const Icon(Icons.logout),
              title: const Text('Cerrar Sesión'),
              onTap: () async {
                await authProvider.logout();
                context.go('/login');
              },
            ),
          if (authProvider.usuario == null)
            ListTile(
              leading: const Icon(Icons.login),
              title: const Text('Iniciar Sesión'),
              onTap: () => context.go('/login'),
            ),
        ],
      ),
    );
  }
}