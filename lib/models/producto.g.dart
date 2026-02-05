// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'producto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ProductoImpl _$$ProductoImplFromJson(Map<String, dynamic> json) =>
    _$ProductoImpl(
      idProducto: (json['id_producto'] as num).toInt(),
      nombre: json['nombre'] as String?,
      sabor: json['sabor'] as String?,
      precioUnitario: (json['precio_unitario'] as num?)?.toDouble(),
      url: json['url'] as String?,
      tipo: json['tipo'] as String?,
      stock: (json['stock'] as num?)?.toInt(),
      estadoAI: json['estadoAI'] as String?,
    );

Map<String, dynamic> _$$ProductoImplToJson(_$ProductoImpl instance) =>
    <String, dynamic>{
      'id_producto': instance.idProducto,
      'nombre': instance.nombre,
      'sabor': instance.sabor,
      'precio_unitario': instance.precioUnitario,
      'url': instance.url,
      'tipo': instance.tipo,
      'stock': instance.stock,
      'estadoAI': instance.estadoAI,
    };
