import 'package:freezed_annotation/freezed_annotation.dart';

part 'transaccion.freezed.dart';
part 'transaccion.g.dart';

@freezed
class Transaccion with _$Transaccion {
  const factory Transaccion({
    @JsonKey(name: 'id_transaccion') required int idTransaccion,
    @JsonKey(name: 'fk_id_usuario', nullable: true) int? fkIdUsuario,
    @JsonKey(name: 'fk_id_vendedor', nullable: true) int? fkIdVendedor,
    @JsonKey(name: 'fk_id_tienda', nullable: true) int? fkIdTienda,
    @JsonKey(
      name: 'total',
      fromJson: _totalFromJson,
      nullable: true,
    ) double? total,
    @JsonKey(name: 'tipo', nullable: true) String? tipo,
    @JsonKey(name: 'fecha', nullable: true) DateTime? fecha,
    @JsonKey(name: 'estadoAI', defaultValue: 'activo', nullable: true) String? estadoAI,
  }) = _Transaccion;

  factory Transaccion.fromJson(Map<String, dynamic> json) => _$TransaccionFromJson(json);
}

// Función personalizada para convertir total de String a double
double? _totalFromJson(dynamic value) {
  if (value == null) return null;
  if (value is String) {
    return double.parse(value);
  }
  return value.toDouble();
}