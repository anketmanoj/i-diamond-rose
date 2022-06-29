// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'upload_file_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

UploadFileEntity _$UploadFileEntityFromJson(Map<String, dynamic> json) {
  return _UploadFileEntity.fromJson(json);
}

/// @nodoc
class _$UploadFileEntityTearOff {
  const _$UploadFileEntityTearOff();

  _UploadFileEntity call({String? key, String? url}) {
    return _UploadFileEntity(
      key: key,
      url: url,
    );
  }

  UploadFileEntity fromJson(Map<String, Object> json) {
    return UploadFileEntity.fromJson(json);
  }
}

/// @nodoc
const $UploadFileEntity = _$UploadFileEntityTearOff();

/// @nodoc
mixin _$UploadFileEntity {
  String? get key => throw _privateConstructorUsedError;
  String? get url => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UploadFileEntityCopyWith<UploadFileEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UploadFileEntityCopyWith<$Res> {
  factory $UploadFileEntityCopyWith(
          UploadFileEntity value, $Res Function(UploadFileEntity) then) =
      _$UploadFileEntityCopyWithImpl<$Res>;
  $Res call({String? key, String? url});
}

/// @nodoc
class _$UploadFileEntityCopyWithImpl<$Res>
    implements $UploadFileEntityCopyWith<$Res> {
  _$UploadFileEntityCopyWithImpl(this._value, this._then);

  final UploadFileEntity _value;
  // ignore: unused_field
  final $Res Function(UploadFileEntity) _then;

  @override
  $Res call({
    Object? key = freezed,
    Object? url = freezed,
  }) {
    return _then(_value.copyWith(
      key: key == freezed
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as String?,
      url: url == freezed
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$UploadFileEntityCopyWith<$Res>
    implements $UploadFileEntityCopyWith<$Res> {
  factory _$UploadFileEntityCopyWith(
          _UploadFileEntity value, $Res Function(_UploadFileEntity) then) =
      __$UploadFileEntityCopyWithImpl<$Res>;
  @override
  $Res call({String? key, String? url});
}

/// @nodoc
class __$UploadFileEntityCopyWithImpl<$Res>
    extends _$UploadFileEntityCopyWithImpl<$Res>
    implements _$UploadFileEntityCopyWith<$Res> {
  __$UploadFileEntityCopyWithImpl(
      _UploadFileEntity _value, $Res Function(_UploadFileEntity) _then)
      : super(_value, (v) => _then(v as _UploadFileEntity));

  @override
  _UploadFileEntity get _value => super._value as _UploadFileEntity;

  @override
  $Res call({
    Object? key = freezed,
    Object? url = freezed,
  }) {
    return _then(_UploadFileEntity(
      key: key == freezed
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as String?,
      url: url == freezed
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_UploadFileEntity implements _UploadFileEntity {
  const _$_UploadFileEntity({this.key, this.url});

  factory _$_UploadFileEntity.fromJson(Map<String, dynamic> json) =>
      _$_$_UploadFileEntityFromJson(json);

  @override
  final String? key;
  @override
  final String? url;

  @override
  String toString() {
    return 'UploadFileEntity(key: $key, url: $url)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _UploadFileEntity &&
            (identical(other.key, key) ||
                const DeepCollectionEquality().equals(other.key, key)) &&
            (identical(other.url, url) ||
                const DeepCollectionEquality().equals(other.url, url)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(key) ^
      const DeepCollectionEquality().hash(url);

  @JsonKey(ignore: true)
  @override
  _$UploadFileEntityCopyWith<_UploadFileEntity> get copyWith =>
      __$UploadFileEntityCopyWithImpl<_UploadFileEntity>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_UploadFileEntityToJson(this);
  }
}

abstract class _UploadFileEntity implements UploadFileEntity {
  const factory _UploadFileEntity({String? key, String? url}) =
      _$_UploadFileEntity;

  factory _UploadFileEntity.fromJson(Map<String, dynamic> json) =
      _$_UploadFileEntity.fromJson;

  @override
  String? get key => throw _privateConstructorUsedError;
  @override
  String? get url => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$UploadFileEntityCopyWith<_UploadFileEntity> get copyWith =>
      throw _privateConstructorUsedError;
}
