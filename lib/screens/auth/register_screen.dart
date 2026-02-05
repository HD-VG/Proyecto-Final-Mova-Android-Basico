import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';
import 'package:appmova/core/constants.dart';
import 'package:appmova/providers/auth_provider.dart';
import 'package:fluttertoast/fluttertoast.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  final _nombreController = TextEditingController();
  final _apellidoController = TextEditingController();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final _repeatPasswordController = TextEditingController(); // Nuevo
  final _preguntaController = TextEditingController();
  final _respuestaController = TextEditingController();
  final _telefonoController = TextEditingController();
  final _direccionController = TextEditingController();
  final _imagenController = TextEditingController();

  final _formKey = GlobalKey<FormState>();
  bool _obscurePassword = true;
  bool _obscureRepeatPassword = true; // Nuevo

  @override
  void dispose() {
    _nombreController.dispose();
    _apellidoController.dispose();
    _emailController.dispose();
    _passwordController.dispose();
    _repeatPasswordController.dispose(); // Dispose nuevo
    _preguntaController.dispose();
    _respuestaController.dispose();
    _telefonoController.dispose();
    _direccionController.dispose();
    _imagenController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final authProvider = Provider.of<AuthProvider>(context);

    return Scaffold(
      appBar: AppBar(title: const Text('Crear Cuenta')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: SingleChildScrollView(
            child: Column(
              children: [
                TextFormField(
                  controller: _nombreController,
                  decoration: const InputDecoration(labelText: 'Nombre'),
                  validator: (value) =>
                  value!.isEmpty ? 'Ingrese su nombre' : null,
                ),
                const SizedBox(height: 16),
                TextFormField(
                  controller: _apellidoController,
                  decoration: const InputDecoration(labelText: 'Apellido'),
                  validator: (value) =>
                  value!.isEmpty ? 'Ingrese su apellido' : null,
                ),
                const SizedBox(height: 16),
                TextFormField(
                  controller: _emailController,
                  decoration: const InputDecoration(labelText: 'Email'),
                  keyboardType: TextInputType.emailAddress,
                  validator: (value) =>
                  value!.isEmpty ? 'Ingrese su email' : null,
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
                  value!.isEmpty ? 'Ingrese su contraseña' : null,
                ),
                const SizedBox(height: 16),
                TextFormField(
                  controller: _repeatPasswordController,
                  decoration: InputDecoration(
                    labelText: 'Repetir Contraseña',
                    suffixIcon: IconButton(
                      icon: Icon(_obscureRepeatPassword ? Icons.visibility : Icons.visibility_off),
                      onPressed: () => setState(() => _obscureRepeatPassword = !_obscureRepeatPassword),
                    ),
                  ),
                  obscureText: _obscureRepeatPassword,
                  validator: (value) {
                    if (value!.isEmpty) return 'Repita su contraseña';
                    if (value != _passwordController.text) return 'Las contraseñas no coinciden';
                    return null;
                  },
                ),
                const SizedBox(height: 16),
                TextFormField(
                  controller: _preguntaController,
                  decoration: const InputDecoration(labelText: 'Pregunta de seguridad'),
                  validator: (value) =>
                  value!.isEmpty ? 'Ingrese una pregunta' : null,
                ),
                const SizedBox(height: 16),
                TextFormField(
                  controller: _respuestaController,
                  decoration: const InputDecoration(labelText: 'Respuesta de seguridad'),
                  validator: (value) =>
                  value!.isEmpty ? 'Ingrese una respuesta' : null,
                ),
                const SizedBox(height: 16),
                TextFormField(
                  controller: _telefonoController,
                  decoration: const InputDecoration(labelText: 'Teléfono'),
                  keyboardType: TextInputType.phone,
                  validator: (value) => value!.isEmpty ? 'Ingrese su teléfono' : null,
                ),
                const SizedBox(height: 16),
                TextFormField(
                  controller: _direccionController,
                  decoration: const InputDecoration(labelText: 'Dirección'),
                  validator: (value) => value!.isEmpty ? 'Ingrese su dirección' : null,
                ),
                const SizedBox(height: 16),
                TextFormField(
                  controller: _imagenController,
                  decoration: const InputDecoration(labelText: 'URL de Imagen'),
                  validator: (value) => value!.isEmpty ? 'Ingrese una URL de imagen' : null,
                ),
                const SizedBox(height: 16),
                if (authProvider.isLoading)
                  const CircularProgressIndicator()
                else
                  ElevatedButton(
                    onPressed: () async {
                      if (_formKey.currentState!.validate()) {
                        final success = await authProvider.register(
                          nombre: _nombreController.text,
                          apellido: _apellidoController.text,
                          email: _emailController.text,
                          password: _passwordController.text,
                          pregunta: _preguntaController.text,
                          respuesta: _respuestaController.text,
                          telefono: _telefonoController.text.isEmpty ? null : _telefonoController.text,
                          direccion: _direccionController.text.isEmpty ? null : _direccionController.text,
                          imagen: _imagenController.text.isEmpty ? null : _imagenController.text,
                        );
                        if (success) {
                          final loginSuccess = await authProvider.login(
                            _emailController.text,
                            _passwordController.text,
                          );
                          if (loginSuccess) {
                            Fluttertoast.showToast(msg: 'Registro y login exitosos.');
                            context.go('/home');
                          } else {
                            Fluttertoast.showToast(msg: authProvider.error ?? 'Error al iniciar sesión');
                            context.go('/login');
                          }
                        } else {
                          Fluttertoast.showToast(msg: authProvider.error ?? 'Error al registrar');
                        }
                      }
                    },
                    child: const Text('Registrarse'),
                  ),
                TextButton(
                  onPressed: () => context.go('/login'),
                  child: const Text('¿Ya tienes una cuenta? Inicia sesión'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}