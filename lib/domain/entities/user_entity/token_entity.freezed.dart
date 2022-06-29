// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'token_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TokenEntity _$TokenEntityFromJson(Map<String, dynamic> json) {
  return _TokenEntity.fromJson(json);
}

/// @nodoc
class _$TokenEntityTearOff {
  const _$TokenEntityTearOff();

  _TokenEntity call({String? accessToken, String? refreshToken, String? type}) {
    return _TokenEntity(
      accessToken: accessToken,
      refreshToken: refreshToken,
      type: type,
    );
  }

  TokenEntity fromJson(Map<String, Object> json) {
    return TokenEntity.fromJson(json);
  }
}

/// @nodoc
const $TokenEntity = _$TokenEntityTearOff();

/// @nodoc
mixin _$TokenEntity {
  String? get accessToken => throw _privateConstructorUsedError;
  String? get refreshToken => throw _privateConstructorUsedError;
  String? get type => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TokenEntityCopyWith<TokenEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TokenEntityCopyWith<$Res> {
  factory $TokenEntityCopyWith(
          TokenEntity value, $Res Function(TokenEntity) then) =
      _$TokenEntityCopyWithImpl<$Res>;
  $Res call({String? accessToken, String? refreshToken, String? type});
}

/// @nodoc
class _$TokenEntityCopyWithImpl<$Res> implements $TokenEntityCopyWith<$Res> {
  _$TokenEntityCopyWithImpl(this._value, this._then);

  final TokenEntity _value;
  // ignore: unused_field
  final $Res Function(TokenEntity) _then;

  @override
  $Res call({
    Object? accessToken = freezed,
    Object? refreshToken = freezed,
    Object? type = freezed,
  }) {
    return _then(_value.copyWith(
      accessToken: accessToken == freezed
          ? _value.accessToken
          : accessToken // ignore: cast_nullable_to_non_nullable
              as String?,
      refreshToken: refreshToken == freezed
          ? _value.refreshToken
          : refreshToken // ignore: cast_nullable_to_non_nullable
              as String?,
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$TokenEntityCopyWith<$Res>
    implements $TokenEntityCopyWith<$Res> {
  factory _$TokenEntityCopyWith(
          _TokenEntity value, $Res Function(_TokenEntity) then) =
      __$TokenEntityCopyWithImpl<$Res>;
  @override
  $Res call({String? accessToken, String? refreshToken, String? type});
}

/// @nodoc
class __$TokenEntityCopyWithImpl<$Res> extends _$TokenEntityCopyWithImpl<$Res>
    implements _$TokenEntityCopyWith<$Res> {
  __$TokenEntityCopyWithImpl(
      _TokenEntity _value, $Res Function(_TokenEntity) _then)
      : super(_value, (v) => _then(v as _TokenEntity));

  @override
  _TokenEntity get _value => super._value as _TokenEntity;

  @override
  $Res call({
    Object? accessToken = freezed,
    Object? refreshToken = freezed,
    Object? type = freezed,
  }) {
    return _then(_TokenEntity(
      accessToken: accessToken == freezed
          ? _value.accessToken
          : accessToken // ignore: cast_nullable_to_non_nullable
              as String?,
      refreshToken: refreshToken == freezed
          ? _value.refreshToken
          : refreshToken // ignore: cast_nullable_to_non_nullable
              as String?,
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_TokenEntity implements _TokenEntity {
  const _$_TokenEntity({this.accessToken, this.refreshToken, this.type});

  factory _$_TokenEntity.fromJson(Map<String, dynamic> json) =>
      _$_$_TokenEntityFromJson(json);

  @override
  final String? accessToken;
  @override
  final String? refreshToken;
  @override
  final String? type;

  @override
  String toString() {
    return 'TokenEntity(accessToken: $accessToken, refreshToken: $refreshToken, type: $type)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _TokenEntity &&
            (identical(other.accessToken, accessToken) ||
                const DeepCollectionEquality()
                    .equals(other.accessToken, accessToken)) &&
            (identical(other.refreshToken, refreshToken) ||
                const DeepCollectionEquality()
                    .equals(other.refreshToken, refreshToken)) &&
            (identical(other.type, type) ||
                const DeepCollectionEquality().equals(other.type, type)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(accessToken) ^
      const DeepCollectionEquality().hash(refreshToken) ^
      const DeepCollectionEquality().hash(type);

  @JsonKey(ignore: true)
  @override
  _$TokenEntityCopyWith<_TokenEntity> get copyWith =>
      __$TokenEntityCopyWithImpl<_TokenEntity>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_TokenEntityToJson(this);
  }
}

abstract class _TokenEntity implements TokenEntity {
  const factory _TokenEntity(
      {String? accessToken,
      String? refreshToken,
      String? type}) = _$_TokenEntity;

  factory _TokenEntity.fromJson(Map<String, dynamic> json) =
      _$_TokenEntity.fromJson;

  @override
  String? get accessToken => throw _privateConstructorUsedError;
  @override
  String? get refreshToken => throw _privateConstructorUsedError;
  @override
  String? get type => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$TokenEntityCopyWith<_TokenEntity> get copyWith =>
      throw _privateConstructorUsedError;
}
