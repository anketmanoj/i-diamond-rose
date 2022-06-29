// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'request_device_token_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

RequestDeviceTokenModel _$RequestDeviceTokenModelFromJson(
    Map<String, dynamic> json) {
  return _RequestDeviceTokenModel.fromJson(json);
}

/// @nodoc
class _$RequestDeviceTokenModelTearOff {
  const _$RequestDeviceTokenModelTearOff();

  _RequestDeviceTokenModel call({required String deviceToken}) {
    return _RequestDeviceTokenModel(
      deviceToken: deviceToken,
    );
  }

  RequestDeviceTokenModel fromJson(Map<String, Object> json) {
    return RequestDeviceTokenModel.fromJson(json);
  }
}

/// @nodoc
const $RequestDeviceTokenModel = _$RequestDeviceTokenModelTearOff();

/// @nodoc
mixin _$RequestDeviceTokenModel {
  String get deviceToken => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RequestDeviceTokenModelCopyWith<RequestDeviceTokenModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RequestDeviceTokenModelCopyWith<$Res> {
  factory $RequestDeviceTokenModelCopyWith(RequestDeviceTokenModel value,
          $Res Function(RequestDeviceTokenModel) then) =
      _$RequestDeviceTokenModelCopyWithImpl<$Res>;
  $Res call({String deviceToken});
}

/// @nodoc
class _$RequestDeviceTokenModelCopyWithImpl<$Res>
    implements $RequestDeviceTokenModelCopyWith<$Res> {
  _$RequestDeviceTokenModelCopyWithImpl(this._value, this._then);

  final RequestDeviceTokenModel _value;
  // ignore: unused_field
  final $Res Function(RequestDeviceTokenModel) _then;

  @override
  $Res call({
    Object? deviceToken = freezed,
  }) {
    return _then(_value.copyWith(
      deviceToken: deviceToken == freezed
          ? _value.deviceToken
          : deviceToken // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$RequestDeviceTokenModelCopyWith<$Res>
    implements $RequestDeviceTokenModelCopyWith<$Res> {
  factory _$RequestDeviceTokenModelCopyWith(_RequestDeviceTokenModel value,
          $Res Function(_RequestDeviceTokenModel) then) =
      __$RequestDeviceTokenModelCopyWithImpl<$Res>;
  @override
  $Res call({String deviceToken});
}

/// @nodoc
class __$RequestDeviceTokenModelCopyWithImpl<$Res>
    extends _$RequestDeviceTokenModelCopyWithImpl<$Res>
    implements _$RequestDeviceTokenModelCopyWith<$Res> {
  __$RequestDeviceTokenModelCopyWithImpl(_RequestDeviceTokenModel _value,
      $Res Function(_RequestDeviceTokenModel) _then)
      : super(_value, (v) => _then(v as _RequestDeviceTokenModel));

  @override
  _RequestDeviceTokenModel get _value =>
      super._value as _RequestDeviceTokenModel;

  @override
  $Res call({
    Object? deviceToken = freezed,
  }) {
    return _then(_RequestDeviceTokenModel(
      deviceToken: deviceToken == freezed
          ? _value.deviceToken
          : deviceToken // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_RequestDeviceTokenModel implements _RequestDeviceTokenModel {
  const _$_RequestDeviceTokenModel({required this.deviceToken});

  factory _$_RequestDeviceTokenModel.fromJson(Map<String, dynamic> json) =>
      _$_$_RequestDeviceTokenModelFromJson(json);

  @override
  final String deviceToken;

  @override
  String toString() {
    return 'RequestDeviceTokenModel(deviceToken: $deviceToken)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _RequestDeviceTokenModel &&
            (identical(other.deviceToken, deviceToken) ||
                const DeepCollectionEquality()
                    .equals(other.deviceToken, deviceToken)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(deviceToken);

  @JsonKey(ignore: true)
  @override
  _$RequestDeviceTokenModelCopyWith<_RequestDeviceTokenModel> get copyWith =>
      __$RequestDeviceTokenModelCopyWithImpl<_RequestDeviceTokenModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_RequestDeviceTokenModelToJson(this);
  }
}

abstract class _RequestDeviceTokenModel implements RequestDeviceTokenModel {
  const factory _RequestDeviceTokenModel({required String deviceToken}) =
      _$_RequestDeviceTokenModel;

  factory _RequestDeviceTokenModel.fromJson(Map<String, dynamic> json) =
      _$_RequestDeviceTokenModel.fromJson;

  @override
  String get deviceToken => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$RequestDeviceTokenModelCopyWith<_RequestDeviceTokenModel> get copyWith =>
      throw _privateConstructorUsedError;
}
