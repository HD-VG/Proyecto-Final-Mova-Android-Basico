// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'producto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

Producto _$ProductoFromJson(Map<String, dynamic> json) {
  return _Producto.fromJson(json);
}

/// @nodoc
mixin _$Producto {
  @JsonKey(name: 'id_producto')
  int get idProducto => throw _privateConstructorUsedError;
  @JsonKey(name: 'nombre', nullable: true)
  String? get nombre => throw _privateConstructorUsedError;
  @JsonKey(name: 'sabor', nullable: true)
  String? get sabor => throw _privateConstructorUsedError;
  @JsonKey(name: 'precio_unitario', nullable: true)
  double? get precioUnitario => throw _privateConstructorUsedError;
  @JsonKey(name: 'url', nullable: true)
  String? get url => throw _privateConstructorUsedError;
  @JsonKey(name: 'tipo', nullable: true)
  String? get tipo => throw _privateConstructorUsedError;
  @JsonKey(name: 'stock', nullable: true)
  int? get stock => throw _privateConstructorUsedError;
  @JsonKey(name: 'estadoAI', nullable: true)
  String? get estadoAI => throw _privateConstructorUsedError;

  /// Serializes this Producto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Producto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ProductoCopyWith<Producto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductoCopyWith<$Res> {
  factory $ProductoCopyWith(Producto value, $Res Function(Producto) then) =
      _$ProductoCopyWithImpl<$Res, Producto>;
  @useResult
  $Res call({
    @JsonKey(name: 'id_producto') int idProducto,
    @JsonKey(name: 'nombre', nullable: true) String? nombre,
    @JsonKey(name: 'sabor', nullable: true) String? sabor,
    @JsonKey(name: 'precio_unitario', nullable: true) double? precioUnitario,
    @JsonKey(name: 'url', nullable: true) String? url,
    @JsonKey(name: 'tipo', nullable: true) String? tipo,
    @JsonKey(name: 'stock', nullable: true) int? stock,
    @JsonKey(name: 'estadoAI', nullable: true) String? estadoAI,
  });
}

