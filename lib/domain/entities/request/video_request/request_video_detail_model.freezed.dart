// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'request_video_detail_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

RequestVideoDetailModel _$RequestVideoDetailModelFromJson(
    Map<String, dynamic> json) {
  return _RequestVideoDetailModel.fromJson(json);
}

/// @nodoc
class _$RequestVideoDetailModelTearOff {
  const _$RequestVideoDetailModelTearOff();

  _RequestVideoDetailModel call({int? id, int? videoId}) {
    return _RequestVideoDetailModel(
      id: id,
      videoId: videoId,
    );
  }

  RequestVideoDetailModel fromJson(Map<String, Object> json) {
    return RequestVideoDetailModel.fromJson(json);
  }
}

/// @nodoc
const $RequestVideoDetailModel = _$RequestVideoDetailModelTearOff();

/// @nodoc
mixin _$RequestVideoDetailModel {
  int? get id => throw _privateConstructorUsedError;
  int? get videoId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RequestVideoDetailModelCopyWith<RequestVideoDetailModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RequestVideoDetailModelCopyWith<$Res> {
  factory $RequestVideoDetailModelCopyWith(RequestVideoDetailModel value,
          $Res Function(RequestVideoDetailModel) then) =
      _$RequestVideoDetailModelCopyWithImpl<$Res>;
  $Res call({int? id, int? videoId});
}

/// @nodoc
class _$RequestVideoDetailModelCopyWithImpl<$Res>
    implements $RequestVideoDetailModelCopyWith<$Res> {
  _$RequestVideoDetailModelCopyWithImpl(this._value, this._then);

  final RequestVideoDetailModel _value;
  // ignore: unused_field
  final $Res Function(RequestVideoDetailModel) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? videoId = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      videoId: videoId == freezed
          ? _value.videoId
          : videoId // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
abstract class _$RequestVideoDetailModelCopyWith<$Res>
    implements $RequestVideoDetailModelCopyWith<$Res> {
  factory _$RequestVideoDetailModelCopyWith(_RequestVideoDetailModel value,
          $Res Function(_RequestVideoDetailModel) then) =
      __$RequestVideoDetailModelCopyWithImpl<$Res>;
  @override
  $Res call({int? id, int? videoId});
}

/// @nodoc
class __$RequestVideoDetailModelCopyWithImpl<$Res>
    extends _$RequestVideoDetailModelCopyWithImpl<$Res>
    implements _$RequestVideoDetailModelCopyWith<$Res> {
  __$RequestVideoDetailModelCopyWithImpl(_RequestVideoDetailModel _value,
      $Res Function(_RequestVideoDetailModel) _then)
      : super(_value, (v) => _then(v as _RequestVideoDetailModel));

  @override
  _RequestVideoDetailModel get _value =>
      super._value as _RequestVideoDetailModel;

  @override
  $Res call({
    Object? id = freezed,
    Object? videoId = freezed,
  }) {
    return _then(_RequestVideoDetailModel(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      videoId: videoId == freezed
          ? _value.videoId
          : videoId // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_RequestVideoDetailModel implements _RequestVideoDetailModel {
  const _$_RequestVideoDetailModel({this.id, this.videoId});

  factory _$_RequestVideoDetailModel.fromJson(Map<String, dynamic> json) =>
      _$_$_RequestVideoDetailModelFromJson(json);

  @override
  final int? id;
  @override
  final int? videoId;

  @override
  String toString() {
    return 'RequestVideoDetailModel(id: $id, videoId: $videoId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _RequestVideoDetailModel &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.videoId, videoId) ||
                const DeepCollectionEquality().equals(other.videoId, videoId)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(videoId);

  @JsonKey(ignore: true)
  @override
  _$RequestVideoDetailModelCopyWith<_RequestVideoDetailModel> get copyWith =>
      __$RequestVideoDetailModelCopyWithImpl<_RequestVideoDetailModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_RequestVideoDetailModelToJson(this);
  }
}

abstract class _RequestVideoDetailModel implements RequestVideoDetailModel {
  const factory _RequestVideoDetailModel({int? id, int? videoId}) =
      _$_RequestVideoDetailModel;

  factory _RequestVideoDetailModel.fromJson(Map<String, dynamic> json) =
      _$_RequestVideoDetailModel.fromJson;

  @override
  int? get id => throw _privateConstructorUsedError;
  @override
  int? get videoId => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$RequestVideoDetailModelCopyWith<_RequestVideoDetailModel> get copyWith =>
      throw _privateConstructorUsedError;
}
