// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'request_block_user_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

RequestBlockUserModel _$RequestBlockUserModelFromJson(
    Map<String, dynamic> json) {
  return _RequestBlockUserModel.fromJson(json);
}

/// @nodoc
class _$RequestBlockUserModelTearOff {
  const _$RequestBlockUserModelTearOff();

  _RequestBlockUserModel call({num blockUserId = 0}) {
    return _RequestBlockUserModel(
      blockUserId: blockUserId,
    );
  }

  RequestBlockUserModel fromJson(Map<String, Object> json) {
    return RequestBlockUserModel.fromJson(json);
  }
}

/// @nodoc
const $RequestBlockUserModel = _$RequestBlockUserModelTearOff();

/// @nodoc
mixin _$RequestBlockUserModel {
  num get blockUserId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RequestBlockUserModelCopyWith<RequestBlockUserModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RequestBlockUserModelCopyWith<$Res> {
  factory $RequestBlockUserModelCopyWith(RequestBlockUserModel value,
          $Res Function(RequestBlockUserModel) then) =
      _$RequestBlockUserModelCopyWithImpl<$Res>;
  $Res call({num blockUserId});
}

/// @nodoc
class _$RequestBlockUserModelCopyWithImpl<$Res>
    implements $RequestBlockUserModelCopyWith<$Res> {
  _$RequestBlockUserModelCopyWithImpl(this._value, this._then);

  final RequestBlockUserModel _value;
  // ignore: unused_field
  final $Res Function(RequestBlockUserModel) _then;

  @override
  $Res call({
    Object? blockUserId = freezed,
  }) {
    return _then(_value.copyWith(
      blockUserId: blockUserId == freezed
          ? _value.blockUserId
          : blockUserId // ignore: cast_nullable_to_non_nullable
              as num,
    ));
  }
}

/// @nodoc
abstract class _$RequestBlockUserModelCopyWith<$Res>
    implements $RequestBlockUserModelCopyWith<$Res> {
  factory _$RequestBlockUserModelCopyWith(_RequestBlockUserModel value,
          $Res Function(_RequestBlockUserModel) then) =
      __$RequestBlockUserModelCopyWithImpl<$Res>;
  @override
  $Res call({num blockUserId});
}

/// @nodoc
class __$RequestBlockUserModelCopyWithImpl<$Res>
    extends _$RequestBlockUserModelCopyWithImpl<$Res>
    implements _$RequestBlockUserModelCopyWith<$Res> {
  __$RequestBlockUserModelCopyWithImpl(_RequestBlockUserModel _value,
      $Res Function(_RequestBlockUserModel) _then)
      : super(_value, (v) => _then(v as _RequestBlockUserModel));

  @override
  _RequestBlockUserModel get _value => super._value as _RequestBlockUserModel;

  @override
  $Res call({
    Object? blockUserId = freezed,
  }) {
    return _then(_RequestBlockUserModel(
      blockUserId: blockUserId == freezed
          ? _value.blockUserId
          : blockUserId // ignore: cast_nullable_to_non_nullable
              as num,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_RequestBlockUserModel implements _RequestBlockUserModel {
  const _$_RequestBlockUserModel({this.blockUserId = 0});

  factory _$_RequestBlockUserModel.fromJson(Map<String, dynamic> json) =>
      _$_$_RequestBlockUserModelFromJson(json);

  @JsonKey(defaultValue: 0)
  @override
  final num blockUserId;

  @override
  String toString() {
    return 'RequestBlockUserModel(blockUserId: $blockUserId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _RequestBlockUserModel &&
            (identical(other.blockUserId, blockUserId) ||
                const DeepCollectionEquality()
                    .equals(other.blockUserId, blockUserId)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(blockUserId);

  @JsonKey(ignore: true)
  @override
  _$RequestBlockUserModelCopyWith<_RequestBlockUserModel> get copyWith =>
      __$RequestBlockUserModelCopyWithImpl<_RequestBlockUserModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_RequestBlockUserModelToJson(this);
  }
}

abstract class _RequestBlockUserModel implements RequestBlockUserModel {
  const factory _RequestBlockUserModel({num blockUserId}) =
      _$_RequestBlockUserModel;

  factory _RequestBlockUserModel.fromJson(Map<String, dynamic> json) =
      _$_RequestBlockUserModel.fromJson;

  @override
  num get blockUserId => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$RequestBlockUserModelCopyWith<_RequestBlockUserModel> get copyWith =>
      throw _privateConstructorUsedError;
}
