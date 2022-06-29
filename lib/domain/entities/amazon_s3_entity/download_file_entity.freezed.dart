// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'download_file_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

DownloadFileEntity _$DownloadFileEntityFromJson(Map<String, dynamic> json) {
  return _DownloadFileEntity.fromJson(json);
}

/// @nodoc
class _$DownloadFileEntityTearOff {
  const _$DownloadFileEntityTearOff();

  _DownloadFileEntity call({String? file}) {
    return _DownloadFileEntity(
      file: file,
    );
  }

  DownloadFileEntity fromJson(Map<String, Object> json) {
    return DownloadFileEntity.fromJson(json);
  }
}

/// @nodoc
const $DownloadFileEntity = _$DownloadFileEntityTearOff();

/// @nodoc
mixin _$DownloadFileEntity {
  String? get file => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DownloadFileEntityCopyWith<DownloadFileEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DownloadFileEntityCopyWith<$Res> {
  factory $DownloadFileEntityCopyWith(
          DownloadFileEntity value, $Res Function(DownloadFileEntity) then) =
      _$DownloadFileEntityCopyWithImpl<$Res>;
  $Res call({String? file});
}

/// @nodoc
class _$DownloadFileEntityCopyWithImpl<$Res>
    implements $DownloadFileEntityCopyWith<$Res> {
  _$DownloadFileEntityCopyWithImpl(this._value, this._then);

  final DownloadFileEntity _value;
  // ignore: unused_field
  final $Res Function(DownloadFileEntity) _then;

  @override
  $Res call({
    Object? file = freezed,
  }) {
    return _then(_value.copyWith(
      file: file == freezed
          ? _value.file
          : file // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$DownloadFileEntityCopyWith<$Res>
    implements $DownloadFileEntityCopyWith<$Res> {
  factory _$DownloadFileEntityCopyWith(
          _DownloadFileEntity value, $Res Function(_DownloadFileEntity) then) =
      __$DownloadFileEntityCopyWithImpl<$Res>;
  @override
  $Res call({String? file});
}

/// @nodoc
class __$DownloadFileEntityCopyWithImpl<$Res>
    extends _$DownloadFileEntityCopyWithImpl<$Res>
    implements _$DownloadFileEntityCopyWith<$Res> {
  __$DownloadFileEntityCopyWithImpl(
      _DownloadFileEntity _value, $Res Function(_DownloadFileEntity) _then)
      : super(_value, (v) => _then(v as _DownloadFileEntity));

  @override
  _DownloadFileEntity get _value => super._value as _DownloadFileEntity;

  @override
  $Res call({
    Object? file = freezed,
  }) {
    return _then(_DownloadFileEntity(
      file: file == freezed
          ? _value.file
          : file // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_DownloadFileEntity implements _DownloadFileEntity {
  const _$_DownloadFileEntity({this.file});

  factory _$_DownloadFileEntity.fromJson(Map<String, dynamic> json) =>
      _$_$_DownloadFileEntityFromJson(json);

  @override
  final String? file;

  @override
  String toString() {
    return 'DownloadFileEntity(file: $file)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _DownloadFileEntity &&
            (identical(other.file, file) ||
                const DeepCollectionEquality().equals(other.file, file)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(file);

  @JsonKey(ignore: true)
  @override
  _$DownloadFileEntityCopyWith<_DownloadFileEntity> get copyWith =>
      __$DownloadFileEntityCopyWithImpl<_DownloadFileEntity>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_DownloadFileEntityToJson(this);
  }
}

abstract class _DownloadFileEntity implements DownloadFileEntity {
  const factory _DownloadFileEntity({String? file}) = _$_DownloadFileEntity;

  factory _DownloadFileEntity.fromJson(Map<String, dynamic> json) =
      _$_DownloadFileEntity.fromJson;

  @override
  String? get file => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$DownloadFileEntityCopyWith<_DownloadFileEntity> get copyWith =>
      throw _privateConstructorUsedError;
}
