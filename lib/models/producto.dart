import 'package:freezed_annotation/freezed_annotation.dart';

part 'producto.freezed.dart';
part 'producto.g.dart';

@freezed
class Producto with _$Producto {
  const factory Producto({
    @JsonKey(name: 'id_producto') required int idProducto,
    @JsonKey(name: 'nombre', nullable: true) String? nombre,
    @JsonKey(name: 'sabor', nullable: true) String? sabor,
    @JsonKey(name: 'precio_unitario', nullable: true) double? precioUnitario,
    @JsonKey(name: 'url', nullable: true) String? url,
    @JsonKey(name: 'tipo', nullable: true) String? tipo,
    @JsonKey(name: 'stock', nullable: true) int? stock,
    @JsonKey(name: 'estadoAI', nullable: true) String? estadoAI,
  }) = _Producto;

  factory Producto.fromJson(Map<String, dynamic> json) => _$ProductoFromJson(json);
}