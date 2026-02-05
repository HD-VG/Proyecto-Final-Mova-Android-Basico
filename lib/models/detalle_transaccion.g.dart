// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'detalle_transaccion.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DetalleTransaccionImpl _$$DetalleTransaccionImplFromJson(
  Map<String, dynamic> json,
) => _$DetalleTransaccionImpl(
  idDetalle: (json['id_detalle'] as num).toInt(),
  fkIdTransaccion: (json['fk_id_transaccion'] as num?)?.toInt(),
  fkIdProducto: (json['fk_id_producto'] as num?)?.toInt(),
  cantidad: (json['cantidad'] as num?)?.toInt(),
  precioUnitario: (json['precio_unitario'] as num?)?.toDouble(),
  precioUnitarioDescuento: (json['precio_unitario_descuento'] as num?)
      ?.toDouble(),
  subtotal: (json['subtotal'] as num?)?.toDouble(),
  estadoAI: json['estadoAI'] as String? ?? 'activo',
  producto: json['producto'] == null
      ? null
      : Producto.fromJson(json['producto'] as Map<String, dynamic>),
);

Map<String, dynamic> _$$DetalleTransaccionImplToJson(
  _$DetalleTransaccionImpl instance,
) => <String, dynamic>{
  'id_detalle': instance.idDetalle,
  'fk_id_transaccion': instance.fkIdTransaccion,
  'fk_id_producto': instance.fkIdProducto,
  'cantidad': instance.cantidad,
  'precio_unitario': instance.precioUnitario,
  'precio_unitario_descuento': instance.precioUnitarioDescuento,
  'subtotal': instance.subtotal,
  'estadoAI': instance.estadoAI,
  'producto': instance.producto,
};
