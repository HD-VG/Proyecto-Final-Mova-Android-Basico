import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';
import 'package:appmova/core/constants.dart';
import 'package:appmova/providers/auth_provider.dart';
import 'package:fluttertoast/fluttertoast.dart';

class ResetPasswordScreen extends StatefulWidget {
  final String email;
  const ResetPasswordScreen({super.key, required this.email});

  @override
  State<ResetPasswordScreen> createState() => _ResetPasswordScreenState();
}

class _ResetPasswordScreenState extends State<ResetPasswordScreen> {
  final _passwordController = TextEditingController();
  final _repeatPasswordController = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  bool _obscurePassword = true;
  bool _obscureRepeatPassword = true;

  @override
  void dispose() {
    _passwordController.dispose();
    _repeatPasswordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final authProvider = Provider.of<AuthProvider>(context);

    return Scaffold(
      appBar: AppBar(title: const Text('Restablecer Contraseña')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextFormField(
                controller: _passwordController,
                decoration: InputDecoration(
                  labelText: 'Nueva Contraseña',
                  suffixIcon: IconButton(
                    icon: Icon(_obscurePassword ? Icons.visibility : Icons.visibility_off),
                    onPressed: () => setState(() => _obscurePassword = !_obscurePassword),
                  ),
                ),
                obscureText: _obscurePassword,
                validator: (value) =>
                value!.isEmpty ? 'Ingrese su nueva contraseña' : null,
              ),
              const SizedBox(height: 16),
              TextFormField(
                controller: _repeatPasswordController,
                decoration: InputDecoration(
                  labelText: 'Repetir Nueva Contraseña',
                  suffixIcon: IconButton(
                    icon: Icon(_obscureRepeatPassword ? Icons.visibility : Icons.visibility_off),
                    onPressed: () => setState(() => _obscureRepeatPassword = !_obscureRepeatPassword),
                  ),
                ),
                obscureText: _obscureRepeatPassword,
                validator: (value) {
                  if (value!.isEmpty) return 'Repita su nueva contraseña';
                  if (value != _passwordController.text) return 'Las contraseñas no coinciden';
                  return null;
                },
              ),
              const SizedBox(height: 16),
              if (authProvider.isLoading)
                const CircularProgressIndicator()
              else
                ElevatedButton(
                  onPressed: () async {
                    if (_formKey.currentState!.validate()) {
                      final success = await authProvider.resetPassword(
                        widget.email,
                        _passwordController.text,
                        _repeatPasswordController.text,
                      );
                      if (success) {
                        Fluttertoast.showToast(msg: 'Contraseña restablecida');
                        context.go('/login');
                      } else {
                        Fluttertoast.showToast(msg: authProvider.error ?? 'Error al restablecer contraseña');
                      }
                    }
                  },
                  child: const Text('Restablecer'),
                ),
            ],
          ),
        ),
      ),
    );
  }
}