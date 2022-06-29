// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'register_file_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

RegisterFileEntity _$RegisterFileEntityFromJson(Map<String, dynamic> json) {
  return _RegisterFileEntity.fromJson(json);
}

/// @nodoc
class _$RegisterFileEntityTearOff {
  const _$RegisterFileEntityTearOff();

  _RegisterFileEntity call({String? s3FolderKey}) {
    return _RegisterFileEntity(
      s3FolderKey: s3FolderKey,
    );
  }

  RegisterFileEntity fromJson(Map<String, Object> json) {
    return RegisterFileEntity.fromJson(json);
  }
}

/// @nodoc
const $RegisterFileEntity = _$RegisterFileEntityTearOff();

/// @nodoc
mixin _$RegisterFileEntity {
  String? get s3FolderKey => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RegisterFileEntityCopyWith<RegisterFileEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RegisterFileEntityCopyWith<$Res> {
  factory $RegisterFileEntityCopyWith(
          RegisterFileEntity value, $Res Function(RegisterFileEntity) then) =
      _$RegisterFileEntityCopyWithImpl<$Res>;
  $Res call({String? s3FolderKey});
}

/// @nodoc
class _$RegisterFileEntityCopyWithImpl<$Res>
    implements $RegisterFileEntityCopyWith<$Res> {
  _$RegisterFileEntityCopyWithImpl(this._value, this._then);

  final RegisterFileEntity _value;
  // ignore: unused_field
  final $Res Function(RegisterFileEntity) _then;

  @override
  $Res call({
    Object? s3FolderKey = freezed,
  }) {
    return _then(_value.copyWith(
      s3FolderKey: s3FolderKey == freezed
          ? _value.s3FolderKey
          : s3FolderKey // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$RegisterFileEntityCopyWith<$Res>
    implements $RegisterFileEntityCopyWith<$Res> {
  factory _$RegisterFileEntityCopyWith(
          _RegisterFileEntity value, $Res Function(_RegisterFileEntity) then) =
      __$RegisterFileEntityCopyWithImpl<$Res>;
  @override
  $Res call({String? s3FolderKey});
}

/// @nodoc
class __$RegisterFileEntityCopyWithImpl<$Res>
    extends _$RegisterFileEntityCopyWithImpl<$Res>
    implements _$RegisterFileEntityCopyWith<$Res> {
  __$RegisterFileEntityCopyWithImpl(
      _RegisterFileEntity _value, $Res Function(_RegisterFileEntity) _then)
      : super(_value, (v) => _then(v as _RegisterFileEntity));

  @override
  _RegisterFileEntity get _value => super._value as _RegisterFileEntity;

  @override
  $Res call({
    Object? s3FolderKey = freezed,
  }) {
    return _then(_RegisterFileEntity(
      s3FolderKey: s3FolderKey == freezed
          ? _value.s3FolderKey
          : s3FolderKey // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_RegisterFileEntity implements _RegisterFileEntity {
  const _$_RegisterFileEntity({this.s3FolderKey});

  factory _$_RegisterFileEntity.fromJson(Map<String, dynamic> json) =>
      _$_$_RegisterFileEntityFromJson(json);

  @override
  final String? s3FolderKey;

  @override
  String toString() {
    return 'RegisterFileEntity(s3FolderKey: $s3FolderKey)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _RegisterFileEntity &&
            (identical(other.s3FolderKey, s3FolderKey) ||
                const DeepCollectionEquality()
                    .equals(other.s3FolderKey, s3FolderKey)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(s3FolderKey);

  @JsonKey(ignore: true)
  @override
  _$RegisterFileEntityCopyWith<_RegisterFileEntity> get copyWith =>
      __$RegisterFileEntityCopyWithImpl<_RegisterFileEntity>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_RegisterFileEntityToJson(this);
  }
}

abstract class _RegisterFileEntity implements RegisterFileEntity {
  const factory _RegisterFileEntity({String? s3FolderKey}) =
      _$_RegisterFileEntity;

  factory _RegisterFileEntity.fromJson(Map<String, dynamic> json) =
      _$_RegisterFileEntity.fromJson;

  @override
  String? get s3FolderKey => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$RegisterFileEntityCopyWith<_RegisterFileEntity> get copyWith =>
      throw _privateConstructorUsedError;
}
