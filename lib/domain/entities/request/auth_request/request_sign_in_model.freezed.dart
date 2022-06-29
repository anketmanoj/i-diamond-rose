// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'request_sign_in_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

RequestSignInModel _$RequestSignInModelFromJson(Map<String, dynamic> json) {
  return _RequestSignInModel.fromJson(json);
}

/// @nodoc
class _$RequestSignInModelTearOff {
  const _$RequestSignInModelTearOff();

  _RequestSignInModel call(
      {required String userNameOrEmail, required String password}) {
    return _RequestSignInModel(
      userNameOrEmail: userNameOrEmail,
      password: password,
    );
  }

  RequestSignInModel fromJson(Map<String, Object> json) {
    return RequestSignInModel.fromJson(json);
  }
}

/// @nodoc
const $RequestSignInModel = _$RequestSignInModelTearOff();

/// @nodoc
mixin _$RequestSignInModel {
  String get userNameOrEmail => throw _privateConstructorUsedError;
  String get password => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RequestSignInModelCopyWith<RequestSignInModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RequestSignInModelCopyWith<$Res> {
  factory $RequestSignInModelCopyWith(
          RequestSignInModel value, $Res Function(RequestSignInModel) then) =
      _$RequestSignInModelCopyWithImpl<$Res>;
  $Res call({String userNameOrEmail, String password});
}

/// @nodoc
class _$RequestSignInModelCopyWithImpl<$Res>
    implements $RequestSignInModelCopyWith<$Res> {
  _$RequestSignInModelCopyWithImpl(this._value, this._then);

  final RequestSignInModel _value;
  // ignore: unused_field
  final $Res Function(RequestSignInModel) _then;

  @override
  $Res call({
    Object? userNameOrEmail = freezed,
    Object? password = freezed,
  }) {
    return _then(_value.copyWith(
      userNameOrEmail: userNameOrEmail == freezed
          ? _value.userNameOrEmail
          : userNameOrEmail // ignore: cast_nullable_to_non_nullable
              as String,
      password: password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$RequestSignInModelCopyWith<$Res>
    implements $RequestSignInModelCopyWith<$Res> {
  factory _$RequestSignInModelCopyWith(
          _RequestSignInModel value, $Res Function(_RequestSignInModel) then) =
      __$RequestSignInModelCopyWithImpl<$Res>;
  @override
  $Res call({String userNameOrEmail, String password});
}

/// @nodoc
class __$RequestSignInModelCopyWithImpl<$Res>
    extends _$RequestSignInModelCopyWithImpl<$Res>
    implements _$RequestSignInModelCopyWith<$Res> {
  __$RequestSignInModelCopyWithImpl(
      _RequestSignInModel _value, $Res Function(_RequestSignInModel) _then)
      : super(_value, (v) => _then(v as _RequestSignInModel));

  @override
  _RequestSignInModel get _value => super._value as _RequestSignInModel;

  @override
  $Res call({
    Object? userNameOrEmail = freezed,
    Object? password = freezed,
  }) {
    return _then(_RequestSignInModel(
      userNameOrEmail: userNameOrEmail == freezed
          ? _value.userNameOrEmail
          : userNameOrEmail // ignore: cast_nullable_to_non_nullable
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
class _$_RequestSignInModel implements _RequestSignInModel {
  const _$_RequestSignInModel(
      {required this.userNameOrEmail, required this.password});

  factory _$_RequestSignInModel.fromJson(Map<String, dynamic> json) =>
      _$_$_RequestSignInModelFromJson(json);

  @override
  final String userNameOrEmail;
  @override
  final String password;

  @override
  String toString() {
    return 'RequestSignInModel(userNameOrEmail: $userNameOrEmail, password: $password)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _RequestSignInModel &&
            (identical(other.userNameOrEmail, userNameOrEmail) ||
                const DeepCollectionEquality()
                    .equals(other.userNameOrEmail, userNameOrEmail)) &&
            (identical(other.password, password) ||
                const DeepCollectionEquality()
                    .equals(other.password, password)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(userNameOrEmail) ^
      const DeepCollectionEquality().hash(password);

  @JsonKey(ignore: true)
  @override
  _$RequestSignInModelCopyWith<_RequestSignInModel> get copyWith =>
      __$RequestSignInModelCopyWithImpl<_RequestSignInModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_RequestSignInModelToJson(this);
  }
}

abstract class _RequestSignInModel implements RequestSignInModel {
  const factory _RequestSignInModel(
      {required String userNameOrEmail,
      required String password}) = _$_RequestSignInModel;

  factory _RequestSignInModel.fromJson(Map<String, dynamic> json) =
      _$_RequestSignInModel.fromJson;

  @override
  String get userNameOrEmail => throw _privateConstructorUsedError;
  @override
  String get password => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$RequestSignInModelCopyWith<_RequestSignInModel> get copyWith =>
      throw _privateConstructorUsedError;
}
