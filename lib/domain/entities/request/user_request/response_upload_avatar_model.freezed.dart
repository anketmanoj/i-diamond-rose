// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'response_upload_avatar_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ResponseAvatarModel _$ResponseAvatarModelFromJson(Map<String, dynamic> json) {
  return _ResponseAvatarModel.fromJson(json);
}

/// @nodoc
class _$ResponseAvatarModelTearOff {
  const _$ResponseAvatarModelTearOff();

  _ResponseAvatarModel call({required String url}) {
    return _ResponseAvatarModel(
      url: url,
    );
  }

  ResponseAvatarModel fromJson(Map<String, Object> json) {
    return ResponseAvatarModel.fromJson(json);
  }
}

/// @nodoc
const $ResponseAvatarModel = _$ResponseAvatarModelTearOff();

/// @nodoc
mixin _$ResponseAvatarModel {
  String get url => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ResponseAvatarModelCopyWith<ResponseAvatarModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResponseAvatarModelCopyWith<$Res> {
  factory $ResponseAvatarModelCopyWith(
          ResponseAvatarModel value, $Res Function(ResponseAvatarModel) then) =
      _$ResponseAvatarModelCopyWithImpl<$Res>;
  $Res call({String url});
}

/// @nodoc
class _$ResponseAvatarModelCopyWithImpl<$Res>
    implements $ResponseAvatarModelCopyWith<$Res> {
  _$ResponseAvatarModelCopyWithImpl(this._value, this._then);

  final ResponseAvatarModel _value;
  // ignore: unused_field
  final $Res Function(ResponseAvatarModel) _then;

  @override
  $Res call({
    Object? url = freezed,
  }) {
    return _then(_value.copyWith(
      url: url == freezed
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$ResponseAvatarModelCopyWith<$Res>
    implements $ResponseAvatarModelCopyWith<$Res> {
  factory _$ResponseAvatarModelCopyWith(_ResponseAvatarModel value,
          $Res Function(_ResponseAvatarModel) then) =
      __$ResponseAvatarModelCopyWithImpl<$Res>;
  @override
  $Res call({String url});
}

/// @nodoc
class __$ResponseAvatarModelCopyWithImpl<$Res>
    extends _$ResponseAvatarModelCopyWithImpl<$Res>
    implements _$ResponseAvatarModelCopyWith<$Res> {
  __$ResponseAvatarModelCopyWithImpl(
      _ResponseAvatarModel _value, $Res Function(_ResponseAvatarModel) _then)
      : super(_value, (v) => _then(v as _ResponseAvatarModel));

  @override
  _ResponseAvatarModel get _value => super._value as _ResponseAvatarModel;

  @override
  $Res call({
    Object? url = freezed,
  }) {
    return _then(_ResponseAvatarModel(
      url: url == freezed
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ResponseAvatarModel implements _ResponseAvatarModel {
  const _$_ResponseAvatarModel({required this.url});

  factory _$_ResponseAvatarModel.fromJson(Map<String, dynamic> json) =>
      _$_$_ResponseAvatarModelFromJson(json);

  @override
  final String url;

  @override
  String toString() {
    return 'ResponseAvatarModel(url: $url)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ResponseAvatarModel &&
            (identical(other.url, url) ||
                const DeepCollectionEquality().equals(other.url, url)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(url);

  @JsonKey(ignore: true)
  @override
  _$ResponseAvatarModelCopyWith<_ResponseAvatarModel> get copyWith =>
      __$ResponseAvatarModelCopyWithImpl<_ResponseAvatarModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_ResponseAvatarModelToJson(this);
  }
}

abstract class _ResponseAvatarModel implements ResponseAvatarModel {
  const factory _ResponseAvatarModel({required String url}) =
      _$_ResponseAvatarModel;

  factory _ResponseAvatarModel.fromJson(Map<String, dynamic> json) =
      _$_ResponseAvatarModel.fromJson;

  @override
  String get url => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ResponseAvatarModelCopyWith<_ResponseAvatarModel> get copyWith =>
      throw _privateConstructorUsedError;
}
