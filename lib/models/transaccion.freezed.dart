// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'transaccion.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

Transaccion _$TransaccionFromJson(Map<String, dynamic> json) {
  return _Transaccion.fromJson(json);
}

/// @nodoc
mixin _$Transaccion {
  @JsonKey(name: 'id_transaccion')
  int get idTransaccion => throw _privateConstructorUsedError;
  @JsonKey(name: 'fk_id_usuario', nullable: true)
  int? get fkIdUsuario => throw _privateConstructorUsedError;
  @JsonKey(name: 'fk_id_vendedor', nullable: true)
  int? get fkIdVendedor => throw _privateConstructorUsedError;
  @JsonKey(name: 'fk_id_tienda', nullable: true)
  int? get fkIdTienda => throw _privateConstructorUsedError;
  @JsonKey(name: 'total', fromJson: _totalFromJson, nullable: true)
  double? get total => throw _privateConstructorUsedError;
  @JsonKey(name: 'tipo', nullable: true)
  String? get tipo => throw _privateConstructorUsedError;
  @JsonKey(name: 'fecha', nullable: true)
  DateTime? get fecha => throw _privateConstructorUsedError;
  @JsonKey(name: 'estadoAI', defaultValue: 'activo', nullable: true)
  String? get estadoAI => throw _privateConstructorUsedError;

  /// Serializes this Transaccion to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Transaccion
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TransaccionCopyWith<Transaccion> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TransaccionCopyWith<$Res> {
  factory $TransaccionCopyWith(
    Transaccion value,
    $Res Function(Transaccion) then,
  ) = _$TransaccionCopyWithImpl<$Res, Transaccion>;
  @useResult
  $Res call({
    @JsonKey(name: 'id_transaccion') int idTransaccion,
    @JsonKey(name: 'fk_id_usuario', nullable: true) int? fkIdUsuario,
    @JsonKey(name: 'fk_id_vendedor', nullable: true) int? fkIdVendedor,
    @JsonKey(name: 'fk_id_tienda', nullable: true) int? fkIdTienda,
    @JsonKey(name: 'total', fromJson: _totalFromJson, nullable: true)
    double? total,
    @JsonKey(name: 'tipo', nullable: true) String? tipo,
    @JsonKey(name: 'fecha', nullable: true) DateTime? fecha,
    @JsonKey(name: 'estadoAI', defaultValue: 'activo', nullable: true)
    String? estadoAI,
  });
}

/// @nodoc
class _$TransaccionCopyWithImpl<$Res, $Val extends Transaccion>
    implements $TransaccionCopyWith<$Res> {
  _$TransaccionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Transaccion
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? idTransaccion = null,
    Object? fkIdUsuario = freezed,
    Object? fkIdVendedor = freezed,
    Object? fkIdTienda = freezed,
    Object? total = freezed,
    Object? tipo = freezed,
    Object? fecha = freezed,
    Object? estadoAI = freezed,
  }) {
    return _then(
      _value.copyWith(
            idTransaccion: null == idTransaccion
                ? _value.idTransaccion
                : idTransaccion // ignore: cast_nullable_to_non_nullable
                      as int,
            fkIdUsuario: freezed == fkIdUsuario
                ? _value.fkIdUsuario
                : fkIdUsuario // ignore: cast_nullable_to_non_nullable
                      as int?,
            fkIdVendedor: freezed == fkIdVendedor
                ? _value.fkIdVendedor
                : fkIdVendedor // ignore: cast_nullable_to_non_nullable
                      as int?,
            fkIdTienda: freezed == fkIdTienda
                ? _value.fkIdTienda
                : fkIdTienda // ignore: cast_nullable_to_non_nullable
                      as int?,
            total: freezed == total
                ? _value.total
                : total // ignore: cast_nullable_to_non_nullable
                      as double?,
            tipo: freezed == tipo
                ? _value.tipo
                : tipo // ignore: cast_nullable_to_non_nullable
                      as String?,
            fecha: freezed == fecha
                ? _value.fecha
                : fecha // ignore: cast_nullable_to_non_nullable
                      as DateTime?,
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
abstract class _$$TransaccionImplCopyWith<$Res>
    implements $TransaccionCopyWith<$Res> {
  factory _$$TransaccionImplCopyWith(
    _$TransaccionImpl value,
    $Res Function(_$TransaccionImpl) then,
  ) = __$$TransaccionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @JsonKey(name: 'id_transaccion') int idTransaccion,
    @JsonKey(name: 'fk_id_usuario', nullable: true) int? fkIdUsuario,
    @JsonKey(name: 'fk_id_vendedor', nullable: true) int? fkIdVendedor,
    @JsonKey(name: 'fk_id_tienda', nullable: true) int? fkIdTienda,
    @JsonKey(name: 'total', fromJson: _totalFromJson, nullable: true)
    double? total,
    @JsonKey(name: 'tipo', nullable: true) String? tipo,
    @JsonKey(name: 'fecha', nullable: true) DateTime? fecha,
    @JsonKey(name: 'estadoAI', defaultValue: 'activo', nullable: true)
    String? estadoAI,
  });
}

/// @nodoc
class __$$TransaccionImplCopyWithImpl<$Res>
    extends _$TransaccionCopyWithImpl<$Res, _$TransaccionImpl>
    implements _$$TransaccionImplCopyWith<$Res> {
  __$$TransaccionImplCopyWithImpl(
    _$TransaccionImpl _value,
    $Res Function(_$TransaccionImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of Transaccion
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? idTransaccion = null,
    Object? fkIdUsuario = freezed,
    Object? fkIdVendedor = freezed,
    Object? fkIdTienda = freezed,
    Object? total = freezed,
    Object? tipo = freezed,
    Object? fecha = freezed,
    Object? estadoAI = freezed,
  }) {
    return _then(
      _$TransaccionImpl(
        idTransaccion: null == idTransaccion
            ? _value.idTransaccion
            : idTransaccion // ignore: cast_nullable_to_non_nullable
                  as int,
        fkIdUsuario: freezed == fkIdUsuario
            ? _value.fkIdUsuario
            : fkIdUsuario // ignore: cast_nullable_to_non_nullable
                  as int?,
        fkIdVendedor: freezed == fkIdVendedor
            ? _value.fkIdVendedor
            : fkIdVendedor // ignore: cast_nullable_to_non_nullable
                  as int?,
        fkIdTienda: freezed == fkIdTienda
            ? _value.fkIdTienda
            : fkIdTienda // ignore: cast_nullable_to_non_nullable
                  as int?,
        total: freezed == total
            ? _value.total
            : total // ignore: cast_nullable_to_non_nullable
                  as double?,
        tipo: freezed == tipo
            ? _value.tipo
            : tipo // ignore: cast_nullable_to_non_nullable
                  as String?,
        fecha: freezed == fecha
            ? _value.fecha
            : fecha // ignore: cast_nullable_to_non_nullable
                  as DateTime?,
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
class _$TransaccionImpl implements _Transaccion {
  const _$TransaccionImpl({
    @JsonKey(name: 'id_transaccion') required this.idTransaccion,
    @JsonKey(name: 'fk_id_usuario', nullable: true) this.fkIdUsuario,
    @JsonKey(name: 'fk_id_vendedor', nullable: true) this.fkIdVendedor,
    @JsonKey(name: 'fk_id_tienda', nullable: true) this.fkIdTienda,
    @JsonKey(name: 'total', fromJson: _totalFromJson, nullable: true)
    this.total,
    @JsonKey(name: 'tipo', nullable: true) this.tipo,
    @JsonKey(name: 'fecha', nullable: true) this.fecha,
    @JsonKey(name: 'estadoAI', defaultValue: 'activo', nullable: true)
    this.estadoAI,
  });

  factory _$TransaccionImpl.fromJson(Map<String, dynamic> json) =>
      _$$TransaccionImplFromJson(json);

  @override
  @JsonKey(name: 'id_transaccion')
  final int idTransaccion;
  @override
  @JsonKey(name: 'fk_id_usuario', nullable: true)
  final int? fkIdUsuario;
  @override
  @JsonKey(name: 'fk_id_vendedor', nullable: true)
  final int? fkIdVendedor;
  @override
  @JsonKey(name: 'fk_id_tienda', nullable: true)
  final int? fkIdTienda;
  @override
  @JsonKey(name: 'total', fromJson: _totalFromJson, nullable: true)
  final double? total;
  @override
  @JsonKey(name: 'tipo', nullable: true)
  final String? tipo;
  @override
  @JsonKey(name: 'fecha', nullable: true)
  final DateTime? fecha;
  @override
  @JsonKey(name: 'estadoAI', defaultValue: 'activo', nullable: true)
  final String? estadoAI;

  @override
  String toString() {
    return 'Transaccion(idTransaccion: $idTransaccion, fkIdUsuario: $fkIdUsuario, fkIdVendedor: $fkIdVendedor, fkIdTienda: $fkIdTienda, total: $total, tipo: $tipo, fecha: $fecha, estadoAI: $estadoAI)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TransaccionImpl &&
            (identical(other.idTransaccion, idTransaccion) ||
                other.idTransaccion == idTransaccion) &&
            (identical(other.fkIdUsuario, fkIdUsuario) ||
                other.fkIdUsuario == fkIdUsuario) &&
            (identical(other.fkIdVendedor, fkIdVendedor) ||
                other.fkIdVendedor == fkIdVendedor) &&
            (identical(other.fkIdTienda, fkIdTienda) ||
                other.fkIdTienda == fkIdTienda) &&
            (identical(other.total, total) || other.total == total) &&
            (identical(other.tipo, tipo) || other.tipo == tipo) &&
            (identical(other.fecha, fecha) || other.fecha == fecha) &&
            (identical(other.estadoAI, estadoAI) ||
                other.estadoAI == estadoAI));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    idTransaccion,
    fkIdUsuario,
    fkIdVendedor,
    fkIdTienda,
    total,
    tipo,
    fecha,
    estadoAI,
  );

  /// Create a copy of Transaccion
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TransaccionImplCopyWith<_$TransaccionImpl> get copyWith =>
      __$$TransaccionImplCopyWithImpl<_$TransaccionImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TransaccionImplToJson(this);
  }
}

abstract class _Transaccion implements Transaccion {
  const factory _Transaccion({
    @JsonKey(name: 'id_transaccion') required final int idTransaccion,
    @JsonKey(name: 'fk_id_usuario', nullable: true) final int? fkIdUsuario,
    @JsonKey(name: 'fk_id_vendedor', nullable: true) final int? fkIdVendedor,
    @JsonKey(name: 'fk_id_tienda', nullable: true) final int? fkIdTienda,
    @JsonKey(name: 'total', fromJson: _totalFromJson, nullable: true)
    final double? total,
    @JsonKey(name: 'tipo', nullable: true) final String? tipo,
    @JsonKey(name: 'fecha', nullable: true) final DateTime? fecha,
    @JsonKey(name: 'estadoAI', defaultValue: 'activo', nullable: true)
    final String? estadoAI,
  }) = _$TransaccionImpl;

  factory _Transaccion.fromJson(Map<String, dynamic> json) =
      _$TransaccionImpl.fromJson;

  @override
  @JsonKey(name: 'id_transaccion')
  int get idTransaccion;
  @override
  @JsonKey(name: 'fk_id_usuario', nullable: true)
  int? get fkIdUsuario;
  @override
  @JsonKey(name: 'fk_id_vendedor', nullable: true)
  int? get fkIdVendedor;
  @override
  @JsonKey(name: 'fk_id_tienda', nullable: true)
  int? get fkIdTienda;
  @override
  @JsonKey(name: 'total', fromJson: _totalFromJson, nullable: true)
  double? get total;
  @override
  @JsonKey(name: 'tipo', nullable: true)
  String? get tipo;
  @override
  @JsonKey(name: 'fecha', nullable: true)
  DateTime? get fecha;
  @override
  @JsonKey(name: 'estadoAI', defaultValue: 'activo', nullable: true)
  String? get estadoAI;

  /// Create a copy of Transaccion
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TransaccionImplCopyWith<_$TransaccionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
