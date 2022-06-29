// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'request_renew_password_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

RequestRenewPasswordModel _$RequestRenewPasswordModelFromJson(
    Map<String, dynamic> json) {
  return _RequestRenewPasswordModel.fromJson(json);
}

/// @nodoc
class _$RequestRenewPasswordModelTearOff {
  const _$RequestRenewPasswordModelTearOff();

  _RequestRenewPasswordModel call(
      {required String email, required String password}) {
    return _RequestRenewPasswordModel(
      email: email,
      password: password,
    );
  }

  RequestRenewPasswordModel fromJson(Map<String, Object> json) {
    return RequestRenewPasswordModel.fromJson(json);
  }
}

/// @nodoc
const $RequestRenewPasswordModel = _$RequestRenewPasswordModelTearOff();

/// @nodoc
mixin _$RequestRenewPasswordModel {
  String get email => throw _privateConstructorUsedError;
  String get password => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RequestRenewPasswordModelCopyWith<RequestRenewPasswordModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RequestRenewPasswordModelCopyWith<$Res> {
  factory $RequestRenewPasswordModelCopyWith(RequestRenewPasswordModel value,
          $Res Function(RequestRenewPasswordModel) then) =
      _$RequestRenewPasswordModelCopyWithImpl<$Res>;
  $Res call({String email, String password});
}

/// @nodoc
class _$RequestRenewPasswordModelCopyWithImpl<$Res>
    implements $RequestRenewPasswordModelCopyWith<$Res> {
  _$RequestRenewPasswordModelCopyWithImpl(this._value, this._then);

  final RequestRenewPasswordModel _value;
  // ignore: unused_field
  final $Res Function(RequestRenewPasswordModel) _then;

  @override
  $Res call({
    Object? email = freezed,
    Object? password = freezed,
  }) {
    return _then(_value.copyWith(
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$RequestRenewPasswordModelCopyWith<$Res>
    implements $RequestRenewPasswordModelCopyWith<$Res> {
  factory _$RequestRenewPasswordModelCopyWith(_RequestRenewPasswordModel value,
          $Res Function(_RequestRenewPasswordModel) then) =
      __$RequestRenewPasswordModelCopyWithImpl<$Res>;
  @override
  $Res call({String email, String password});
}

/// @nodoc
class __$RequestRenewPasswordModelCopyWithImpl<$Res>
    extends _$RequestRenewPasswordModelCopyWithImpl<$Res>
    implements _$RequestRenewPasswordModelCopyWith<$Res> {
  __$RequestRenewPasswordModelCopyWithImpl(_RequestRenewPasswordModel _value,
      $Res Function(_RequestRenewPasswordModel) _then)
      : super(_value, (v) => _then(v as _RequestRenewPasswordModel));

  @override
  _RequestRenewPasswordModel get _value =>
      super._value as _RequestRenewPasswordModel;

  @override
  $Res call({
    Object? email = freezed,
    Object? password = freezed,
  }) {
    return _then(_RequestRenewPasswordModel(
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_RequestRenewPasswordModel implements _RequestRenewPasswordModel {
  const _$_RequestRenewPasswordModel(
      {required this.email, required this.password});

  factory _$_RequestRenewPasswordModel.fromJson(Map<String, dynamic> json) =>
      _$_$_RequestRenewPasswordModelFromJson(json);

  @override
  final String email;
  @override
  final String password;

  @override
  String toString() {
    return 'RequestRenewPasswordModel(email: $email, password: $password)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _RequestRenewPasswordModel &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)) &&
            (identical(other.password, password) ||
                const DeepCollectionEquality()
                    .equals(other.password, password)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(email) ^
      const DeepCollectionEquality().hash(password);

  @JsonKey(ignore: true)
  @override
  _$RequestRenewPasswordModelCopyWith<_RequestRenewPasswordModel>
      get copyWith =>
          __$RequestRenewPasswordModelCopyWithImpl<_RequestRenewPasswordModel>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_RequestRenewPasswordModelToJson(this);
  }
}

abstract class _RequestRenewPasswordModel implements RequestRenewPasswordModel {
  const factory _RequestRenewPasswordModel(
      {required String email,
      required String password}) = _$_RequestRenewPasswordModel;

  factory _RequestRenewPasswordModel.fromJson(Map<String, dynamic> json) =
      _$_RequestRenewPasswordModel.fromJson;

  @override
  String get email => throw _privateConstructorUsedError;
  @override
  String get password => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$RequestRenewPasswordModelCopyWith<_RequestRenewPasswordModel>
      get copyWith => throw _privateConstructorUsedError;
}
