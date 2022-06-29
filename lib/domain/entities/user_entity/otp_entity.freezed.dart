// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'otp_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

OTPEntity _$OTPEntityFromJson(Map<String, dynamic> json) {
  return _OTPEntity.fromJson(json);
}

/// @nodoc
class _$OTPEntityTearOff {
  const _$OTPEntityTearOff();

  _OTPEntity call({int tmpUserId = 0, String? email}) {
    return _OTPEntity(
      tmpUserId: tmpUserId,
      email: email,
    );
  }

  OTPEntity fromJson(Map<String, Object> json) {
    return OTPEntity.fromJson(json);
  }
}

/// @nodoc
const $OTPEntity = _$OTPEntityTearOff();

/// @nodoc
mixin _$OTPEntity {
  int get tmpUserId => throw _privateConstructorUsedError;
  String? get email => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OTPEntityCopyWith<OTPEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OTPEntityCopyWith<$Res> {
  factory $OTPEntityCopyWith(OTPEntity value, $Res Function(OTPEntity) then) =
      _$OTPEntityCopyWithImpl<$Res>;
  $Res call({int tmpUserId, String? email});
}

/// @nodoc
class _$OTPEntityCopyWithImpl<$Res> implements $OTPEntityCopyWith<$Res> {
  _$OTPEntityCopyWithImpl(this._value, this._then);

  final OTPEntity _value;
  // ignore: unused_field
  final $Res Function(OTPEntity) _then;

  @override
  $Res call({
    Object? tmpUserId = freezed,
    Object? email = freezed,
  }) {
    return _then(_value.copyWith(
      tmpUserId: tmpUserId == freezed
          ? _value.tmpUserId
          : tmpUserId // ignore: cast_nullable_to_non_nullable
              as int,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$OTPEntityCopyWith<$Res> implements $OTPEntityCopyWith<$Res> {
  factory _$OTPEntityCopyWith(
          _OTPEntity value, $Res Function(_OTPEntity) then) =
      __$OTPEntityCopyWithImpl<$Res>;
  @override
  $Res call({int tmpUserId, String? email});
}

/// @nodoc
class __$OTPEntityCopyWithImpl<$Res> extends _$OTPEntityCopyWithImpl<$Res>
    implements _$OTPEntityCopyWith<$Res> {
  __$OTPEntityCopyWithImpl(_OTPEntity _value, $Res Function(_OTPEntity) _then)
      : super(_value, (v) => _then(v as _OTPEntity));

  @override
  _OTPEntity get _value => super._value as _OTPEntity;

  @override
  $Res call({
    Object? tmpUserId = freezed,
    Object? email = freezed,
  }) {
    return _then(_OTPEntity(
      tmpUserId: tmpUserId == freezed
          ? _value.tmpUserId
          : tmpUserId // ignore: cast_nullable_to_non_nullable
              as int,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_OTPEntity implements _OTPEntity {
  const _$_OTPEntity({this.tmpUserId = 0, this.email});

  factory _$_OTPEntity.fromJson(Map<String, dynamic> json) =>
      _$_$_OTPEntityFromJson(json);

  @JsonKey(defaultValue: 0)
  @override
  final int tmpUserId;
  @override
  final String? email;

  @override
  String toString() {
    return 'OTPEntity(tmpUserId: $tmpUserId, email: $email)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _OTPEntity &&
            (identical(other.tmpUserId, tmpUserId) ||
                const DeepCollectionEquality()
                    .equals(other.tmpUserId, tmpUserId)) &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(tmpUserId) ^
      const DeepCollectionEquality().hash(email);

  @JsonKey(ignore: true)
  @override
  _$OTPEntityCopyWith<_OTPEntity> get copyWith =>
      __$OTPEntityCopyWithImpl<_OTPEntity>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_OTPEntityToJson(this);
  }
}

abstract class _OTPEntity implements OTPEntity {
  const factory _OTPEntity({int tmpUserId, String? email}) = _$_OTPEntity;

  factory _OTPEntity.fromJson(Map<String, dynamic> json) =
      _$_OTPEntity.fromJson;

  @override
  int get tmpUserId => throw _privateConstructorUsedError;
  @override
  String? get email => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$OTPEntityCopyWith<_OTPEntity> get copyWith =>
      throw _privateConstructorUsedError;
}
