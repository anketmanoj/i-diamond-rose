// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'request_following_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

RequestFollowingModel _$RequestFollowingModelFromJson(
    Map<String, dynamic> json) {
  return _RequestFollowingModel.fromJson(json);
}

/// @nodoc
class _$RequestFollowingModelTearOff {
  const _$RequestFollowingModelTearOff();

  _RequestFollowingModel call({num uid = 0}) {
    return _RequestFollowingModel(
      uid: uid,
    );
  }

  RequestFollowingModel fromJson(Map<String, Object> json) {
    return RequestFollowingModel.fromJson(json);
  }
}

/// @nodoc
const $RequestFollowingModel = _$RequestFollowingModelTearOff();

/// @nodoc
mixin _$RequestFollowingModel {
  num get uid => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RequestFollowingModelCopyWith<RequestFollowingModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RequestFollowingModelCopyWith<$Res> {
  factory $RequestFollowingModelCopyWith(RequestFollowingModel value,
          $Res Function(RequestFollowingModel) then) =
      _$RequestFollowingModelCopyWithImpl<$Res>;
  $Res call({num uid});
}

/// @nodoc
class _$RequestFollowingModelCopyWithImpl<$Res>
    implements $RequestFollowingModelCopyWith<$Res> {
  _$RequestFollowingModelCopyWithImpl(this._value, this._then);

  final RequestFollowingModel _value;
  // ignore: unused_field
  final $Res Function(RequestFollowingModel) _then;

  @override
  $Res call({
    Object? uid = freezed,
  }) {
    return _then(_value.copyWith(
      uid: uid == freezed
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as num,
    ));
  }
}

/// @nodoc
abstract class _$RequestFollowingModelCopyWith<$Res>
    implements $RequestFollowingModelCopyWith<$Res> {
  factory _$RequestFollowingModelCopyWith(_RequestFollowingModel value,
          $Res Function(_RequestFollowingModel) then) =
      __$RequestFollowingModelCopyWithImpl<$Res>;
  @override
  $Res call({num uid});
}

/// @nodoc
class __$RequestFollowingModelCopyWithImpl<$Res>
    extends _$RequestFollowingModelCopyWithImpl<$Res>
    implements _$RequestFollowingModelCopyWith<$Res> {
  __$RequestFollowingModelCopyWithImpl(_RequestFollowingModel _value,
      $Res Function(_RequestFollowingModel) _then)
      : super(_value, (v) => _then(v as _RequestFollowingModel));

  @override
  _RequestFollowingModel get _value => super._value as _RequestFollowingModel;

  @override
  $Res call({
    Object? uid = freezed,
  }) {
    return _then(_RequestFollowingModel(
      uid: uid == freezed
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as num,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_RequestFollowingModel implements _RequestFollowingModel {
  const _$_RequestFollowingModel({this.uid = 0});

  factory _$_RequestFollowingModel.fromJson(Map<String, dynamic> json) =>
      _$_$_RequestFollowingModelFromJson(json);

  @JsonKey(defaultValue: 0)
  @override
  final num uid;

  @override
  String toString() {
    return 'RequestFollowingModel(uid: $uid)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _RequestFollowingModel &&
            (identical(other.uid, uid) ||
                const DeepCollectionEquality().equals(other.uid, uid)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(uid);

  @JsonKey(ignore: true)
  @override
  _$RequestFollowingModelCopyWith<_RequestFollowingModel> get copyWith =>
      __$RequestFollowingModelCopyWithImpl<_RequestFollowingModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_RequestFollowingModelToJson(this);
  }
}

abstract class _RequestFollowingModel implements RequestFollowingModel {
  const factory _RequestFollowingModel({num uid}) = _$_RequestFollowingModel;

  factory _RequestFollowingModel.fromJson(Map<String, dynamic> json) =
      _$_RequestFollowingModel.fromJson;

  @override
  num get uid => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$RequestFollowingModelCopyWith<_RequestFollowingModel> get copyWith =>
      throw _privateConstructorUsedError;
}
