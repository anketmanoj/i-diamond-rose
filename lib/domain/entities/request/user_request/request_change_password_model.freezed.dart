// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'request_change_password_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

RequestChangePasswordModel _$RequestChangePasswordModelFromJson(
    Map<String, dynamic> json) {
  return _RequestChangePasswordModel.fromJson(json);
}

/// @nodoc
class _$RequestChangePasswordModelTearOff {
  const _$RequestChangePasswordModelTearOff();

  _RequestChangePasswordModel call(
      {required String password,
      required String passwordConfirm,
      required String passwordNew}) {
    return _RequestChangePasswordModel(
      password: password,
      passwordConfirm: passwordConfirm,
      passwordNew: passwordNew,
    );
  }

  RequestChangePasswordModel fromJson(Map<String, Object> json) {
    return RequestChangePasswordModel.fromJson(json);
  }
}

/// @nodoc
const $RequestChangePasswordModel = _$RequestChangePasswordModelTearOff();

/// @nodoc
mixin _$RequestChangePasswordModel {
  String get password => throw _privateConstructorUsedError;
  String get passwordConfirm => throw _privateConstructorUsedError;
  String get passwordNew => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RequestChangePasswordModelCopyWith<RequestChangePasswordModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RequestChangePasswordModelCopyWith<$Res> {
  factory $RequestChangePasswordModelCopyWith(RequestChangePasswordModel value,
          $Res Function(RequestChangePasswordModel) then) =
      _$RequestChangePasswordModelCopyWithImpl<$Res>;
  $Res call({String password, String passwordConfirm, String passwordNew});
}

/// @nodoc
class _$RequestChangePasswordModelCopyWithImpl<$Res>
    implements $RequestChangePasswordModelCopyWith<$Res> {
  _$RequestChangePasswordModelCopyWithImpl(this._value, this._then);

  final RequestChangePasswordModel _value;
  // ignore: unused_field
  final $Res Function(RequestChangePasswordModel) _then;

  @override
  $Res call({
    Object? password = freezed,
    Object? passwordConfirm = freezed,
    Object? passwordNew = freezed,
  }) {
    return _then(_value.copyWith(
      password: password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      passwordConfirm: passwordConfirm == freezed
          ? _value.passwordConfirm
          : passwordConfirm // ignore: cast_nullable_to_non_nullable
              as String,
      passwordNew: passwordNew == freezed
          ? _value.passwordNew
          : passwordNew // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$RequestChangePasswordModelCopyWith<$Res>
    implements $RequestChangePasswordModelCopyWith<$Res> {
  factory _$RequestChangePasswordModelCopyWith(
          _RequestChangePasswordModel value,
          $Res Function(_RequestChangePasswordModel) then) =
      __$RequestChangePasswordModelCopyWithImpl<$Res>;
  @override
  $Res call({String password, String passwordConfirm, String passwordNew});
}

/// @nodoc
class __$RequestChangePasswordModelCopyWithImpl<$Res>
    extends _$RequestChangePasswordModelCopyWithImpl<$Res>
    implements _$RequestChangePasswordModelCopyWith<$Res> {
  __$RequestChangePasswordModelCopyWithImpl(_RequestChangePasswordModel _value,
      $Res Function(_RequestChangePasswordModel) _then)
      : super(_value, (v) => _then(v as _RequestChangePasswordModel));

  @override
  _RequestChangePasswordModel get _value =>
      super._value as _RequestChangePasswordModel;

  @override
  $Res call({
    Object? password = freezed,
    Object? passwordConfirm = freezed,
    Object? passwordNew = freezed,
  }) {
    return _then(_RequestChangePasswordModel(
      password: password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      passwordConfirm: passwordConfirm == freezed
          ? _value.passwordConfirm
          : passwordConfirm // ignore: cast_nullable_to_non_nullable
              as String,
      passwordNew: passwordNew == freezed
          ? _value.passwordNew
          : passwordNew // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_RequestChangePasswordModel implements _RequestChangePasswordModel {
  const _$_RequestChangePasswordModel(
      {required this.password,
      required this.passwordConfirm,
      required this.passwordNew});

  factory _$_RequestChangePasswordModel.fromJson(Map<String, dynamic> json) =>
      _$_$_RequestChangePasswordModelFromJson(json);

  @override
  final String password;
  @override
  final String passwordConfirm;
  @override
  final String passwordNew;

  @override
  String toString() {
    return 'RequestChangePasswordModel(password: $password, passwordConfirm: $passwordConfirm, passwordNew: $passwordNew)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _RequestChangePasswordModel &&
            (identical(other.password, password) ||
                const DeepCollectionEquality()
                    .equals(other.password, password)) &&
            (identical(other.passwordConfirm, passwordConfirm) ||
                const DeepCollectionEquality()
                    .equals(other.passwordConfirm, passwordConfirm)) &&
            (identical(other.passwordNew, passwordNew) ||
                const DeepCollectionEquality()
                    .equals(other.passwordNew, passwordNew)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(password) ^
      const DeepCollectionEquality().hash(passwordConfirm) ^
      const DeepCollectionEquality().hash(passwordNew);

  @JsonKey(ignore: true)
  @override
  _$RequestChangePasswordModelCopyWith<_RequestChangePasswordModel>
      get copyWith => __$RequestChangePasswordModelCopyWithImpl<
          _RequestChangePasswordModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_RequestChangePasswordModelToJson(this);
  }
}

abstract class _RequestChangePasswordModel
    implements RequestChangePasswordModel {
  const factory _RequestChangePasswordModel(
      {required String password,
      required String passwordConfirm,
      required String passwordNew}) = _$_RequestChangePasswordModel;

  factory _RequestChangePasswordModel.fromJson(Map<String, dynamic> json) =
      _$_RequestChangePasswordModel.fromJson;

  @override
  String get password => throw _privateConstructorUsedError;
  @override
  String get passwordConfirm => throw _privateConstructorUsedError;
  @override
  String get passwordNew => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$RequestChangePasswordModelCopyWith<_RequestChangePasswordModel>
      get copyWith => throw _privateConstructorUsedError;
}
