import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';
import 'package:appmova/core/constants.dart';
import 'package:appmova/providers/auth_provider.dart';
import 'package:fluttertoast/fluttertoast.dart';

class VerifyCodeScreen extends StatefulWidget {
  final String email;
  const VerifyCodeScreen({super.key, required this.email});

  @override
  State<VerifyCodeScreen> createState() => _VerifyCodeScreenState();
}

class _VerifyCodeScreenState extends State<VerifyCodeScreen> {
  final _codeController = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  @override
  void dispose() {
    _codeController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final authProvider = Provider.of<AuthProvider>(context);

    return Scaffold(
      appBar: AppBar(title: const Text('Verificar Código')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextFormField(
                controller: _codeController,
                decoration: const InputDecoration(labelText: 'Código de recuperación'),
                validator: (value) =>
                value!.isEmpty ? 'Ingrese el código' : null,
              ),
              const SizedBox(height: 16),
              if (authProvider.isLoading)
                const CircularProgressIndicator()
              else
                ElevatedButton(
                  onPressed: () async {
                    if (_formKey.currentState!.validate()) {
                      final success = await authProvider.verifyResetCode(widget.email, _codeController.text);
                      if (success) {
                        Fluttertoast.showToast(msg: 'Código verificado');
                        context.push('/reset-password', extra: widget.email);
                      } else {
                        Fluttertoast.showToast(msg: authProvider.error ?? 'Error al verificar código');
                      }
                    }
                  },
                  child: const Text('Verificar'),
                ),
            ],
          ),
        ),
      ),
    );
  }
}