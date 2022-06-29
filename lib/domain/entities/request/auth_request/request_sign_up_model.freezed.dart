// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'request_sign_up_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

RequestSignUpModel _$RequestSignUpModelFromJson(Map<String, dynamic> json) {
  return _RequestSignUpModel.fromJson(json);
}

/// @nodoc
class _$RequestSignUpModelTearOff {
  const _$RequestSignUpModelTearOff();

  _RequestSignUpModel call(
      {required String displayName,
      required String email,
      int countryId = 0,
      int gender = 0,
      required String password,
      required String dateOfBirth,
      required String roleCd,
      required String mobile,
      int userTypeId = 0,
      required String userName,
      required String language}) {
    return _RequestSignUpModel(
      displayName: displayName,
      email: email,
      countryId: countryId,
      gender: gender,
      password: password,
      dateOfBirth: dateOfBirth,
      roleCd: roleCd,
      mobile: mobile,
      userTypeId: userTypeId,
      userName: userName,
      language: language,
    );
  }

  RequestSignUpModel fromJson(Map<String, Object> json) {
    return RequestSignUpModel.fromJson(json);
  }
}

/// @nodoc
const $RequestSignUpModel = _$RequestSignUpModelTearOff();

/// @nodoc
mixin _$RequestSignUpModel {
  String get displayName => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  int get countryId => throw _privateConstructorUsedError;
  int get gender => throw _privateConstructorUsedError;
  String get password => throw _privateConstructorUsedError;
  String get dateOfBirth => throw _privateConstructorUsedError;
  String get roleCd => throw _privateConstructorUsedError;
  String get mobile => throw _privateConstructorUsedError;
  int get userTypeId => throw _privateConstructorUsedError;
  String get userName => throw _privateConstructorUsedError;
  String get language => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RequestSignUpModelCopyWith<RequestSignUpModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RequestSignUpModelCopyWith<$Res> {
  factory $RequestSignUpModelCopyWith(
          RequestSignUpModel value, $Res Function(RequestSignUpModel) then) =
      _$RequestSignUpModelCopyWithImpl<$Res>;
  $Res call(
      {String displayName,
      String email,
      int countryId,
      int gender,
      String password,
      String dateOfBirth,
      String roleCd,
      String mobile,
      int userTypeId,
      String userName,
      String language});
}

/// @nodoc
class _$RequestSignUpModelCopyWithImpl<$Res>
    implements $RequestSignUpModelCopyWith<$Res> {
  _$RequestSignUpModelCopyWithImpl(this._value, this._then);

  final RequestSignUpModel _value;
  // ignore: unused_field
  final $Res Function(RequestSignUpModel) _then;

  @override
  $Res call({
    Object? displayName = freezed,
    Object? email = freezed,
    Object? countryId = freezed,
    Object? gender = freezed,
    Object? password = freezed,
    Object? dateOfBirth = freezed,
    Object? roleCd = freezed,
    Object? mobile = freezed,
    Object? userTypeId = freezed,
    Object? userName = freezed,
    Object? language = freezed,
  }) {
    return _then(_value.copyWith(
      displayName: displayName == freezed
          ? _value.displayName
          : displayName // ignore: cast_nullable_to_non_nullable
              as String,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      countryId: countryId == freezed
          ? _value.countryId
          : countryId // ignore: cast_nullable_to_non_nullable
              as int,
      gender: gender == freezed
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as int,
      password: password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      dateOfBirth: dateOfBirth == freezed
          ? _value.dateOfBirth
          : dateOfBirth // ignore: cast_nullable_to_non_nullable
              as String,
      roleCd: roleCd == freezed
          ? _value.roleCd
          : roleCd // ignore: cast_nullable_to_non_nullable
              as String,
      mobile: mobile == freezed
          ? _value.mobile
          : mobile // ignore: cast_nullable_to_non_nullable
              as String,
      userTypeId: userTypeId == freezed
          ? _value.userTypeId
          : userTypeId // ignore: cast_nullable_to_non_nullable
              as int,
      userName: userName == freezed
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String,
      language: language == freezed
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$RequestSignUpModelCopyWith<$Res>
    implements $RequestSignUpModelCopyWith<$Res> {
  factory _$RequestSignUpModelCopyWith(
          _RequestSignUpModel value, $Res Function(_RequestSignUpModel) then) =
      __$RequestSignUpModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {String displayName,
      String email,
      int countryId,
      int gender,
      String password,
      String dateOfBirth,
      String roleCd,
      String mobile,
      int userTypeId,
      String userName,
      String language});
}

/// @nodoc
class __$RequestSignUpModelCopyWithImpl<$Res>
    extends _$RequestSignUpModelCopyWithImpl<$Res>
    implements _$RequestSignUpModelCopyWith<$Res> {
  __$RequestSignUpModelCopyWithImpl(
      _RequestSignUpModel _value, $Res Function(_RequestSignUpModel) _then)
      : super(_value, (v) => _then(v as _RequestSignUpModel));

  @override
  _RequestSignUpModel get _value => super._value as _RequestSignUpModel;

  @override
  $Res call({
    Object? displayName = freezed,
    Object? email = freezed,
    Object? countryId = freezed,
    Object? gender = freezed,
    Object? password = freezed,
    Object? dateOfBirth = freezed,
    Object? roleCd = freezed,
    Object? mobile = freezed,
    Object? userTypeId = freezed,
    Object? userName = freezed,
    Object? language = freezed,
  }) {
    return _then(_RequestSignUpModel(
      displayName: displayName == freezed
          ? _value.displayName
          : displayName // ignore: cast_nullable_to_non_nullable
              as String,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      countryId: countryId == freezed
          ? _value.countryId
          : countryId // ignore: cast_nullable_to_non_nullable
              as int,
      gender: gender == freezed
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as int,
      password: password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      dateOfBirth: dateOfBirth == freezed
          ? _value.dateOfBirth
          : dateOfBirth // ignore: cast_nullable_to_non_nullable
              as String,
      roleCd: roleCd == freezed
          ? _value.roleCd
          : roleCd // ignore: cast_nullable_to_non_nullable
              as String,
      mobile: mobile == freezed
          ? _value.mobile
          : mobile // ignore: cast_nullable_to_non_nullable
              as String,
      userTypeId: userTypeId == freezed
          ? _value.userTypeId
          : userTypeId // ignore: cast_nullable_to_non_nullable
              as int,
      userName: userName == freezed
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String,
      language: language == freezed
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_RequestSignUpModel implements _RequestSignUpModel {
  const _$_RequestSignUpModel(
      {required this.displayName,
      required this.email,
      this.countryId = 0,
      this.gender = 0,
      required this.password,
      required this.dateOfBirth,
      required this.roleCd,
      required this.mobile,
      this.userTypeId = 0,
      required this.userName,
      required this.language});

  factory _$_RequestSignUpModel.fromJson(Map<String, dynamic> json) =>
      _$_$_RequestSignUpModelFromJson(json);

  @override
  final String displayName;
  @override
  final String email;
  @JsonKey(defaultValue: 0)
  @override
  final int countryId;
  @JsonKey(defaultValue: 0)
  @override
  final int gender;
  @override
  final String password;
  @override
  final String dateOfBirth;
  @override
  final String roleCd;
  @override
  final String mobile;
  @JsonKey(defaultValue: 0)
  @override
  final int userTypeId;
  @override
  final String userName;
  @override
  final String language;

  @override
  String toString() {
    return 'RequestSignUpModel(displayName: $displayName, email: $email, countryId: $countryId, gender: $gender, password: $password, dateOfBirth: $dateOfBirth, roleCd: $roleCd, mobile: $mobile, userTypeId: $userTypeId, userName: $userName, language: $language)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _RequestSignUpModel &&
            (identical(other.displayName, displayName) ||
                const DeepCollectionEquality()
                    .equals(other.displayName, displayName)) &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)) &&
            (identical(other.countryId, countryId) ||
                const DeepCollectionEquality()
                    .equals(other.countryId, countryId)) &&
            (identical(other.gender, gender) ||
                const DeepCollectionEquality().equals(other.gender, gender)) &&
            (identical(other.password, password) ||
                const DeepCollectionEquality()
                    .equals(other.password, password)) &&
            (identical(other.dateOfBirth, dateOfBirth) ||
                const DeepCollectionEquality()
                    .equals(other.dateOfBirth, dateOfBirth)) &&
            (identical(other.roleCd, roleCd) ||
                const DeepCollectionEquality().equals(other.roleCd, roleCd)) &&
            (identical(other.mobile, mobile) ||
                const DeepCollectionEquality().equals(other.mobile, mobile)) &&
            (identical(other.userTypeId, userTypeId) ||
                const DeepCollectionEquality()
                    .equals(other.userTypeId, userTypeId)) &&
            (identical(other.userName, userName) ||
                const DeepCollectionEquality()
                    .equals(other.userName, userName)) &&
            (identical(other.language, language) ||
                const DeepCollectionEquality()
                    .equals(other.language, language)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(displayName) ^
      const DeepCollectionEquality().hash(email) ^
      const DeepCollectionEquality().hash(countryId) ^
      const DeepCollectionEquality().hash(gender) ^
      const DeepCollectionEquality().hash(password) ^
      const DeepCollectionEquality().hash(dateOfBirth) ^
      const DeepCollectionEquality().hash(roleCd) ^
      const DeepCollectionEquality().hash(mobile) ^
      const DeepCollectionEquality().hash(userTypeId) ^
      const DeepCollectionEquality().hash(userName) ^
      const DeepCollectionEquality().hash(language);

  @JsonKey(ignore: true)
  @override
  _$RequestSignUpModelCopyWith<_RequestSignUpModel> get copyWith =>
      __$RequestSignUpModelCopyWithImpl<_RequestSignUpModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_RequestSignUpModelToJson(this);
  }
}

abstract class _RequestSignUpModel implements RequestSignUpModel {
  const factory _RequestSignUpModel(
      {required String displayName,
      required String email,
      int countryId,
      int gender,
      required String password,
      required String dateOfBirth,
      required String roleCd,
      required String mobile,
      int userTypeId,
      required String userName,
      required String language}) = _$_RequestSignUpModel;

  factory _RequestSignUpModel.fromJson(Map<String, dynamic> json) =
      _$_RequestSignUpModel.fromJson;

  @override
  String get displayName => throw _privateConstructorUsedError;
  @override
  String get email => throw _privateConstructorUsedError;
  @override
  int get countryId => throw _privateConstructorUsedError;
  @override
  int get gender => throw _privateConstructorUsedError;
  @override
  String get password => throw _privateConstructorUsedError;
  @override
  String get dateOfBirth => throw _privateConstructorUsedError;
  @override
  String get roleCd => throw _privateConstructorUsedError;
  @override
  String get mobile => throw _privateConstructorUsedError;
  @override
  int get userTypeId => throw _privateConstructorUsedError;
  @override
  String get userName => throw _privateConstructorUsedError;
  @override
  String get language => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$RequestSignUpModelCopyWith<_RequestSignUpModel> get copyWith =>
      throw _privateConstructorUsedError;
}
