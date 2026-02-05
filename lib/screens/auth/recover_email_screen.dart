import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';
import 'package:appmova/core/constants.dart';
import 'package:appmova/providers/auth_provider.dart';
import 'package:fluttertoast/fluttertoast.dart';

class RecoverEmailScreen extends StatefulWidget {
  const RecoverEmailScreen({super.key});

  @override
  State<RecoverEmailScreen> createState() => _RecoverEmailScreenState();
}

class _RecoverEmailScreenState extends State<RecoverEmailScreen> {
  final _emailController = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  @override
  void dispose() {
    _emailController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final authProvider = Provider.of<AuthProvider>(context);

    return Scaffold(
      appBar: AppBar(title: const Text('Recuperar Contraseña')),
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
                value!.isEmpty ? 'Ingrese su email' : null,
              ),
              const SizedBox(height: 16),
              if (authProvider.isLoading)
                const CircularProgressIndicator()
              else
                ElevatedButton(
                  onPressed: () async {
                    if (_formKey.currentState!.validate()) {
                      final success = await authProvider.recoverPasswordByEmail(_emailController.text);
                      if (success) {
                        Fluttertoast.showToast(msg: 'Código enviado a su email');
                        context.push('/verify-code', extra: _emailController.text);
                      } else {
                        Fluttertoast.showToast(msg: authProvider.error ?? 'Error al enviar código');
                      }
                    }
                  },
                  child: const Text('Enviar Código'),
                ),
              TextButton(
                onPressed: () => context.push('/recover-question'),
                child: const Text('Recuperar con pregunta de seguridad'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}