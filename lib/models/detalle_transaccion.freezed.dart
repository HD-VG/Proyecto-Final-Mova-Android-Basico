// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'detalle_transaccion.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

DetalleTransaccion _$DetalleTransaccionFromJson(Map<String, dynamic> json) {
  return _DetalleTransaccion.fromJson(json);
}

/// @nodoc
mixin _$DetalleTransaccion {
  @JsonKey(name: 'id_detalle')
  int get idDetalle => throw _privateConstructorUsedError;
  @JsonKey(name: 'fk_id_transaccion', nullable: true)
  int? get fkIdTransaccion => throw _privateConstructorUsedError;
  @JsonKey(name: 'fk_id_producto', nullable: true)
  int? get fkIdProducto => throw _privateConstructorUsedError;
  @JsonKey(name: 'cantidad', nullable: true)
  int? get cantidad => throw _privateConstructorUsedError;
  @JsonKey(name: 'precio_unitario', nullable: true)
  double? get precioUnitario => throw _privateConstructorUsedError;
  @JsonKey(name: 'precio_unitario_descuento', nullable: true)
  double? get precioUnitarioDescuento => throw _privateConstructorUsedError;
  @JsonKey(name: 'subtotal', nullable: true)
  double? get subtotal => throw _privateConstructorUsedError;
  @JsonKey(name: 'estadoAI', defaultValue: 'activo', nullable: true)
  String? get estadoAI => throw _privateConstructorUsedError;
  @JsonKey(name: 'producto', nullable: true)
  Producto? get producto => throw _privateConstructorUsedError;

  /// Serializes this DetalleTransaccion to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of DetalleTransaccion
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DetalleTransaccionCopyWith<DetalleTransaccion> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DetalleTransaccionCopyWith<$Res> {
  factory $DetalleTransaccionCopyWith(
    DetalleTransaccion value,
    $Res Function(DetalleTransaccion) then,
  ) = _$DetalleTransaccionCopyWithImpl<$Res, DetalleTransaccion>;
  @useResult
  $Res call({
    @JsonKey(name: 'id_detalle') int idDetalle,
    @JsonKey(name: 'fk_id_transaccion', nullable: true) int? fkIdTransaccion,
    @JsonKey(name: 'fk_id_producto', nullable: true) int? fkIdProducto,
    @JsonKey(name: 'cantidad', nullable: true) int? cantidad,
    @JsonKey(name: 'precio_unitario', nullable: true) double? precioUnitario,
    @JsonKey(name: 'precio_unitario_descuento', nullable: true)
    double? precioUnitarioDescuento,
    @JsonKey(name: 'subtotal', nullable: true) double? subtotal,
    @JsonKey(name: 'estadoAI', defaultValue: 'activo', nullable: true)
    String? estadoAI,
    @JsonKey(name: 'producto', nullable: true) Producto? producto,
  });

  $ProductoCopyWith<$Res>? get producto;
}

/// @nodoc
class _$DetalleTransaccionCopyWithImpl<$Res, $Val extends DetalleTransaccion>
    implements $DetalleTransaccionCopyWith<$Res> {
  _$DetalleTransaccionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DetalleTransaccion
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? idDetalle = null,
    Object? fkIdTransaccion = freezed,
    Object? fkIdProducto = freezed,
    Object? cantidad = freezed,
    Object? precioUnitario = freezed,
    Object? precioUnitarioDescuento = freezed,
    Object? subtotal = freezed,
    Object? estadoAI = freezed,
    Object? producto = freezed,
  }) {
    return _then(
      _value.copyWith(
            idDetalle: null == idDetalle
                ? _value.idDetalle
                : idDetalle // ignore: cast_nullable_to_non_nullable
                      as int,
            fkIdTransaccion: freezed == fkIdTransaccion
                ? _value.fkIdTransaccion
                : fkIdTransaccion // ignore: cast_nullable_to_non_nullable
                      as int?,
            fkIdProducto: freezed == fkIdProducto
                ? _value.fkIdProducto
                : fkIdProducto // ignore: cast_nullable_to_non_nullable
                      as int?,
            cantidad: freezed == cantidad
                ? _value.cantidad
                : cantidad // ignore: cast_nullable_to_non_nullable
                      as int?,
            precioUnitario: freezed == precioUnitario
                ? _value.precioUnitario
                : precioUnitario // ignore: cast_nullable_to_non_nullable
                      as double?,
            precioUnitarioDescuento: freezed == precioUnitarioDescuento
                ? _value.precioUnitarioDescuento
                : precioUnitarioDescuento // ignore: cast_nullable_to_non_nullable
                      as double?,
            subtotal: freezed == subtotal
                ? _value.subtotal
                : subtotal // ignore: cast_nullable_to_non_nullable
                      as double?,
            estadoAI: freezed == estadoAI
                ? _value.estadoAI
                : estadoAI // ignore: cast_nullable_to_non_nullable
                      as String?,
            producto: freezed == producto
                ? _value.producto
                : producto // ignore: cast_nullable_to_non_nullable
                      as Producto?,
          )
          as $Val,
    );
  }

  /// Create a copy of DetalleTransaccion
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ProductoCopyWith<$Res>? get producto {
    if (_value.producto == null) {
      return null;
    }

    return $ProductoCopyWith<$Res>(_value.producto!, (value) {
      return _then(_value.copyWith(producto: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$DetalleTransaccionImplCopyWith<$Res>
    implements $DetalleTransaccionCopyWith<$Res> {
  factory _$$DetalleTransaccionImplCopyWith(
    _$DetalleTransaccionImpl value,
    $Res Function(_$DetalleTransaccionImpl) then,
  ) = __$$DetalleTransaccionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @JsonKey(name: 'id_detalle') int idDetalle,
    @JsonKey(name: 'fk_id_transaccion', nullable: true) int? fkIdTransaccion,
    @JsonKey(name: 'fk_id_producto', nullable: true) int? fkIdProducto,
    @JsonKey(name: 'cantidad', nullable: true) int? cantidad,
    @JsonKey(name: 'precio_unitario', nullable: true) double? precioUnitario,
    @JsonKey(name: 'precio_unitario_descuento', nullable: true)
    double? precioUnitarioDescuento,
    @JsonKey(name: 'subtotal', nullable: true) double? subtotal,
    @JsonKey(name: 'estadoAI', defaultValue: 'activo', nullable: true)
    String? estadoAI,
    @JsonKey(name: 'producto', nullable: true) Producto? producto,
  });

  @override
  $ProductoCopyWith<$Res>? get producto;
}

/// @nodoc
class __$$DetalleTransaccionImplCopyWithImpl<$Res>
    extends _$DetalleTransaccionCopyWithImpl<$Res, _$DetalleTransaccionImpl>
    implements _$$DetalleTransaccionImplCopyWith<$Res> {
  __$$DetalleTransaccionImplCopyWithImpl(
    _$DetalleTransaccionImpl _value,
    $Res Function(_$DetalleTransaccionImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of DetalleTransaccion
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? idDetalle = null,
    Object? fkIdTransaccion = freezed,
    Object? fkIdProducto = freezed,
    Object? cantidad = freezed,
    Object? precioUnitario = freezed,
    Object? precioUnitarioDescuento = freezed,
    Object? subtotal = freezed,
    Object? estadoAI = freezed,
    Object? producto = freezed,
  }) {
    return _then(
      _$DetalleTransaccionImpl(
        idDetalle: null == idDetalle
            ? _value.idDetalle
            : idDetalle // ignore: cast_nullable_to_non_nullable
                  as int,
        fkIdTransaccion: freezed == fkIdTransaccion
            ? _value.fkIdTransaccion
            : fkIdTransaccion // ignore: cast_nullable_to_non_nullable
                  as int?,
        fkIdProducto: freezed == fkIdProducto
            ? _value.fkIdProducto
            : fkIdProducto // ignore: cast_nullable_to_non_nullable
                  as int?,
        cantidad: freezed == cantidad
            ? _value.cantidad
            : cantidad // ignore: cast_nullable_to_non_nullable
                  as int?,
        precioUnitario: freezed == precioUnitario
            ? _value.precioUnitario
            : precioUnitario // ignore: cast_nullable_to_non_nullable
                  as double?,
        precioUnitarioDescuento: freezed == precioUnitarioDescuento
            ? _value.precioUnitarioDescuento
            : precioUnitarioDescuento // ignore: cast_nullable_to_non_nullable
                  as double?,
        subtotal: freezed == subtotal
            ? _value.subtotal
            : subtotal // ignore: cast_nullable_to_non_nullable
                  as double?,
        estadoAI: freezed == estadoAI
            ? _value.estadoAI
            : estadoAI // ignore: cast_nullable_to_non_nullable
                  as String?,
        producto: freezed == producto
            ? _value.producto
            : producto // ignore: cast_nullable_to_non_nullable
                  as Producto?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$DetalleTransaccionImpl implements _DetalleTransaccion {
  const _$DetalleTransaccionImpl({
    @JsonKey(name: 'id_detalle') required this.idDetalle,
    @JsonKey(name: 'fk_id_transaccion', nullable: true) this.fkIdTransaccion,
    @JsonKey(name: 'fk_id_producto', nullable: true) this.fkIdProducto,
    @JsonKey(name: 'cantidad', nullable: true) this.cantidad,
    @JsonKey(name: 'precio_unitario', nullable: true) this.precioUnitario,
    @JsonKey(name: 'precio_unitario_descuento', nullable: true)
    this.precioUnitarioDescuento,
    @JsonKey(name: 'subtotal', nullable: true) this.subtotal,
    @JsonKey(name: 'estadoAI', defaultValue: 'activo', nullable: true)
    this.estadoAI,
    @JsonKey(name: 'producto', nullable: true) this.producto,
  });

  factory _$DetalleTransaccionImpl.fromJson(Map<String, dynamic> json) =>
      _$$DetalleTransaccionImplFromJson(json);

  @override
  @JsonKey(name: 'id_detalle')
  final int idDetalle;
  @override
  @JsonKey(name: 'fk_id_transaccion', nullable: true)
  final int? fkIdTransaccion;
  @override
  @JsonKey(name: 'fk_id_producto', nullable: true)
  final int? fkIdProducto;
  @override
  @JsonKey(name: 'cantidad', nullable: true)
  final int? cantidad;
  @override
  @JsonKey(name: 'precio_unitario', nullable: true)
  final double? precioUnitario;
  @override
  @JsonKey(name: 'precio_unitario_descuento', nullable: true)
  final double? precioUnitarioDescuento;
  @override
  @JsonKey(name: 'subtotal', nullable: true)
  final double? subtotal;
  @override
  @JsonKey(name: 'estadoAI', defaultValue: 'activo', nullable: true)
  final String? estadoAI;
  @override
  @JsonKey(name: 'producto', nullable: true)
  final Producto? producto;

  @override
  String toString() {
    return 'DetalleTransaccion(idDetalle: $idDetalle, fkIdTransaccion: $fkIdTransaccion, fkIdProducto: $fkIdProducto, cantidad: $cantidad, precioUnitario: $precioUnitario, precioUnitarioDescuento: $precioUnitarioDescuento, subtotal: $subtotal, estadoAI: $estadoAI, producto: $producto)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DetalleTransaccionImpl &&
            (identical(other.idDetalle, idDetalle) ||
                other.idDetalle == idDetalle) &&
            (identical(other.fkIdTransaccion, fkIdTransaccion) ||
                other.fkIdTransaccion == fkIdTransaccion) &&
            (identical(other.fkIdProducto, fkIdProducto) ||
                other.fkIdProducto == fkIdProducto) &&
            (identical(other.cantidad, cantidad) ||
                other.cantidad == cantidad) &&
            (identical(other.precioUnitario, precioUnitario) ||
                other.precioUnitario == precioUnitario) &&
            (identical(
                  other.precioUnitarioDescuento,
                  precioUnitarioDescuento,
                ) ||
                other.precioUnitarioDescuento == precioUnitarioDescuento) &&
            (identical(other.subtotal, subtotal) ||
                other.subtotal == subtotal) &&
            (identical(other.estadoAI, estadoAI) ||
                other.estadoAI == estadoAI) &&
            (identical(other.producto, producto) ||
                other.producto == producto));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    idDetalle,
    fkIdTransaccion,
    fkIdProducto,
    cantidad,
    precioUnitario,
    precioUnitarioDescuento,
    subtotal,
    estadoAI,
    producto,
  );

  /// Create a copy of DetalleTransaccion
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DetalleTransaccionImplCopyWith<_$DetalleTransaccionImpl> get copyWith =>
      __$$DetalleTransaccionImplCopyWithImpl<_$DetalleTransaccionImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$DetalleTransaccionImplToJson(this);
  }
}

abstract class _DetalleTransaccion implements DetalleTransaccion {
  const factory _DetalleTransaccion({
    @JsonKey(name: 'id_detalle') required final int idDetalle,
    @JsonKey(name: 'fk_id_transaccion', nullable: true)
    final int? fkIdTransaccion,
    @JsonKey(name: 'fk_id_producto', nullable: true) final int? fkIdProducto,
    @JsonKey(name: 'cantidad', nullable: true) final int? cantidad,
    @JsonKey(name: 'precio_unitario', nullable: true)
    final double? precioUnitario,
    @JsonKey(name: 'precio_unitario_descuento', nullable: true)
    final double? precioUnitarioDescuento,
    @JsonKey(name: 'subtotal', nullable: true) final double? subtotal,
    @JsonKey(name: 'estadoAI', defaultValue: 'activo', nullable: true)
    final String? estadoAI,
    @JsonKey(name: 'producto', nullable: true) final Producto? producto,
  }) = _$DetalleTransaccionImpl;

  factory _DetalleTransaccion.fromJson(Map<String, dynamic> json) =
      _$DetalleTransaccionImpl.fromJson;

  @override
  @JsonKey(name: 'id_detalle')
  int get idDetalle;
  @override
  @JsonKey(name: 'fk_id_transaccion', nullable: true)
  int? get fkIdTransaccion;
  @override
  @JsonKey(name: 'fk_id_producto', nullable: true)
  int? get fkIdProducto;
  @override
  @JsonKey(name: 'cantidad', nullable: true)
  int? get cantidad;
  @override
  @JsonKey(name: 'precio_unitario', nullable: true)
  double? get precioUnitario;
  @override
  @JsonKey(name: 'precio_unitario_descuento', nullable: true)
  double? get precioUnitarioDescuento;
  @override
  @JsonKey(name: 'subtotal', nullable: true)
  double? get subtotal;
  @override
  @JsonKey(name: 'estadoAI', defaultValue: 'activo', nullable: true)
  String? get estadoAI;
  @override
  @JsonKey(name: 'producto', nullable: true)
  Producto? get producto;

  /// Create a copy of DetalleTransaccion
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DetalleTransaccionImplCopyWith<_$DetalleTransaccionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
