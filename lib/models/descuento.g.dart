// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'descuento.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DescuentoImpl _$$DescuentoImplFromJson(Map<String, dynamic> json) =>
    _$DescuentoImpl(
      idDescuento: (json['id_descuento'] as num).toInt(),
      fkIdProducto: (json['fk_id_producto'] as num?)?.toInt(),
      porcentaje: json['porcentaje'] as String?,
      fechaInicio: json['fecha_inicio'] == null
          ? null
          : DateTime.parse(json['fecha_inicio'] as String),
      fechaFin: json['fecha_fin'] == null
          ? null
          : DateTime.parse(json['fecha_fin'] as String),
      estadoAI: json['estadoAI'] as String?,
    );

Map<String, dynamic> _$$DescuentoImplToJson(_$DescuentoImpl instance) =>
    <String, dynamic>{
      'id_descuento': instance.idDescuento,
      'fk_id_producto': instance.fkIdProducto,
      'porcentaje': instance.porcentaje,
      'fecha_inicio': instance.fechaInicio?.toIso8601String(),
      'fecha_fin': instance.fechaFin?.toIso8601String(),
      'estadoAI': instance.estadoAI,
    };