/// @nodoc
class _$ProductoCopyWithImpl<$Res, $Val extends Producto>
    implements $ProductoCopyWith<$Res> {
  _$ProductoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Producto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? idProducto = null,
    Object? nombre = freezed,
    Object? sabor = freezed,
    Object? precioUnitario = freezed,
    Object? url = freezed,
    Object? tipo = freezed,
    Object? stock = freezed,
    Object? estadoAI = freezed,
  }) {
    return _then(
      _value.copyWith(
            idProducto: null == idProducto
                ? _value.idProducto
                : idProducto // ignore: cast_nullable_to_non_nullable
                      as int,
            nombre: freezed == nombre
                ? _value.nombre
                : nombre // ignore: cast_nullable_to_non_nullable
                      as String?,
            sabor: freezed == sabor
                ? _value.sabor
                : sabor // ignore: cast_nullable_to_non_nullable
                      as String?,
            precioUnitario: freezed == precioUnitario
                ? _value.precioUnitario
                : precioUnitario // ignore: cast_nullable_to_non_nullable
                      as double?,
            url: freezed == url
                ? _value.url
                : url // ignore: cast_nullable_to_non_nullable
                      as String?,
            tipo: freezed == tipo
                ? _value.tipo
                : tipo // ignore: cast_nullable_to_non_nullable
                      as String?,
            stock: freezed == stock
                ? _value.stock
                : stock // ignore: cast_nullable_to_non_nullable
                      as int?,
            estadoAI: freezed == estadoAI
                ? _value.estadoAI
                : estadoAI // ignore: cast_nullable_to_non_nullable
                      as String?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$ProductoImplCopyWith<$Res>
    implements $ProductoCopyWith<$Res> {
  factory _$$ProductoImplCopyWith(
    _$ProductoImpl value,
    $Res Function(_$ProductoImpl) then,
  ) = __$$ProductoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @JsonKey(name: 'id_producto') int idProducto,
    @JsonKey(name: 'nombre', nullable: true) String? nombre,
    @JsonKey(name: 'sabor', nullable: true) String? sabor,
    @JsonKey(name: 'precio_unitario', nullable: true) double? precioUnitario,
    @JsonKey(name: 'url', nullable: true) String? url,
    @JsonKey(name: 'tipo', nullable: true) String? tipo,
    @JsonKey(name: 'stock', nullable: true) int? stock,
    @JsonKey(name: 'estadoAI', nullable: true) String? estadoAI,
  });
}

/// @nodoc
class __$$ProductoImplCopyWithImpl<$Res>
    extends _$ProductoCopyWithImpl<$Res, _$ProductoImpl>
    implements _$$ProductoImplCopyWith<$Res> {
  __$$ProductoImplCopyWithImpl(
    _$ProductoImpl _value,
    $Res Function(_$ProductoImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of Producto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? idProducto = null,
    Object? nombre = freezed,
    Object? sabor = freezed,
    Object? precioUnitario = freezed,
    Object? url = freezed,
    Object? tipo = freezed,
    Object? stock = freezed,
    Object? estadoAI = freezed,
  }) {
    return _then(
      _$ProductoImpl(
        idProducto: null == idProducto
            ? _value.idProducto
            : idProducto // ignore: cast_nullable_to_non_nullable
                  as int,
        nombre: freezed == nombre
            ? _value.nombre
            : nombre // ignore: cast_nullable_to_non_nullable
                  as String?,
        sabor: freezed == sabor
            ? _value.sabor
            : sabor // ignore: cast_nullable_to_non_nullable
                  as String?,
        precioUnitario: freezed == precioUnitario
            ? _value.precioUnitario
            : precioUnitario // ignore: cast_nullable_to_non_nullable
                  as double?,
        url: freezed == url
            ? _value.url
            : url // ignore: cast_nullable_to_non_nullable
                  as String?,
        tipo: freezed == tipo
            ? _value.tipo
            : tipo // ignore: cast_nullable_to_non_nullable
                  as String?,
        stock: freezed == stock
            ? _value.stock
            : stock // ignore: cast_nullable_to_non_nullable
                  as int?,
        estadoAI: freezed == estadoAI
            ? _value.estadoAI
            : estadoAI // ignore: cast_nullable_to_non_nullable
                  as String?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$ProductoImpl implements _Producto {
  const _$ProductoImpl({
    @JsonKey(name: 'id_producto') required this.idProducto,
    @JsonKey(name: 'nombre', nullable: true) this.nombre,
    @JsonKey(name: 'sabor', nullable: true) this.sabor,
    @JsonKey(name: 'precio_unitario', nullable: true) this.precioUnitario,
    @JsonKey(name: 'url', nullable: true) this.url,
    @JsonKey(name: 'tipo', nullable: true) this.tipo,
    @JsonKey(name: 'stock', nullable: true) this.stock,
    @JsonKey(name: 'estadoAI', nullable: true) this.estadoAI,
  });

  factory _$ProductoImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProductoImplFromJson(json);

  @override
  @JsonKey(name: 'id_producto')
  final int idProducto;
  @override
  @JsonKey(name: 'nombre', nullable: true)
  final String? nombre;
  @override
  @JsonKey(name: 'sabor', nullable: true)
  final String? sabor;
  @override
  @JsonKey(name: 'precio_unitario', nullable: true)
  final double? precioUnitario;
  @override
  @JsonKey(name: 'url', nullable: true)
  final String? url;
  @override
  @JsonKey(name: 'tipo', nullable: true)
  final String? tipo;
  @override
  @JsonKey(name: 'stock', nullable: true)
  final int? stock;
  @override
  @JsonKey(name: 'estadoAI', nullable: true)
  final String? estadoAI;

  @override
  String toString() {
    return 'Producto(idProducto: $idProducto, nombre: $nombre, sabor: $sabor, precioUnitario: $precioUnitario, url: $url, tipo: $tipo, stock: $stock, estadoAI: $estadoAI)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductoImpl &&
            (identical(other.idProducto, idProducto) ||
                other.idProducto == idProducto) &&
            (identical(other.nombre, nombre) || other.nombre == nombre) &&
            (identical(other.sabor, sabor) || other.sabor == sabor) &&
            (identical(other.precioUnitario, precioUnitario) ||
                other.precioUnitario == precioUnitario) &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.tipo, tipo) || other.tipo == tipo) &&
            (identical(other.stock, stock) || other.stock == stock) &&
            (identical(other.estadoAI, estadoAI) ||
                other.estadoAI == estadoAI));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    idProducto,
    nombre,
    sabor,
    precioUnitario,
    url,
    tipo,
    stock,
    estadoAI,
  );

  /// Create a copy of Producto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductoImplCopyWith<_$ProductoImpl> get copyWith =>
      __$$ProductoImplCopyWithImpl<_$ProductoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProductoImplToJson(this);
  }
}

abstract class _Producto implements Producto {
  const factory _Producto({
    @JsonKey(name: 'id_producto') required final int idProducto,
    @JsonKey(name: 'nombre', nullable: true) final String? nombre,
    @JsonKey(name: 'sabor', nullable: true) final String? sabor,
    @JsonKey(name: 'precio_unitario', nullable: true)
    final double? precioUnitario,
    @JsonKey(name: 'url', nullable: true) final String? url,
    @JsonKey(name: 'tipo', nullable: true) final String? tipo,
    @JsonKey(name: 'stock', nullable: true) final int? stock,
    @JsonKey(name: 'estadoAI', nullable: true) final String? estadoAI,
  }) = _$ProductoImpl;

  factory _Producto.fromJson(Map<String, dynamic> json) =
      _$ProductoImpl.fromJson;

  @override
  @JsonKey(name: 'id_producto')
  int get idProducto;
  @override
  @JsonKey(name: 'nombre', nullable: true)
  String? get nombre;
  @override
  @JsonKey(name: 'sabor', nullable: true)
  String? get sabor;
  @override
  @JsonKey(name: 'precio_unitario', nullable: true)
  double? get precioUnitario;
  @override
  @JsonKey(name: 'url', nullable: true)
  String? get url;
  @override
  @JsonKey(name: 'tipo', nullable: true)
  String? get tipo;
  @override
  @JsonKey(name: 'stock', nullable: true)
  int? get stock;
  @override
  @JsonKey(name: 'estadoAI', nullable: true)
  String? get estadoAI;

  /// Create a copy of Producto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProductoImplCopyWith<_$ProductoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
