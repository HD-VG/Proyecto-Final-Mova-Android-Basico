import 'package:freezed_annotation/freezed_annotation.dart';

part 'usuario.freezed.dart';
part 'usuario.g.dart';

@freezed
class Usuario with _$Usuario {
  const factory Usuario({
    @JsonKey(name: 'id_usuario') required int idUsuario,
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
  }) = _Usuario;

  factory Usuario.fromJson(Map<String, dynamic> json) => _$UsuarioFromJson(json);
}