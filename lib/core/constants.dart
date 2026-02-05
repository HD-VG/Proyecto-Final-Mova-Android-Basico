import 'package:flutter/material.dart';

class AppConstants {
  // URL base de la API
  static const String apiBaseUrl = 'http://192.168.65.214:3000/api';

  // Colores del tema
  static const Color primaryColor = Colors.blue;
  static const Color accentColor = Colors.blueAccent;
  static const Color backgroundColor = Color(0xFFF5F5F5);
  static const Color textColor = Colors.black87;
  static const Color errorColor = Colors.red;

  // Configuración del tema
  static final ThemeData appTheme = ThemeData(
    useMaterial3: true,
    primaryColor: primaryColor,
    scaffoldBackgroundColor: backgroundColor,
    colorScheme: ColorScheme.fromSeed(
      seedColor: primaryColor,
      brightness: Brightness.light,
    ),
    textTheme: const TextTheme(
      bodyLarge: TextStyle(color: textColor),
      bodyMedium: TextStyle(color: textColor),
      titleLarge: TextStyle(color: textColor, fontWeight: FontWeight.bold),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        foregroundColor: Colors.white,
        backgroundColor: primaryColor,
      ),
    ),
  );

  // Endpoints de la API
  static const String authLogin = '/auth/login';
  static const String authRegister = '/usuarios/';
  static const String authRecoverEmail = '/auth/recover-password-email';
  static const String authVerifyCode = '/auth/verify-reset-code';
  static const String authRecoverQuestion = '/auth/recover-password-question';
  static const String authResetPassword = '/auth/reset-password';
  static const String productos = '/productos/';//modificado
  static const String descuentosPorProducto = '/descuentos/producto/';
  static const String transacciones = '/transaccion/';
  static const String transaccionesPorUsuario = '/transaccion/usuario/';
  static const String detallesPorTransaccion = '/detalletransaccion/transaccion/';
  static const String detalles = '/detalletransaccion/';
  static const String usuarios = '/usuarios/';
  static const String eliminartransacciones = '/detalletransaccion/eliminar/';
  static const String detallesactivos = '/detalletransaccion/activo';
}