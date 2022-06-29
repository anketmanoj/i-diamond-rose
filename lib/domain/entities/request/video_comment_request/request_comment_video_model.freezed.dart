// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'request_comment_video_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

RequestCommentVideoModel _$RequestCommentVideoModelFromJson(
    Map<String, dynamic> json) {
  return _RequestCommentVideoModel.fromJson(json);
}

/// @nodoc
class _$RequestCommentVideoModelTearOff {
  const _$RequestCommentVideoModelTearOff();

  _RequestCommentVideoModel call(
      {required int? type, required int? videoId, int? page, int? size}) {
    return _RequestCommentVideoModel(
      type: type,
      videoId: videoId,
      page: page,
      size: size,
    );
  }

  RequestCommentVideoModel fromJson(Map<String, Object> json) {
    return RequestCommentVideoModel.fromJson(json);
  }
}

/// @nodoc
const $RequestCommentVideoModel = _$RequestCommentVideoModelTearOff();

/// @nodoc
mixin _$RequestCommentVideoModel {
  int? get type => throw _privateConstructorUsedError;
  int? get videoId => throw _privateConstructorUsedError;
  int? get page => throw _privateConstructorUsedError;
  int? get size => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RequestCommentVideoModelCopyWith<RequestCommentVideoModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RequestCommentVideoModelCopyWith<$Res> {
  factory $RequestCommentVideoModelCopyWith(RequestCommentVideoModel value,
          $Res Function(RequestCommentVideoModel) then) =
      _$RequestCommentVideoModelCopyWithImpl<$Res>;
  $Res call({int? type, int? videoId, int? page, int? size});
}

/// @nodoc
class _$RequestCommentVideoModelCopyWithImpl<$Res>
    implements $RequestCommentVideoModelCopyWith<$Res> {
  _$RequestCommentVideoModelCopyWithImpl(this._value, this._then);

  final RequestCommentVideoModel _value;
  // ignore: unused_field
  final $Res Function(RequestCommentVideoModel) _then;

  @override
  $Res call({
    Object? type = freezed,
    Object? videoId = freezed,
    Object? page = freezed,
    Object? size = freezed,
  }) {
    return _then(_value.copyWith(
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as int?,
      videoId: videoId == freezed
          ? _value.videoId
          : videoId // ignore: cast_nullable_to_non_nullable
              as int?,
      page: page == freezed
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int?,
      size: size == freezed
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
abstract class _$RequestCommentVideoModelCopyWith<$Res>
    implements $RequestCommentVideoModelCopyWith<$Res> {
  factory _$RequestCommentVideoModelCopyWith(_RequestCommentVideoModel value,
          $Res Function(_RequestCommentVideoModel) then) =
      __$RequestCommentVideoModelCopyWithImpl<$Res>;
  @override
  $Res call({int? type, int? videoId, int? page, int? size});
}

/// @nodoc
class __$RequestCommentVideoModelCopyWithImpl<$Res>
    extends _$RequestCommentVideoModelCopyWithImpl<$Res>
    implements _$RequestCommentVideoModelCopyWith<$Res> {
  __$RequestCommentVideoModelCopyWithImpl(_RequestCommentVideoModel _value,
      $Res Function(_RequestCommentVideoModel) _then)
      : super(_value, (v) => _then(v as _RequestCommentVideoModel));

  @override
  _RequestCommentVideoModel get _value =>
      super._value as _RequestCommentVideoModel;

  @override
  $Res call({
    Object? type = freezed,
    Object? videoId = freezed,
    Object? page = freezed,
    Object? size = freezed,
  }) {
    return _then(_RequestCommentVideoModel(
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as int?,
      videoId: videoId == freezed
          ? _value.videoId
          : videoId // ignore: cast_nullable_to_non_nullable
              as int?,
      page: page == freezed
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int?,
      size: size == freezed
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_RequestCommentVideoModel implements _RequestCommentVideoModel {
  const _$_RequestCommentVideoModel(
      {required this.type, required this.videoId, this.page, this.size});

  factory _$_RequestCommentVideoModel.fromJson(Map<String, dynamic> json) =>
      _$_$_RequestCommentVideoModelFromJson(json);

  @override
  final int? type;
  @override
  final int? videoId;
  @override
  final int? page;
  @override
  final int? size;

  @override
  String toString() {
    return 'RequestCommentVideoModel(type: $type, videoId: $videoId, page: $page, size: $size)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _RequestCommentVideoModel &&
            (identical(other.type, type) ||
                const DeepCollectionEquality().equals(other.type, type)) &&
            (identical(other.videoId, videoId) ||
                const DeepCollectionEquality()
                    .equals(other.videoId, videoId)) &&
            (identical(other.page, page) ||
                const DeepCollectionEquality().equals(other.page, page)) &&
            (identical(other.size, size) ||
                const DeepCollectionEquality().equals(other.size, size)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(type) ^
      const DeepCollectionEquality().hash(videoId) ^
      const DeepCollectionEquality().hash(page) ^
      const DeepCollectionEquality().hash(size);

  @JsonKey(ignore: true)
  @override
  _$RequestCommentVideoModelCopyWith<_RequestCommentVideoModel> get copyWith =>
      __$RequestCommentVideoModelCopyWithImpl<_RequestCommentVideoModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_RequestCommentVideoModelToJson(this);
  }
}

abstract class _RequestCommentVideoModel implements RequestCommentVideoModel {
  const factory _RequestCommentVideoModel(
      {required int? type,
      required int? videoId,
      int? page,
      int? size}) = _$_RequestCommentVideoModel;

  factory _RequestCommentVideoModel.fromJson(Map<String, dynamic> json) =
      _$_RequestCommentVideoModel.fromJson;

  @override
  int? get type => throw _privateConstructorUsedError;
  @override
  int? get videoId => throw _privateConstructorUsedError;
  @override
  int? get page => throw _privateConstructorUsedError;
  @override
  int? get size => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$RequestCommentVideoModelCopyWith<_RequestCommentVideoModel> get copyWith =>
      throw _privateConstructorUsedError;
}
