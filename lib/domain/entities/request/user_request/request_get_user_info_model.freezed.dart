// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'request_get_user_info_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

RequestGetUserInfoModel _$RequestGetUserInfoModelFromJson(
    Map<String, dynamic> json) {
  return _RequestGetUserInfoModel.fromJson(json);
}

/// @nodoc
class _$RequestGetUserInfoModelTearOff {
  const _$RequestGetUserInfoModelTearOff();

  _RequestGetUserInfoModel call({required String uid}) {
    return _RequestGetUserInfoModel(
      uid: uid,
    );
  }

  RequestGetUserInfoModel fromJson(Map<String, Object> json) {
    return RequestGetUserInfoModel.fromJson(json);
  }
}

/// @nodoc
const $RequestGetUserInfoModel = _$RequestGetUserInfoModelTearOff();

/// @nodoc
mixin _$RequestGetUserInfoModel {
  String get uid => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RequestGetUserInfoModelCopyWith<RequestGetUserInfoModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RequestGetUserInfoModelCopyWith<$Res> {
  factory $RequestGetUserInfoModelCopyWith(RequestGetUserInfoModel value,
          $Res Function(RequestGetUserInfoModel) then) =
      _$RequestGetUserInfoModelCopyWithImpl<$Res>;
  $Res call({String uid});
}

/// @nodoc
class _$RequestGetUserInfoModelCopyWithImpl<$Res>
    implements $RequestGetUserInfoModelCopyWith<$Res> {
  _$RequestGetUserInfoModelCopyWithImpl(this._value, this._then);

  final RequestGetUserInfoModel _value;
  // ignore: unused_field
  final $Res Function(RequestGetUserInfoModel) _then;

  @override
  $Res call({
    Object? uid = freezed,
  }) {
    return _then(_value.copyWith(
      uid: uid == freezed
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$RequestGetUserInfoModelCopyWith<$Res>
    implements $RequestGetUserInfoModelCopyWith<$Res> {
  factory _$RequestGetUserInfoModelCopyWith(_RequestGetUserInfoModel value,
          $Res Function(_RequestGetUserInfoModel) then) =
      __$RequestGetUserInfoModelCopyWithImpl<$Res>;
  @override
  $Res call({String uid});
}

/// @nodoc
class __$RequestGetUserInfoModelCopyWithImpl<$Res>
    extends _$RequestGetUserInfoModelCopyWithImpl<$Res>
    implements _$RequestGetUserInfoModelCopyWith<$Res> {
  __$RequestGetUserInfoModelCopyWithImpl(_RequestGetUserInfoModel _value,
      $Res Function(_RequestGetUserInfoModel) _then)
      : super(_value, (v) => _then(v as _RequestGetUserInfoModel));

  @override
  _RequestGetUserInfoModel get _value =>
      super._value as _RequestGetUserInfoModel;

  @override
  $Res call({
    Object? uid = freezed,
  }) {
    return _then(_RequestGetUserInfoModel(
      uid: uid == freezed
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_RequestGetUserInfoModel implements _RequestGetUserInfoModel {
  const _$_RequestGetUserInfoModel({required this.uid});

  factory _$_RequestGetUserInfoModel.fromJson(Map<String, dynamic> json) =>
      _$_$_RequestGetUserInfoModelFromJson(json);

  @override
  final String uid;

  @override
  String toString() {
    return 'RequestGetUserInfoModel(uid: $uid)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _RequestGetUserInfoModel &&
            (identical(other.uid, uid) ||
                const DeepCollectionEquality().equals(other.uid, uid)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(uid);

  @JsonKey(ignore: true)
  @override
  _$RequestGetUserInfoModelCopyWith<_RequestGetUserInfoModel> get copyWith =>
      __$RequestGetUserInfoModelCopyWithImpl<_RequestGetUserInfoModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_RequestGetUserInfoModelToJson(this);
  }
}

abstract class _RequestGetUserInfoModel implements RequestGetUserInfoModel {
  const factory _RequestGetUserInfoModel({required String uid}) =
      _$_RequestGetUserInfoModel;

  factory _RequestGetUserInfoModel.fromJson(Map<String, dynamic> json) =
      _$_RequestGetUserInfoModel.fromJson;

  @override
  String get uid => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$RequestGetUserInfoModelCopyWith<_RequestGetUserInfoModel> get copyWith =>
      throw _privateConstructorUsedError;
}
