// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'transaccion.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TransaccionImpl _$$TransaccionImplFromJson(Map<String, dynamic> json) =>
    _$TransaccionImpl(
      idTransaccion: (json['id_transaccion'] as num).toInt(),
      fkIdUsuario: (json['fk_id_usuario'] as num?)?.toInt(),
      fkIdVendedor: (json['fk_id_vendedor'] as num?)?.toInt(),
      fkIdTienda: (json['fk_id_tienda'] as num?)?.toInt(),
      total: _totalFromJson(json['total']),
      tipo: json['tipo'] as String?,
      fecha: json['fecha'] == null
          ? null
          : DateTime.parse(json['fecha'] as String),
      estadoAI: json['estadoAI'] as String? ?? 'activo',
    );

Map<String, dynamic> _$$TransaccionImplToJson(_$TransaccionImpl instance) =>
    <String, dynamic>{
      'id_transaccion': instance.idTransaccion,
      'fk_id_usuario': instance.fkIdUsuario,
      'fk_id_vendedor': instance.fkIdVendedor,
      'fk_id_tienda': instance.fkIdTienda,
      'total': instance.total,
      'tipo': instance.tipo,
      'fecha': instance.fecha?.toIso8601String(),
      'estadoAI': instance.estadoAI,
    };
