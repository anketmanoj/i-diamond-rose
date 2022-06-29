// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'request_create_password_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

RequestCreatePasswordModel _$RequestCreatePasswordModelFromJson(
    Map<String, dynamic> json) {
  return _RequestCreatePasswordModel.fromJson(json);
}

/// @nodoc
class _$RequestCreatePasswordModelTearOff {
  const _$RequestCreatePasswordModelTearOff();

  _RequestCreatePasswordModel call(
      {required String tmpUserId, required String password}) {
    return _RequestCreatePasswordModel(
      tmpUserId: tmpUserId,
      password: password,
    );
  }

  RequestCreatePasswordModel fromJson(Map<String, Object> json) {
    return RequestCreatePasswordModel.fromJson(json);
  }
}

/// @nodoc
const $RequestCreatePasswordModel = _$RequestCreatePasswordModelTearOff();

/// @nodoc
mixin _$RequestCreatePasswordModel {
  String get tmpUserId => throw _privateConstructorUsedError;
  String get password => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RequestCreatePasswordModelCopyWith<RequestCreatePasswordModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RequestCreatePasswordModelCopyWith<$Res> {
  factory $RequestCreatePasswordModelCopyWith(RequestCreatePasswordModel value,
          $Res Function(RequestCreatePasswordModel) then) =
      _$RequestCreatePasswordModelCopyWithImpl<$Res>;
  $Res call({String tmpUserId, String password});
}

/// @nodoc
class _$RequestCreatePasswordModelCopyWithImpl<$Res>
    implements $RequestCreatePasswordModelCopyWith<$Res> {
  _$RequestCreatePasswordModelCopyWithImpl(this._value, this._then);

  final RequestCreatePasswordModel _value;
  // ignore: unused_field
  final $Res Function(RequestCreatePasswordModel) _then;

  @override
  $Res call({
    Object? tmpUserId = freezed,
    Object? password = freezed,
  }) {
    return _then(_value.copyWith(
      tmpUserId: tmpUserId == freezed
          ? _value.tmpUserId
          : tmpUserId // ignore: cast_nullable_to_non_nullable
              as String,
      password: password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$RequestCreatePasswordModelCopyWith<$Res>
    implements $RequestCreatePasswordModelCopyWith<$Res> {
  factory _$RequestCreatePasswordModelCopyWith(
          _RequestCreatePasswordModel value,
          $Res Function(_RequestCreatePasswordModel) then) =
      __$RequestCreatePasswordModelCopyWithImpl<$Res>;
  @override
  $Res call({String tmpUserId, String password});
}

/// @nodoc
class __$RequestCreatePasswordModelCopyWithImpl<$Res>
    extends _$RequestCreatePasswordModelCopyWithImpl<$Res>
    implements _$RequestCreatePasswordModelCopyWith<$Res> {
  __$RequestCreatePasswordModelCopyWithImpl(_RequestCreatePasswordModel _value,
      $Res Function(_RequestCreatePasswordModel) _then)
      : super(_value, (v) => _then(v as _RequestCreatePasswordModel));

  @override
  _RequestCreatePasswordModel get _value =>
      super._value as _RequestCreatePasswordModel;

  @override
  $Res call({
    Object? tmpUserId = freezed,
    Object? password = freezed,
  }) {
    return _then(_RequestCreatePasswordModel(
      tmpUserId: tmpUserId == freezed
          ? _value.tmpUserId
          : tmpUserId // ignore: cast_nullable_to_non_nullable
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
class _$_RequestCreatePasswordModel implements _RequestCreatePasswordModel {
  const _$_RequestCreatePasswordModel(
      {required this.tmpUserId, required this.password});

  factory _$_RequestCreatePasswordModel.fromJson(Map<String, dynamic> json) =>
      _$_$_RequestCreatePasswordModelFromJson(json);

  @override
  final String tmpUserId;
  @override
  final String password;

  @override
  String toString() {
    return 'RequestCreatePasswordModel(tmpUserId: $tmpUserId, password: $password)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _RequestCreatePasswordModel &&
            (identical(other.tmpUserId, tmpUserId) ||
                const DeepCollectionEquality()
                    .equals(other.tmpUserId, tmpUserId)) &&
            (identical(other.password, password) ||
                const DeepCollectionEquality()
                    .equals(other.password, password)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(tmpUserId) ^
      const DeepCollectionEquality().hash(password);

  @JsonKey(ignore: true)
  @override
  _$RequestCreatePasswordModelCopyWith<_RequestCreatePasswordModel>
      get copyWith => __$RequestCreatePasswordModelCopyWithImpl<
          _RequestCreatePasswordModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_RequestCreatePasswordModelToJson(this);
  }
}

abstract class _RequestCreatePasswordModel
    implements RequestCreatePasswordModel {
  const factory _RequestCreatePasswordModel(
      {required String tmpUserId,
      required String password}) = _$_RequestCreatePasswordModel;

  factory _RequestCreatePasswordModel.fromJson(Map<String, dynamic> json) =
      _$_RequestCreatePasswordModel.fromJson;

  @override
  String get tmpUserId => throw _privateConstructorUsedError;
  @override
  String get password => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$RequestCreatePasswordModelCopyWith<_RequestCreatePasswordModel>
      get copyWith => throw _privateConstructorUsedError;
}
