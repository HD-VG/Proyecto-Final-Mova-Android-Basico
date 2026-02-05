// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'usuario.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UsuarioImpl _$$UsuarioImplFromJson(Map<String, dynamic> json) =>
    _$UsuarioImpl(
      idUsuario: (json['id_usuario'] as num).toInt(),
      nombre: json['nombre'] as String?,
      apellido: json['apellido'] as String?,
      telefono: json['telefono'] as String?,
      email: json['email'] as String?,
      password: json['password'] as String?,
      direccion: json['direccion'] as String?,
      imagen: json['imagen'] as String?,
      rol: json['rol'] as String?,
      fechaRegistro: json['fecha_registro'] == null
          ? null
          : DateTime.parse(json['fecha_registro'] as String),
      pregunta: json['pregunta'] as String?,
      respuesta: json['respuesta'] as String?,
      nuevo: json['nuevo'] as String?,
      estadoAI: json['estadoAI'] as String?,
    );

Map<String, dynamic> _$$UsuarioImplToJson(_$UsuarioImpl instance) =>
    <String, dynamic>{
      'id_usuario': instance.idUsuario,
      'nombre': instance.nombre,
      'apellido': instance.apellido,
      'telefono': instance.telefono,
      'email': instance.email,
      'password': instance.password,
      'direccion': instance.direccion,
      if (instance.imagen case final value?) 'imagen': value,
      'rol': instance.rol,
      'fecha_registro': instance.fechaRegistro?.toIso8601String(),
      if (instance.pregunta case final value?) 'pregunta': value,
      if (instance.respuesta case final value?) 'respuesta': value,
      'nuevo': instance.nuevo,
      'estadoAI': instance.estadoAI,
    };
