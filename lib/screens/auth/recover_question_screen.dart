import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';
import 'package:appmova/core/constants.dart';
import 'package:appmova/providers/auth_provider.dart';
import 'package:fluttertoast/fluttertoast.dart';

class RecoverQuestionScreen extends StatefulWidget {
  const RecoverQuestionScreen({super.key});

  @override
  State<RecoverQuestionScreen> createState() => _RecoverQuestionScreenState();
}

class _RecoverQuestionScreenState extends State<RecoverQuestionScreen> {
  final _emailController = TextEditingController();
  final _respuestaController = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  @override
  void dispose() {
    _emailController.dispose();
    _respuestaController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final authProvider = Provider.of<AuthProvider>(context);

    return Scaffold(
      appBar: AppBar(title: const Text('Recuperar por Pregunta')),
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
              TextFormField(
                controller: _respuestaController,
                decoration: const InputDecoration(labelText: 'Respuesta de seguridad'),
                validator: (value) =>
                value!.isEmpty ? 'Ingrese su respuesta' : null,
              ),
              const SizedBox(height: 16),
              if (authProvider.isLoading)
                const CircularProgressIndicator()
              else
                ElevatedButton(
                  onPressed: () async {
                    if (_formKey.currentState!.validate()) {
                      final success = await authProvider.recoverPasswordByQuestion(
                        _emailController.text,
                        _respuestaController.text,
                      );
                      if (success) {
                        Fluttertoast.showToast(msg: 'Respuesta verificada');
                        context.push('/reset-password', extra: _emailController.text);
                      } else {
                        Fluttertoast.showToast(msg: authProvider.error ?? 'Error al verificar respuesta');
                      }
                    }
                  },
                  child: const Text('Verificar'),
                ),
              TextButton(
                onPressed: () => context.push('/recover-email'),
                child: const Text('Recuperar con email'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}