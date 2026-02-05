import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:appmova/models/producto.dart';

part 'detalle_transaccion.freezed.dart';
part 'detalle_transaccion.g.dart';

@freezed
class DetalleTransaccion with _$DetalleTransaccion {
  const factory DetalleTransaccion({
    @JsonKey(name: 'id_detalle') required int idDetalle,
    @JsonKey(name: 'fk_id_transaccion', nullable: true) int? fkIdTransaccion,
    @JsonKey(name: 'fk_id_producto', nullable: true) int? fkIdProducto,
    @JsonKey(name: 'cantidad', nullable: true) int? cantidad,
    @JsonKey(name: 'precio_unitario', nullable: true) double? precioUnitario,
    @JsonKey(name: 'precio_unitario_descuento', nullable: true) double? precioUnitarioDescuento,
    @JsonKey(name: 'subtotal', nullable: true) double? subtotal,
    @JsonKey(name: 'estadoAI', defaultValue: 'activo', nullable: true) String? estadoAI,
    @JsonKey(name: 'producto', nullable: true) Producto? producto,
  }) = _DetalleTransaccion;

  factory DetalleTransaccion.fromJson(Map<String, dynamic> json) => _$DetalleTransaccionFromJson(json);
}