// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'request_register_file_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

RequestRegisterFileModel _$RequestRegisterFileModelFromJson(
    Map<String, dynamic> json) {
  return _RequestRegisterFileModel.fromJson(json);
}

/// @nodoc
class _$RequestRegisterFileModelTearOff {
  const _$RequestRegisterFileModelTearOff();

  _RequestRegisterFileModel call(
      {required String? fileType,
      required String? filename,
      required bool videoMatting}) {
    return _RequestRegisterFileModel(
      fileType: fileType,
      filename: filename,
      videoMatting: videoMatting,
    );
  }

  RequestRegisterFileModel fromJson(Map<String, Object> json) {
    return RequestRegisterFileModel.fromJson(json);
  }
}

/// @nodoc
const $RequestRegisterFileModel = _$RequestRegisterFileModelTearOff();

/// @nodoc
mixin _$RequestRegisterFileModel {
  String? get fileType => throw _privateConstructorUsedError;
  String? get filename => throw _privateConstructorUsedError;
  bool get videoMatting => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RequestRegisterFileModelCopyWith<RequestRegisterFileModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RequestRegisterFileModelCopyWith<$Res> {
  factory $RequestRegisterFileModelCopyWith(RequestRegisterFileModel value,
          $Res Function(RequestRegisterFileModel) then) =
      _$RequestRegisterFileModelCopyWithImpl<$Res>;
  $Res call({String? fileType, String? filename, bool videoMatting});
}

/// @nodoc
class _$RequestRegisterFileModelCopyWithImpl<$Res>
    implements $RequestRegisterFileModelCopyWith<$Res> {
  _$RequestRegisterFileModelCopyWithImpl(this._value, this._then);

  final RequestRegisterFileModel _value;
  // ignore: unused_field
  final $Res Function(RequestRegisterFileModel) _then;

  @override
  $Res call({
    Object? fileType = freezed,
    Object? filename = freezed,
    Object? videoMatting = freezed,
  }) {
    return _then(_value.copyWith(
      fileType: fileType == freezed
          ? _value.fileType
          : fileType // ignore: cast_nullable_to_non_nullable
              as String?,
      filename: filename == freezed
          ? _value.filename
          : filename // ignore: cast_nullable_to_non_nullable
              as String?,
      videoMatting: videoMatting == freezed
          ? _value.videoMatting
          : videoMatting // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$RequestRegisterFileModelCopyWith<$Res>
    implements $RequestRegisterFileModelCopyWith<$Res> {
  factory _$RequestRegisterFileModelCopyWith(_RequestRegisterFileModel value,
          $Res Function(_RequestRegisterFileModel) then) =
      __$RequestRegisterFileModelCopyWithImpl<$Res>;
  @override
  $Res call({String? fileType, String? filename, bool videoMatting});
}

/// @nodoc
class __$RequestRegisterFileModelCopyWithImpl<$Res>
    extends _$RequestRegisterFileModelCopyWithImpl<$Res>
    implements _$RequestRegisterFileModelCopyWith<$Res> {
  __$RequestRegisterFileModelCopyWithImpl(_RequestRegisterFileModel _value,
      $Res Function(_RequestRegisterFileModel) _then)
      : super(_value, (v) => _then(v as _RequestRegisterFileModel));

  @override
  _RequestRegisterFileModel get _value =>
      super._value as _RequestRegisterFileModel;

  @override
  $Res call({
    Object? fileType = freezed,
    Object? filename = freezed,
    Object? videoMatting = freezed,
  }) {
    return _then(_RequestRegisterFileModel(
      fileType: fileType == freezed
          ? _value.fileType
          : fileType // ignore: cast_nullable_to_non_nullable
              as String?,
      filename: filename == freezed
          ? _value.filename
          : filename // ignore: cast_nullable_to_non_nullable
              as String?,
      videoMatting: videoMatting == freezed
          ? _value.videoMatting
          : videoMatting // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_RequestRegisterFileModel implements _RequestRegisterFileModel {
  const _$_RequestRegisterFileModel(
      {required this.fileType,
      required this.filename,
      required this.videoMatting});

  factory _$_RequestRegisterFileModel.fromJson(Map<String, dynamic> json) =>
      _$_$_RequestRegisterFileModelFromJson(json);

  @override
  final String? fileType;
  @override
  final String? filename;
  @override
  final bool videoMatting;

  @override
  String toString() {
    return 'RequestRegisterFileModel(fileType: $fileType, filename: $filename, videoMatting: $videoMatting)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _RequestRegisterFileModel &&
            (identical(other.fileType, fileType) ||
                const DeepCollectionEquality()
                    .equals(other.fileType, fileType)) &&
            (identical(other.filename, filename) ||
                const DeepCollectionEquality()
                    .equals(other.filename, filename)) &&
            (identical(other.videoMatting, videoMatting) ||
                const DeepCollectionEquality()
                    .equals(other.videoMatting, videoMatting)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(fileType) ^
      const DeepCollectionEquality().hash(filename) ^
      const DeepCollectionEquality().hash(videoMatting);

  @JsonKey(ignore: true)
  @override
  _$RequestRegisterFileModelCopyWith<_RequestRegisterFileModel> get copyWith =>
      __$RequestRegisterFileModelCopyWithImpl<_RequestRegisterFileModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_RequestRegisterFileModelToJson(this);
  }
}

abstract class _RequestRegisterFileModel implements RequestRegisterFileModel {
  const factory _RequestRegisterFileModel(
      {required String? fileType,
      required String? filename,
      required bool videoMatting}) = _$_RequestRegisterFileModel;

  factory _RequestRegisterFileModel.fromJson(Map<String, dynamic> json) =
      _$_RequestRegisterFileModel.fromJson;

  @override
  String? get fileType => throw _privateConstructorUsedError;
  @override
  String? get filename => throw _privateConstructorUsedError;
  @override
  bool get videoMatting => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$RequestRegisterFileModelCopyWith<_RequestRegisterFileModel> get copyWith =>
      throw _privateConstructorUsedError;
}
