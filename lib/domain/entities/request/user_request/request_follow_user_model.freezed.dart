// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'request_follow_user_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

RequestFollowUserModel _$RequestFollowUserModelFromJson(
    Map<String, dynamic> json) {
  return _RequestFollowUserModel.fromJson(json);
}

/// @nodoc
class _$RequestFollowUserModelTearOff {
  const _$RequestFollowUserModelTearOff();

  _RequestFollowUserModel call({num id = 0}) {
    return _RequestFollowUserModel(
      id: id,
    );
  }

  RequestFollowUserModel fromJson(Map<String, Object> json) {
    return RequestFollowUserModel.fromJson(json);
  }
}

/// @nodoc
const $RequestFollowUserModel = _$RequestFollowUserModelTearOff();

/// @nodoc
mixin _$RequestFollowUserModel {
  num get id => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RequestFollowUserModelCopyWith<RequestFollowUserModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RequestFollowUserModelCopyWith<$Res> {
  factory $RequestFollowUserModelCopyWith(RequestFollowUserModel value,
          $Res Function(RequestFollowUserModel) then) =
      _$RequestFollowUserModelCopyWithImpl<$Res>;
  $Res call({num id});
}

/// @nodoc
class _$RequestFollowUserModelCopyWithImpl<$Res>
    implements $RequestFollowUserModelCopyWith<$Res> {
  _$RequestFollowUserModelCopyWithImpl(this._value, this._then);

  final RequestFollowUserModel _value;
  // ignore: unused_field
  final $Res Function(RequestFollowUserModel) _then;

  @override
  $Res call({
    Object? id = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as num,
    ));
  }
}

/// @nodoc
abstract class _$RequestFollowUserModelCopyWith<$Res>
    implements $RequestFollowUserModelCopyWith<$Res> {
  factory _$RequestFollowUserModelCopyWith(_RequestFollowUserModel value,
          $Res Function(_RequestFollowUserModel) then) =
      __$RequestFollowUserModelCopyWithImpl<$Res>;
  @override
  $Res call({num id});
}

/// @nodoc
class __$RequestFollowUserModelCopyWithImpl<$Res>
    extends _$RequestFollowUserModelCopyWithImpl<$Res>
    implements _$RequestFollowUserModelCopyWith<$Res> {
  __$RequestFollowUserModelCopyWithImpl(_RequestFollowUserModel _value,
      $Res Function(_RequestFollowUserModel) _then)
      : super(_value, (v) => _then(v as _RequestFollowUserModel));

  @override
  _RequestFollowUserModel get _value => super._value as _RequestFollowUserModel;

  @override
  $Res call({
    Object? id = freezed,
  }) {
    return _then(_RequestFollowUserModel(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as num,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_RequestFollowUserModel implements _RequestFollowUserModel {
  const _$_RequestFollowUserModel({this.id = 0});

  factory _$_RequestFollowUserModel.fromJson(Map<String, dynamic> json) =>
      _$_$_RequestFollowUserModelFromJson(json);

  @JsonKey(defaultValue: 0)
  @override
  final num id;

  @override
  String toString() {
    return 'RequestFollowUserModel(id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _RequestFollowUserModel &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(id);

  @JsonKey(ignore: true)
  @override
  _$RequestFollowUserModelCopyWith<_RequestFollowUserModel> get copyWith =>
      __$RequestFollowUserModelCopyWithImpl<_RequestFollowUserModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_RequestFollowUserModelToJson(this);
  }
}

abstract class _RequestFollowUserModel implements RequestFollowUserModel {
  const factory _RequestFollowUserModel({num id}) = _$_RequestFollowUserModel;

  factory _RequestFollowUserModel.fromJson(Map<String, dynamic> json) =
      _$_RequestFollowUserModel.fromJson;

  @override
  num get id => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$RequestFollowUserModelCopyWith<_RequestFollowUserModel> get copyWith =>
      throw _privateConstructorUsedError;
}
