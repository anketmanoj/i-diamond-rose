// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'request_delete_avatar_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

RequestDeleteAvatarModel _$RequestDeleteAvatarModelFromJson(
    Map<String, dynamic> json) {
  return _RequestDeleteAvatarModel.fromJson(json);
}

/// @nodoc
class _$RequestDeleteAvatarModelTearOff {
  const _$RequestDeleteAvatarModelTearOff();

  _RequestDeleteAvatarModel call({required String uid}) {
    return _RequestDeleteAvatarModel(
      uid: uid,
    );
  }

  RequestDeleteAvatarModel fromJson(Map<String, Object> json) {
    return RequestDeleteAvatarModel.fromJson(json);
  }
}

/// @nodoc
const $RequestDeleteAvatarModel = _$RequestDeleteAvatarModelTearOff();

/// @nodoc
mixin _$RequestDeleteAvatarModel {
  String get uid => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RequestDeleteAvatarModelCopyWith<RequestDeleteAvatarModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RequestDeleteAvatarModelCopyWith<$Res> {
  factory $RequestDeleteAvatarModelCopyWith(RequestDeleteAvatarModel value,
          $Res Function(RequestDeleteAvatarModel) then) =
      _$RequestDeleteAvatarModelCopyWithImpl<$Res>;
  $Res call({String uid});
}

/// @nodoc
class _$RequestDeleteAvatarModelCopyWithImpl<$Res>
    implements $RequestDeleteAvatarModelCopyWith<$Res> {
  _$RequestDeleteAvatarModelCopyWithImpl(this._value, this._then);

  final RequestDeleteAvatarModel _value;
  // ignore: unused_field
  final $Res Function(RequestDeleteAvatarModel) _then;

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
abstract class _$RequestDeleteAvatarModelCopyWith<$Res>
    implements $RequestDeleteAvatarModelCopyWith<$Res> {
  factory _$RequestDeleteAvatarModelCopyWith(_RequestDeleteAvatarModel value,
          $Res Function(_RequestDeleteAvatarModel) then) =
      __$RequestDeleteAvatarModelCopyWithImpl<$Res>;
  @override
  $Res call({String uid});
}

/// @nodoc
class __$RequestDeleteAvatarModelCopyWithImpl<$Res>
    extends _$RequestDeleteAvatarModelCopyWithImpl<$Res>
    implements _$RequestDeleteAvatarModelCopyWith<$Res> {
  __$RequestDeleteAvatarModelCopyWithImpl(_RequestDeleteAvatarModel _value,
      $Res Function(_RequestDeleteAvatarModel) _then)
      : super(_value, (v) => _then(v as _RequestDeleteAvatarModel));

  @override
  _RequestDeleteAvatarModel get _value =>
      super._value as _RequestDeleteAvatarModel;

  @override
  $Res call({
    Object? uid = freezed,
  }) {
    return _then(_RequestDeleteAvatarModel(
      uid: uid == freezed
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_RequestDeleteAvatarModel implements _RequestDeleteAvatarModel {
  const _$_RequestDeleteAvatarModel({required this.uid});

  factory _$_RequestDeleteAvatarModel.fromJson(Map<String, dynamic> json) =>
      _$_$_RequestDeleteAvatarModelFromJson(json);

  @override
  final String uid;

  @override
  String toString() {
    return 'RequestDeleteAvatarModel(uid: $uid)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _RequestDeleteAvatarModel &&
            (identical(other.uid, uid) ||
                const DeepCollectionEquality().equals(other.uid, uid)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(uid);

  @JsonKey(ignore: true)
  @override
  _$RequestDeleteAvatarModelCopyWith<_RequestDeleteAvatarModel> get copyWith =>
      __$RequestDeleteAvatarModelCopyWithImpl<_RequestDeleteAvatarModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_RequestDeleteAvatarModelToJson(this);
  }
}

abstract class _RequestDeleteAvatarModel implements RequestDeleteAvatarModel {
  const factory _RequestDeleteAvatarModel({required String uid}) =
      _$_RequestDeleteAvatarModel;

  factory _RequestDeleteAvatarModel.fromJson(Map<String, dynamic> json) =
      _$_RequestDeleteAvatarModel.fromJson;

  @override
  String get uid => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$RequestDeleteAvatarModelCopyWith<_RequestDeleteAvatarModel> get copyWith =>
      throw _privateConstructorUsedError;
}
