import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';
import 'package:appmova/core/constants.dart';
import 'package:appmova/providers/auth_provider.dart';
import 'package:fluttertoast/fluttertoast.dart';

class CuentaScreen extends StatefulWidget {
  const CuentaScreen({super.key});

  @override
  State<CuentaScreen> createState() => _CuentaScreenState();
}

class _CuentaScreenState extends State<CuentaScreen> {
  final _nombreController = TextEditingController();
  final _apellidoController = TextEditingController();
  final _emailController = TextEditingController();
  final _telefonoController = TextEditingController();
  final _direccionController = TextEditingController();
  final _imagenController = TextEditingController();
  final _preguntaController = TextEditingController();
  final _respuestaController = TextEditingController();
  final _passwordController = TextEditingController();
  final _repeatPasswordController = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  bool _isEditing = false;
  bool _obscurePassword = true;
  bool _obscureRepeatPassword = true;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    final usuario = Provider.of<AuthProvider>(context, listen: false).usuario;
    if (usuario != null) {
      _nombreController.text = usuario.nombre ?? '';
      _apellidoController.text = usuario.apellido ?? '';
      _emailController.text = usuario.email ?? '';
      _telefonoController.text = usuario.telefono ?? '';
      _direccionController.text = usuario.direccion ?? '';
      _imagenController.text = usuario.imagen ?? '';
      _preguntaController.text = usuario.pregunta ?? '';
      _respuestaController.text = usuario.respuesta ?? '';
    }
  }

  @override
  void dispose() {
    _nombreController.dispose();
    _apellidoController.dispose();
    _emailController.dispose();
    _telefonoController.dispose();
    _direccionController.dispose();
    _imagenController.dispose();
    _preguntaController.dispose();
    _respuestaController.dispose();
    _passwordController.dispose();
    _repeatPasswordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final authProvider = Provider.of<AuthProvider>(context);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Mi Cuenta'),
        actions: [
          IconButton(
            icon: Icon(_isEditing ? Icons.save : Icons.edit),
            onPressed: () {
              if (_isEditing) {
                if (_formKey.currentState!.validate()) {
                  _saveChanges(authProvider);
                }
              } else {
                setState(() => _isEditing = true);
              }
            },
          ),
          IconButton(
            icon: const Icon(Icons.logout),
            onPressed: () async {
              await authProvider.logout();
              context.go('/login');
            },
          ),
        ],
      ),
      body: authProvider.usuario == null
          ? const Center(child: CircularProgressIndicator())
          : Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: SingleChildScrollView(
            child: Column(
              children: [
                TextFormField(
                  controller: _nombreController,
                  decoration: const InputDecoration(labelText: 'Nombre'),
                  enabled: _isEditing,
                  validator: (value) =>
                  value!.isEmpty ? 'Ingrese su nombre' : null,
                ),
                const SizedBox(height: 16),
                TextFormField(
                  controller: _apellidoController,
                  decoration: const InputDecoration(labelText: 'Apellido'),
                  enabled: _isEditing,
                  validator: (value) =>
                  value!.isEmpty ? 'Ingrese su apellido' : null,
                ),
                const SizedBox(height: 16),
                TextFormField(
                  controller: _emailController,
                  decoration: const InputDecoration(labelText: 'Email'),
                  enabled: _isEditing,
                  keyboardType: TextInputType.emailAddress,
                  validator: (value) =>
                  value!.isEmpty ? 'Ingrese su email' : null,
                ),
                const SizedBox(height: 16),
                TextFormField(
                  controller: _telefonoController,
                  decoration: const InputDecoration(labelText: 'Teléfono'),
                  enabled: _isEditing,
                  keyboardType: TextInputType.phone,
                ),
                const SizedBox(height: 16),
                TextFormField(
                  controller: _direccionController,
                  decoration: const InputDecoration(labelText: 'Dirección'),
                  enabled: _isEditing,
                ),
                const SizedBox(height: 16),
                TextFormField(
                  controller: _imagenController,
                  decoration: const InputDecoration(labelText: 'URL de Imagen'),
                  enabled: _isEditing,
                ),
                const SizedBox(height: 16),
                TextFormField(
                  controller: _preguntaController,
                  decoration: const InputDecoration(labelText: 'Pregunta de seguridad'),
                  enabled: _isEditing,
                  validator: (value) =>
                  value!.isEmpty ? 'Ingrese una pregunta' : null,
                ),
                const SizedBox(height: 16),
                TextFormField(
                  controller: _respuestaController,
                  decoration: const InputDecoration(labelText: 'Respuesta de seguridad'),
                  enabled: _isEditing,
                  validator: (value) =>
                  value!.isEmpty ? 'Ingrese una respuesta' : null,
                ),
                const SizedBox(height: 16),
                TextFormField(
                  controller: _passwordController,
                  decoration: InputDecoration(
                    labelText: 'Nueva Contraseña',
                    suffixIcon: IconButton(
                      icon: Icon(_obscurePassword ? Icons.visibility : Icons.visibility_off),
                      onPressed: () => setState(() => _obscurePassword = !_obscurePassword),
                    ),
                  ),
                  enabled: _isEditing,
                  obscureText: _obscurePassword,
                  validator: (value) {
                    if (value!.isEmpty) return null; // Opcional
                    if (value.length < 6) return 'Mínimo 6 caracteres';
                    return null;
                  },
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
                  enabled: _isEditing,
                  obscureText: _obscureRepeatPassword,
                  validator: (value) {
                    if (value!.isEmpty) return null; // Opcional
                    if (value != _passwordController.text) return 'Las contraseñas no coinciden';
                    return null;
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Future<void> _saveChanges(AuthProvider authProvider) async {
    // Validar que si se ingresó contraseña, coincidan
    if (_passwordController.text.isNotEmpty && _passwordController.text != _repeatPasswordController.text) {
      Fluttertoast.showToast(msg: 'Las contraseñas no coinciden');
      return;
    }

    final success = await authProvider.updateUsuario(
      nombre: _nombreController.text,
      apellido: _apellidoController.text,
      email: _emailController.text,
      telefono: _telefonoController.text.isEmpty ? null : _telefonoController.text,
      direccion: _direccionController.text.isEmpty ? null : _direccionController.text,
      imagen: _imagenController.text.isEmpty ? null : _imagenController.text,
      pregunta: _preguntaController.text,
      respuesta: _respuestaController.text,
      password: _passwordController.text.isEmpty ? null : _passwordController.text, // Enviar password
    );

    if (success) {
      Fluttertoast.showToast(msg: 'Datos actualizados, incluyendo contraseña si se modificó');
      setState(() => _isEditing = false);
    } else {
      Fluttertoast.showToast(msg: authProvider.error ?? 'Error al actualizar datos');
    }
  }
}