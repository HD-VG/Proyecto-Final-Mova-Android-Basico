// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'descuento.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

Descuento _$DescuentoFromJson(Map<String, dynamic> json) {
  return _Descuento.fromJson(json);
}

/// @nodoc
mixin _$Descuento {
  @JsonKey(name: 'id_descuento')
  int get idDescuento => throw _privateConstructorUsedError;
  @JsonKey(name: 'fk_id_producto', nullable: true)
  int? get fkIdProducto => throw _privateConstructorUsedError;
  @JsonKey(name: 'porcentaje', nullable: true)
  String? get porcentaje => throw _privateConstructorUsedError;
  @JsonKey(name: 'fecha_inicio', nullable: true)
  DateTime? get fechaInicio => throw _privateConstructorUsedError;
  @JsonKey(name: 'fecha_fin', nullable: true)
  DateTime? get fechaFin => throw _privateConstructorUsedError;
  @JsonKey(name: 'estadoAI', nullable: true)
  String? get estadoAI => throw _privateConstructorUsedError;

  /// Serializes this Descuento to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Descuento
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DescuentoCopyWith<Descuento> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DescuentoCopyWith<$Res> {
  factory $DescuentoCopyWith(Descuento value, $Res Function(Descuento) then) =
      _$DescuentoCopyWithImpl<$Res, Descuento>;
  @useResult
  $Res call({
    @JsonKey(name: 'id_descuento') int idDescuento,
    @JsonKey(name: 'fk_id_producto', nullable: true) int? fkIdProducto,
    @JsonKey(name: 'porcentaje', nullable: true) String? porcentaje,
    @JsonKey(name: 'fecha_inicio', nullable: true) DateTime? fechaInicio,
    @JsonKey(name: 'fecha_fin', nullable: true) DateTime? fechaFin,
    @JsonKey(name: 'estadoAI', nullable: true) String? estadoAI,
  });
}

/// @nodoc
class _$DescuentoCopyWithImpl<$Res, $Val extends Descuento>
    implements $DescuentoCopyWith<$Res> {
  _$DescuentoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Descuento
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? idDescuento = null,
    Object? fkIdProducto = freezed,
    Object? porcentaje = freezed,
    Object? fechaInicio = freezed,
    Object? fechaFin = freezed,
    Object? estadoAI = freezed,
  }) {
    return _then(
      _value.copyWith(
            idDescuento: null == idDescuento
                ? _value.idDescuento
                : idDescuento // ignore: cast_nullable_to_non_nullable
                      as int,
            fkIdProducto: freezed == fkIdProducto
                ? _value.fkIdProducto
                : fkIdProducto // ignore: cast_nullable_to_non_nullable
                      as int?,
            porcentaje: freezed == porcentaje
                ? _value.porcentaje
                : porcentaje // ignore: cast_nullable_to_non_nullable
                      as String?,
            fechaInicio: freezed == fechaInicio
                ? _value.fechaInicio
                : fechaInicio // ignore: cast_nullable_to_non_nullable
                      as DateTime?,
            fechaFin: freezed == fechaFin
                ? _value.fechaFin
                : fechaFin // ignore: cast_nullable_to_non_nullable
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
abstract class _$$DescuentoImplCopyWith<$Res>
    implements $DescuentoCopyWith<$Res> {
  factory _$$DescuentoImplCopyWith(
    _$DescuentoImpl value,
    $Res Function(_$DescuentoImpl) then,
  ) = __$$DescuentoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @JsonKey(name: 'id_descuento') int idDescuento,
    @JsonKey(name: 'fk_id_producto', nullable: true) int? fkIdProducto,
    @JsonKey(name: 'porcentaje', nullable: true) String? porcentaje,
    @JsonKey(name: 'fecha_inicio', nullable: true) DateTime? fechaInicio,
    @JsonKey(name: 'fecha_fin', nullable: true) DateTime? fechaFin,
    @JsonKey(name: 'estadoAI', nullable: true) String? estadoAI,
  });
}

/// @nodoc
class __$$DescuentoImplCopyWithImpl<$Res>
    extends _$DescuentoCopyWithImpl<$Res, _$DescuentoImpl>
    implements _$$DescuentoImplCopyWith<$Res> {
  __$$DescuentoImplCopyWithImpl(
    _$DescuentoImpl _value,
    $Res Function(_$DescuentoImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of Descuento
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? idDescuento = null,
    Object? fkIdProducto = freezed,
    Object? porcentaje = freezed,
    Object? fechaInicio = freezed,
    Object? fechaFin = freezed,
    Object? estadoAI = freezed,
  }) {
    return _then(
      _$DescuentoImpl(
        idDescuento: null == idDescuento
            ? _value.idDescuento
            : idDescuento // ignore: cast_nullable_to_non_nullable
                  as int,
        fkIdProducto: freezed == fkIdProducto
            ? _value.fkIdProducto
            : fkIdProducto // ignore: cast_nullable_to_non_nullable
                  as int?,
        porcentaje: freezed == porcentaje
            ? _value.porcentaje
            : porcentaje // ignore: cast_nullable_to_non_nullable
                  as String?,
        fechaInicio: freezed == fechaInicio
            ? _value.fechaInicio
            : fechaInicio // ignore: cast_nullable_to_non_nullable
                  as DateTime?,
        fechaFin: freezed == fechaFin
            ? _value.fechaFin
            : fechaFin // ignore: cast_nullable_to_non_nullable
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
class _$DescuentoImpl implements _Descuento {
  const _$DescuentoImpl({
    @JsonKey(name: 'id_descuento') required this.idDescuento,
    @JsonKey(name: 'fk_id_producto', nullable: true) this.fkIdProducto,
    @JsonKey(name: 'porcentaje', nullable: true) this.porcentaje,
    @JsonKey(name: 'fecha_inicio', nullable: true) this.fechaInicio,
    @JsonKey(name: 'fecha_fin', nullable: true) this.fechaFin,
    @JsonKey(name: 'estadoAI', nullable: true) this.estadoAI,
  });

  factory _$DescuentoImpl.fromJson(Map<String, dynamic> json) =>
      _$$DescuentoImplFromJson(json);

  @override
  @JsonKey(name: 'id_descuento')
  final int idDescuento;
  @override
  @JsonKey(name: 'fk_id_producto', nullable: true)
  final int? fkIdProducto;
  @override
  @JsonKey(name: 'porcentaje', nullable: true)
  final String? porcentaje;
  @override
  @JsonKey(name: 'fecha_inicio', nullable: true)
  final DateTime? fechaInicio;
  @override
  @JsonKey(name: 'fecha_fin', nullable: true)
  final DateTime? fechaFin;
  @override
  @JsonKey(name: 'estadoAI', nullable: true)
  final String? estadoAI;

  @override
  String toString() {
    return 'Descuento(idDescuento: $idDescuento, fkIdProducto: $fkIdProducto, porcentaje: $porcentaje, fechaInicio: $fechaInicio, fechaFin: $fechaFin, estadoAI: $estadoAI)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DescuentoImpl &&
            (identical(other.idDescuento, idDescuento) ||
                other.idDescuento == idDescuento) &&
            (identical(other.fkIdProducto, fkIdProducto) ||
                other.fkIdProducto == fkIdProducto) &&
            (identical(other.porcentaje, porcentaje) ||
                other.porcentaje == porcentaje) &&
            (identical(other.fechaInicio, fechaInicio) ||
                other.fechaInicio == fechaInicio) &&
            (identical(other.fechaFin, fechaFin) ||
                other.fechaFin == fechaFin) &&
            (identical(other.estadoAI, estadoAI) ||
                other.estadoAI == estadoAI));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    idDescuento,
    fkIdProducto,
    porcentaje,
    fechaInicio,
    fechaFin,
    estadoAI,
  );

  /// Create a copy of Descuento
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DescuentoImplCopyWith<_$DescuentoImpl> get copyWith =>
      __$$DescuentoImplCopyWithImpl<_$DescuentoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DescuentoImplToJson(this);
  }
}

abstract class _Descuento implements Descuento {
  const factory _Descuento({
    @JsonKey(name: 'id_descuento') required final int idDescuento,
    @JsonKey(name: 'fk_id_producto', nullable: true) final int? fkIdProducto,
    @JsonKey(name: 'porcentaje', nullable: true) final String? porcentaje,
    @JsonKey(name: 'fecha_inicio', nullable: true) final DateTime? fechaInicio,
    @JsonKey(name: 'fecha_fin', nullable: true) final DateTime? fechaFin,
    @JsonKey(name: 'estadoAI', nullable: true) final String? estadoAI,
  }) = _$DescuentoImpl;

  factory _Descuento.fromJson(Map<String, dynamic> json) =
      _$DescuentoImpl.fromJson;

  @override
  @JsonKey(name: 'id_descuento')
  int get idDescuento;
  @override
  @JsonKey(name: 'fk_id_producto', nullable: true)
  int? get fkIdProducto;
  @override
  @JsonKey(name: 'porcentaje', nullable: true)
  String? get porcentaje;
  @override
  @JsonKey(name: 'fecha_inicio', nullable: true)
  DateTime? get fechaInicio;
  @override
  @JsonKey(name: 'fecha_fin', nullable: true)
  DateTime? get fechaFin;
  @override
  @JsonKey(name: 'estadoAI', nullable: true)
  String? get estadoAI;

  /// Create a copy of Descuento
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DescuentoImplCopyWith<_$DescuentoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
