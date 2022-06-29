// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'checkout_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CheckoutResponse _$CheckoutResponseFromJson(Map<String, dynamic> json) {
  return _CheckoutResponse.fromJson(json);
}

/// @nodoc
class _$CheckoutResponseTearOff {
  const _$CheckoutResponseTearOff();

  _CheckoutResponse call({CheckoutEntity? response}) {
    return _CheckoutResponse(
      response: response,
    );
  }

  CheckoutResponse fromJson(Map<String, Object> json) {
    return CheckoutResponse.fromJson(json);
  }
}

/// @nodoc
const $CheckoutResponse = _$CheckoutResponseTearOff();

/// @nodoc
mixin _$CheckoutResponse {
  CheckoutEntity? get response => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CheckoutResponseCopyWith<CheckoutResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CheckoutResponseCopyWith<$Res> {
  factory $CheckoutResponseCopyWith(
          CheckoutResponse value, $Res Function(CheckoutResponse) then) =
      _$CheckoutResponseCopyWithImpl<$Res>;
  $Res call({CheckoutEntity? response});

  $CheckoutEntityCopyWith<$Res>? get response;
}

/// @nodoc
class _$CheckoutResponseCopyWithImpl<$Res>
    implements $CheckoutResponseCopyWith<$Res> {
  _$CheckoutResponseCopyWithImpl(this._value, this._then);

  final CheckoutResponse _value;
  // ignore: unused_field
  final $Res Function(CheckoutResponse) _then;

  @override
  $Res call({
    Object? response = freezed,
  }) {
    return _then(_value.copyWith(
      response: response == freezed
          ? _value.response
          : response // ignore: cast_nullable_to_non_nullable
              as CheckoutEntity?,
    ));
  }

  @override
  $CheckoutEntityCopyWith<$Res>? get response {
    if (_value.response == null) {
      return null;
    }

    return $CheckoutEntityCopyWith<$Res>(_value.response!, (value) {
      return _then(_value.copyWith(response: value));
    });
  }
}

/// @nodoc
abstract class _$CheckoutResponseCopyWith<$Res>
    implements $CheckoutResponseCopyWith<$Res> {
  factory _$CheckoutResponseCopyWith(
          _CheckoutResponse value, $Res Function(_CheckoutResponse) then) =
      __$CheckoutResponseCopyWithImpl<$Res>;
  @override
  $Res call({CheckoutEntity? response});

  @override
  $CheckoutEntityCopyWith<$Res>? get response;
}

/// @nodoc
class __$CheckoutResponseCopyWithImpl<$Res>
    extends _$CheckoutResponseCopyWithImpl<$Res>
    implements _$CheckoutResponseCopyWith<$Res> {
  __$CheckoutResponseCopyWithImpl(
      _CheckoutResponse _value, $Res Function(_CheckoutResponse) _then)
      : super(_value, (v) => _then(v as _CheckoutResponse));

  @override
  _CheckoutResponse get _value => super._value as _CheckoutResponse;

  @override
  $Res call({
    Object? response = freezed,
  }) {
    return _then(_CheckoutResponse(
      response: response == freezed
          ? _value.response
          : response // ignore: cast_nullable_to_non_nullable
              as CheckoutEntity?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CheckoutResponse implements _CheckoutResponse {
  const _$_CheckoutResponse({this.response});

  factory _$_CheckoutResponse.fromJson(Map<String, dynamic> json) =>
      _$_$_CheckoutResponseFromJson(json);

  @override
  final CheckoutEntity? response;

  @override
  String toString() {
    return 'CheckoutResponse(response: $response)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _CheckoutResponse &&
            (identical(other.response, response) ||
                const DeepCollectionEquality()
                    .equals(other.response, response)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(response);

  @JsonKey(ignore: true)
  @override
  _$CheckoutResponseCopyWith<_CheckoutResponse> get copyWith =>
      __$CheckoutResponseCopyWithImpl<_CheckoutResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_CheckoutResponseToJson(this);
  }
}

abstract class _CheckoutResponse implements CheckoutResponse {
  const factory _CheckoutResponse({CheckoutEntity? response}) =
      _$_CheckoutResponse;

  factory _CheckoutResponse.fromJson(Map<String, dynamic> json) =
      _$_CheckoutResponse.fromJson;

  @override
  CheckoutEntity? get response => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$CheckoutResponseCopyWith<_CheckoutResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
