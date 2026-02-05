import 'package:freezed_annotation/freezed_annotation.dart';

part 'descuento.freezed.dart';
part 'descuento.g.dart';

@freezed
class Descuento with _$Descuento {
  const factory Descuento({
    @JsonKey(name: 'id_descuento') required int idDescuento,
    @JsonKey(name: 'fk_id_producto', nullable: true) int? fkIdProducto,
    @JsonKey(name: 'porcentaje', nullable: true) String? porcentaje,
    @JsonKey(name: 'fecha_inicio', nullable: true) DateTime? fechaInicio,
    @JsonKey(name: 'fecha_fin', nullable: true) DateTime? fechaFin,
    @JsonKey(name: 'estadoAI', nullable: true) String? estadoAI,
  }) = _Descuento;

  factory Descuento.fromJson(Map<String, dynamic> json) => _$DescuentoFromJson(json);
}