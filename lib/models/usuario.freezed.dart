// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'usuario.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

Usuario _$UsuarioFromJson(Map<String, dynamic> json) {
  return _Usuario.fromJson(json);
}

/// @nodoc
mixin _$Usuario {
  @JsonKey(name: 'id_usuario')
  int get idUsuario => throw _privateConstructorUsedError;
  @JsonKey(name: 'nombre')
  String? get nombre => throw _privateConstructorUsedError;
  @JsonKey(name: 'apellido')
  String? get apellido => throw _privateConstructorUsedError;
  @JsonKey(name: 'telefono')
  String? get telefono => throw _privateConstructorUsedError;
  @JsonKey(name: 'email')
  String? get email => throw _privateConstructorUsedError;
  @JsonKey(name: 'password')
  String? get password => throw _privateConstructorUsedError;
  @JsonKey(name: 'direccion')
  String? get direccion => throw _privateConstructorUsedError;
  @JsonKey(includeIfNull: false)
  String? get imagen => throw _privateConstructorUsedError;
  @JsonKey(name: 'rol')
  String? get rol => throw _privateConstructorUsedError;
  @JsonKey(name: 'fecha_registro')
  DateTime? get fechaRegistro => throw _privateConstructorUsedError;
  @JsonKey(includeIfNull: false)
  String? get pregunta => throw _privateConstructorUsedError;
  @JsonKey(includeIfNull: false)
  String? get respuesta => throw _privateConstructorUsedError;
  @JsonKey(name: 'nuevo')
  String? get nuevo => throw _privateConstructorUsedError;
  @JsonKey(name: 'estadoAI')
  String? get estadoAI => throw _privateConstructorUsedError;

  /// Serializes this Usuario to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Usuario
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UsuarioCopyWith<Usuario> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UsuarioCopyWith<$Res> {
  factory $UsuarioCopyWith(Usuario value, $Res Function(Usuario) then) =
      _$UsuarioCopyWithImpl<$Res, Usuario>;
  @useResult
  $Res call({
    @JsonKey(name: 'id_usuario') int idUsuario,
    @JsonKey(name: 'nombre') String? nombre,
    @JsonKey(name: 'apellido') String? apellido,
    @JsonKey(name: 'telefono') String? telefono,
    @JsonKey(name: 'email') String? email,
    @JsonKey(name: 'password') String? password,
    @JsonKey(name: 'direccion') String? direccion,
    @JsonKey(includeIfNull: false) String? imagen,
    @JsonKey(name: 'rol') String? rol,
    @JsonKey(name: 'fecha_registro') DateTime? fechaRegistro,
    @JsonKey(includeIfNull: false) String? pregunta,
    @JsonKey(includeIfNull: false) String? respuesta,
    @JsonKey(name: 'nuevo') String? nuevo,
    @JsonKey(name: 'estadoAI') String? estadoAI,
  });
}

/// @nodoc
class _$UsuarioCopyWithImpl<$Res, $Val extends Usuario>
    implements $UsuarioCopyWith<$Res> {
  _$UsuarioCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Usuario
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? idUsuario = null,
    Object? nombre = freezed,
    Object? apellido = freezed,
    Object? telefono = freezed,
    Object? email = freezed,
    Object? password = freezed,
    Object? direccion = freezed,
    Object? imagen = freezed,
    Object? rol = freezed,
    Object? fechaRegistro = freezed,
    Object? pregunta = freezed,
    Object? respuesta = freezed,
    Object? nuevo = freezed,
    Object? estadoAI = freezed,
  }) {
    return _then(
      _value.copyWith(
            idUsuario: null == idUsuario
                ? _value.idUsuario
                : idUsuario // ignore: cast_nullable_to_non_nullable
                      as int,
            nombre: freezed == nombre
                ? _value.nombre
                : nombre // ignore: cast_nullable_to_non_nullable
                      as String?,
            apellido: freezed == apellido
                ? _value.apellido
                : apellido // ignore: cast_nullable_to_non_nullable
                      as String?,
            telefono: freezed == telefono
                ? _value.telefono
                : telefono // ignore: cast_nullable_to_non_nullable
                      as String?,
            email: freezed == email
                ? _value.email
                : email // ignore: cast_nullable_to_non_nullable
                      as String?,
            password: freezed == password
                ? _value.password
                : password // ignore: cast_nullable_to_non_nullable
                      as String?,
            direccion: freezed == direccion
                ? _value.direccion
                : direccion // ignore: cast_nullable_to_non_nullable
                      as String?,
            imagen: freezed == imagen
                ? _value.imagen
                : imagen // ignore: cast_nullable_to_non_nullable
                      as String?,
            rol: freezed == rol
                ? _value.rol
                : rol // ignore: cast_nullable_to_non_nullable
                      as String?,
            fechaRegistro: freezed == fechaRegistro
                ? _value.fechaRegistro
                : fechaRegistro // ignore: cast_nullable_to_non_nullable
                      as DateTime?,
            pregunta: freezed == pregunta
                ? _value.pregunta
                : pregunta // ignore: cast_nullable_to_non_nullable
                      as String?,
            respuesta: freezed == respuesta
                ? _value.respuesta
                : respuesta // ignore: cast_nullable_to_non_nullable
                      as String?,
            nuevo: freezed == nuevo
                ? _value.nuevo
                : nuevo // ignore: cast_nullable_to_non_nullable
                      as String?,
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
abstract class _$$UsuarioImplCopyWith<$Res> implements $UsuarioCopyWith<$Res> {
  factory _$$UsuarioImplCopyWith(
    _$UsuarioImpl value,
    $Res Function(_$UsuarioImpl) then,
  ) = __$$UsuarioImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @JsonKey(name: 'id_usuario') int idUsuario,
    @JsonKey(name: 'nombre') String? nombre,
    @JsonKey(name: 'apellido') String? apellido,
    @JsonKey(name: 'telefono') String? telefono,
    @JsonKey(name: 'email') String? email,
    @JsonKey(name: 'password') String? password,
    @JsonKey(name: 'direccion') String? direccion,
    @JsonKey(includeIfNull: false) String? imagen,
    @JsonKey(name: 'rol') String? rol,
    @JsonKey(name: 'fecha_registro') DateTime? fechaRegistro,
    @JsonKey(includeIfNull: false) String? pregunta,
    @JsonKey(includeIfNull: false) String? respuesta,
    @JsonKey(name: 'nuevo') String? nuevo,
    @JsonKey(name: 'estadoAI') String? estadoAI,
  });
}

/// @nodoc
class __$$UsuarioImplCopyWithImpl<$Res>
    extends _$UsuarioCopyWithImpl<$Res, _$UsuarioImpl>
    implements _$$UsuarioImplCopyWith<$Res> {
  __$$UsuarioImplCopyWithImpl(
    _$UsuarioImpl _value,
    $Res Function(_$UsuarioImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of Usuario
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? idUsuario = null,
    Object? nombre = freezed,
    Object? apellido = freezed,
    Object? telefono = freezed,
    Object? email = freezed,
    Object? password = freezed,
    Object? direccion = freezed,
    Object? imagen = freezed,
    Object? rol = freezed,
    Object? fechaRegistro = freezed,
    Object? pregunta = freezed,
    Object? respuesta = freezed,
    Object? nuevo = freezed,
    Object? estadoAI = freezed,
  }) {
    return _then(
      _$UsuarioImpl(
        idUsuario: null == idUsuario
            ? _value.idUsuario
            : idUsuario // ignore: cast_nullable_to_non_nullable
                  as int,
        nombre: freezed == nombre
            ? _value.nombre
            : nombre // ignore: cast_nullable_to_non_nullable
                  as String?,
        apellido: freezed == apellido
            ? _value.apellido
            : apellido // ignore: cast_nullable_to_non_nullable
                  as String?,
        telefono: freezed == telefono
            ? _value.telefono
            : telefono // ignore: cast_nullable_to_non_nullable
                  as String?,
        email: freezed == email
            ? _value.email
            : email // ignore: cast_nullable_to_non_nullable
                  as String?,
        password: freezed == password
            ? _value.password
            : password // ignore: cast_nullable_to_non_nullable
                  as String?,
        direccion: freezed == direccion
            ? _value.direccion
            : direccion // ignore: cast_nullable_to_non_nullable
                  as String?,
        imagen: freezed == imagen
            ? _value.imagen
            : imagen // ignore: cast_nullable_to_non_nullable
                  as String?,
        rol: freezed == rol
            ? _value.rol
            : rol // ignore: cast_nullable_to_non_nullable
                  as String?,
        fechaRegistro: freezed == fechaRegistro
            ? _value.fechaRegistro
            : fechaRegistro // ignore: cast_nullable_to_non_nullable
                  as DateTime?,
        pregunta: freezed == pregunta
            ? _value.pregunta
            : pregunta // ignore: cast_nullable_to_non_nullable
                  as String?,
        respuesta: freezed == respuesta
            ? _value.respuesta
            : respuesta // ignore: cast_nullable_to_non_nullable
                  as String?,
        nuevo: freezed == nuevo
            ? _value.nuevo
            : nuevo // ignore: cast_nullable_to_non_nullable
                  as String?,
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
class _$UsuarioImpl implements _Usuario {
  const _$UsuarioImpl({
    @JsonKey(name: 'id_usuario') required this.idUsuario,
    @JsonKey(name: 'nombre') this.nombre,
    @JsonKey(name: 'apellido') this.apellido,
    @JsonKey(name: 'telefono') this.telefono,
    @JsonKey(name: 'email') this.email,
    @JsonKey(name: 'password') this.password,
    @JsonKey(name: 'direccion') this.direccion,
    @JsonKey(includeIfNull: false) this.imagen,
    @JsonKey(name: 'rol') this.rol,
    @JsonKey(name: 'fecha_registro') this.fechaRegistro,
    @JsonKey(includeIfNull: false) this.pregunta,
    @JsonKey(includeIfNull: false) this.respuesta,
    @JsonKey(name: 'nuevo') this.nuevo,
    @JsonKey(name: 'estadoAI') this.estadoAI,
  });

  factory _$UsuarioImpl.fromJson(Map<String, dynamic> json) =>
      _$$UsuarioImplFromJson(json);

  @override
  @JsonKey(name: 'id_usuario')
  final int idUsuario;
  @override
  @JsonKey(name: 'nombre')
  final String? nombre;
  @override
  @JsonKey(name: 'apellido')
  final String? apellido;
  @override
  @JsonKey(name: 'telefono')
  final String? telefono;
  @override
  @JsonKey(name: 'email')
  final String? email;
  @override
  @JsonKey(name: 'password')
  final String? password;
  @override
  @JsonKey(name: 'direccion')
  final String? direccion;
  @override
  @JsonKey(includeIfNull: false)
  final String? imagen;
  @override
  @JsonKey(name: 'rol')
  final String? rol;
  @override
  @JsonKey(name: 'fecha_registro')
  final DateTime? fechaRegistro;
  @override
  @JsonKey(includeIfNull: false)
  final String? pregunta;
  @override
  @JsonKey(includeIfNull: false)
  final String? respuesta;
  @override
  @JsonKey(name: 'nuevo')
  final String? nuevo;
  @override
  @JsonKey(name: 'estadoAI')
  final String? estadoAI;

  @override
  String toString() {
    return 'Usuario(idUsuario: $idUsuario, nombre: $nombre, apellido: $apellido, telefono: $telefono, email: $email, password: $password, direccion: $direccion, imagen: $imagen, rol: $rol, fechaRegistro: $fechaRegistro, pregunta: $pregunta, respuesta: $respuesta, nuevo: $nuevo, estadoAI: $estadoAI)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UsuarioImpl &&
            (identical(other.idUsuario, idUsuario) ||
                other.idUsuario == idUsuario) &&
            (identical(other.nombre, nombre) || other.nombre == nombre) &&
            (identical(other.apellido, apellido) ||
                other.apellido == apellido) &&
            (identical(other.telefono, telefono) ||
                other.telefono == telefono) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.direccion, direccion) ||
                other.direccion == direccion) &&
            (identical(other.imagen, imagen) || other.imagen == imagen) &&
            (identical(other.rol, rol) || other.rol == rol) &&
            (identical(other.fechaRegistro, fechaRegistro) ||
                other.fechaRegistro == fechaRegistro) &&
            (identical(other.pregunta, pregunta) ||
                other.pregunta == pregunta) &&
            (identical(other.respuesta, respuesta) ||
                other.respuesta == respuesta) &&
            (identical(other.nuevo, nuevo) || other.nuevo == nuevo) &&
            (identical(other.estadoAI, estadoAI) ||
                other.estadoAI == estadoAI));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    idUsuario,
    nombre,
    apellido,
    telefono,
    email,
    password,
    direccion,
    imagen,
    rol,
    fechaRegistro,
    pregunta,
    respuesta,
    nuevo,
    estadoAI,
  );

  /// Create a copy of Usuario
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UsuarioImplCopyWith<_$UsuarioImpl> get copyWith =>
      __$$UsuarioImplCopyWithImpl<_$UsuarioImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UsuarioImplToJson(this);
  }
}

abstract class _Usuario implements Usuario {
  const factory _Usuario({
    @JsonKey(name: 'id_usuario') required final int idUsuario,
    @JsonKey(name: 'nombre') final String? nombre,
    @JsonKey(name: 'apellido') final String? apellido,
    @JsonKey(name: 'telefono') final String? telefono,
    @JsonKey(name: 'email') final String? email,
    @JsonKey(name: 'password') final String? password,
    @JsonKey(name: 'direccion') final String? direccion,
    @JsonKey(includeIfNull: false) final String? imagen,
    @JsonKey(name: 'rol') final String? rol,
    @JsonKey(name: 'fecha_registro') final DateTime? fechaRegistro,
    @JsonKey(includeIfNull: false) final String? pregunta,
    @JsonKey(includeIfNull: false) final String? respuesta,
    @JsonKey(name: 'nuevo') final String? nuevo,
    @JsonKey(name: 'estadoAI') final String? estadoAI,
  }) = _$UsuarioImpl;

  factory _Usuario.fromJson(Map<String, dynamic> json) = _$UsuarioImpl.fromJson;

  @override
  @JsonKey(name: 'id_usuario')
  int get idUsuario;
  @override
  @JsonKey(name: 'nombre')
  String? get nombre;
  @override
  @JsonKey(name: 'apellido')
  String? get apellido;
  @override
  @JsonKey(name: 'telefono')
  String? get telefono;
  @override
  @JsonKey(name: 'email')
  String? get email;
  @override
  @JsonKey(name: 'password')
  String? get password;
  @override
  @JsonKey(name: 'direccion')
  String? get direccion;
  @override
  @JsonKey(includeIfNull: false)
  String? get imagen;
  @override
  @JsonKey(name: 'rol')
  String? get rol;
  @override
  @JsonKey(name: 'fecha_registro')
  DateTime? get fechaRegistro;
  @override
  @JsonKey(includeIfNull: false)
  String? get pregunta;
  @override
  @JsonKey(includeIfNull: false)
  String? get respuesta;
  @override
  @JsonKey(name: 'nuevo')
  String? get nuevo;
  @override
  @JsonKey(name: 'estadoAI')
  String? get estadoAI;

  /// Create a copy of Usuario
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UsuarioImplCopyWith<_$UsuarioImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
