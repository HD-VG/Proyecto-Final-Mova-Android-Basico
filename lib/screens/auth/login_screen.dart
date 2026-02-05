import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';
import 'package:appmova/core/constants.dart';
import 'package:appmova/providers/auth_provider.dart';
import 'package:fluttertoast/fluttertoast.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  bool _obscurePassword = true;

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  Future<void> _login() async {
    if (!_formKey.currentState!.validate()) return;

    final authProvider = Provider.of<AuthProvider>(context, listen: false);
    authProvider.setLoading(true); // Ahora usa el método público

    try {
      final success = await authProvider.login(_emailController.text, _passwordController.text);
      if (success && authProvider.usuario != null) {
        if (!mounted) return;
        context.go('/home');
      } else {
        if (!mounted) return;
        Fluttertoast.showToast(msg: authProvider.error ?? 'Error al iniciar sesión');
      }
    } catch (e) {
      if (!mounted) return;
      Fluttertoast.showToast(msg: 'Error inesperado: $e');
    } finally {
      if (mounted) authProvider.setLoading(false); // Ahora usa el método público
    }
  }

  @override
  Widget build(BuildContext context) {
    final authProvider = Provider.of<AuthProvider>(context);

    return Scaffold(
      appBar: AppBar(title: const Text('Iniciar Sesión')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextFormField(
                controller: _emailController,
                decoration: const InputDecoration(labelText: 'Email'),
                keyboardType: TextInputType.emailAddress,
                validator: (value) =>
                value == null || value.isEmpty ? 'Ingrese su email' : null,
              ),
              const SizedBox(height: 16),
              TextFormField(
                controller: _passwordController,
                decoration: InputDecoration(
                  labelText: 'Contraseña',
                  suffixIcon: IconButton(
                    icon: Icon(_obscurePassword ? Icons.visibility : Icons.visibility_off),
                    onPressed: () => setState(() => _obscurePassword = !_obscurePassword),
                  ),
                ),
                obscureText: _obscurePassword,
                validator: (value) =>
                value == null || value.isEmpty ? 'Ingrese su contraseña' : null,
              ),
              const SizedBox(height: 16),
              if (authProvider.isLoading)
                const CircularProgressIndicator()
              else
                ElevatedButton(
                  onPressed: _login,
                  child: const Text('Iniciar Sesión'),
                ),
              TextButton(
                onPressed: () => context.push('/recover-email'),
                child: const Text('¿Olvidaste tu contraseña?'),
              ),
              TextButton(
                onPressed: () => context.push('/register'),
                child: const Text('Crear una cuenta'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}