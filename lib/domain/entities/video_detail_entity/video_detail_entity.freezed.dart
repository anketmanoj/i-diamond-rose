// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'video_detail_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

VideoDetailEntity _$VideoDetailEntityFromJson(Map<String, dynamic> json) {
  return _VideoDetailEntity.fromJson(json);
}

/// @nodoc
class _$VideoDetailEntityTearOff {
  const _$VideoDetailEntityTearOff();

  _VideoDetailEntity call(
      {int userId = 0,
      String avatarUrl = "",
      String displayName = "",
      VideoItemDetailEntity? videoItemDetail}) {
    return _VideoDetailEntity(
      userId: userId,
      avatarUrl: avatarUrl,
      displayName: displayName,
      videoItemDetail: videoItemDetail,
    );
  }

  VideoDetailEntity fromJson(Map<String, Object> json) {
    return VideoDetailEntity.fromJson(json);
  }
}

/// @nodoc
const $VideoDetailEntity = _$VideoDetailEntityTearOff();

/// @nodoc
mixin _$VideoDetailEntity {
  int get userId => throw _privateConstructorUsedError;
  String get avatarUrl => throw _privateConstructorUsedError;
  String get displayName => throw _privateConstructorUsedError;
  VideoItemDetailEntity? get videoItemDetail =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $VideoDetailEntityCopyWith<VideoDetailEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VideoDetailEntityCopyWith<$Res> {
  factory $VideoDetailEntityCopyWith(
          VideoDetailEntity value, $Res Function(VideoDetailEntity) then) =
      _$VideoDetailEntityCopyWithImpl<$Res>;
  $Res call(
      {int userId,
      String avatarUrl,
      String displayName,
      VideoItemDetailEntity? videoItemDetail});

  $VideoItemDetailEntityCopyWith<$Res>? get videoItemDetail;
}

/// @nodoc
class _$VideoDetailEntityCopyWithImpl<$Res>
    implements $VideoDetailEntityCopyWith<$Res> {
  _$VideoDetailEntityCopyWithImpl(this._value, this._then);

  final VideoDetailEntity _value;
  // ignore: unused_field
  final $Res Function(VideoDetailEntity) _then;

  @override
  $Res call({
    Object? userId = freezed,
    Object? avatarUrl = freezed,
    Object? displayName = freezed,
    Object? videoItemDetail = freezed,
  }) {
    return _then(_value.copyWith(
      userId: userId == freezed
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int,
      avatarUrl: avatarUrl == freezed
          ? _value.avatarUrl
          : avatarUrl // ignore: cast_nullable_to_non_nullable
              as String,
      displayName: displayName == freezed
          ? _value.displayName
          : displayName // ignore: cast_nullable_to_non_nullable
              as String,
      videoItemDetail: videoItemDetail == freezed
          ? _value.videoItemDetail
          : videoItemDetail // ignore: cast_nullable_to_non_nullable
              as VideoItemDetailEntity?,
    ));
  }

  @override
  $VideoItemDetailEntityCopyWith<$Res>? get videoItemDetail {
    if (_value.videoItemDetail == null) {
      return null;
    }

    return $VideoItemDetailEntityCopyWith<$Res>(_value.videoItemDetail!,
        (value) {
      return _then(_value.copyWith(videoItemDetail: value));
    });
  }
}

/// @nodoc
abstract class _$VideoDetailEntityCopyWith<$Res>
    implements $VideoDetailEntityCopyWith<$Res> {
  factory _$VideoDetailEntityCopyWith(
          _VideoDetailEntity value, $Res Function(_VideoDetailEntity) then) =
      __$VideoDetailEntityCopyWithImpl<$Res>;
  @override
  $Res call(
      {int userId,
      String avatarUrl,
      String displayName,
      VideoItemDetailEntity? videoItemDetail});

  @override
  $VideoItemDetailEntityCopyWith<$Res>? get videoItemDetail;
}

/// @nodoc
class __$VideoDetailEntityCopyWithImpl<$Res>
    extends _$VideoDetailEntityCopyWithImpl<$Res>
    implements _$VideoDetailEntityCopyWith<$Res> {
  __$VideoDetailEntityCopyWithImpl(
      _VideoDetailEntity _value, $Res Function(_VideoDetailEntity) _then)
      : super(_value, (v) => _then(v as _VideoDetailEntity));

  @override
  _VideoDetailEntity get _value => super._value as _VideoDetailEntity;

  @override
  $Res call({
    Object? userId = freezed,
    Object? avatarUrl = freezed,
    Object? displayName = freezed,
    Object? videoItemDetail = freezed,
  }) {
    return _then(_VideoDetailEntity(
      userId: userId == freezed
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int,
      avatarUrl: avatarUrl == freezed
          ? _value.avatarUrl
          : avatarUrl // ignore: cast_nullable_to_non_nullable
              as String,
      displayName: displayName == freezed
          ? _value.displayName
          : displayName // ignore: cast_nullable_to_non_nullable
              as String,
      videoItemDetail: videoItemDetail == freezed
          ? _value.videoItemDetail
          : videoItemDetail // ignore: cast_nullable_to_non_nullable
              as VideoItemDetailEntity?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_VideoDetailEntity implements _VideoDetailEntity {
  const _$_VideoDetailEntity(
      {this.userId = 0,
      this.avatarUrl = "",
      this.displayName = "",
      this.videoItemDetail});

  factory _$_VideoDetailEntity.fromJson(Map<String, dynamic> json) =>
      _$_$_VideoDetailEntityFromJson(json);

  @JsonKey(defaultValue: 0)
  @override
  final int userId;
  @JsonKey(defaultValue: "")
  @override
  final String avatarUrl;
  @JsonKey(defaultValue: "")
  @override
  final String displayName;
  @override
  final VideoItemDetailEntity? videoItemDetail;

  @override
  String toString() {
    return 'VideoDetailEntity(userId: $userId, avatarUrl: $avatarUrl, displayName: $displayName, videoItemDetail: $videoItemDetail)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _VideoDetailEntity &&
            (identical(other.userId, userId) ||
                const DeepCollectionEquality().equals(other.userId, userId)) &&
            (identical(other.avatarUrl, avatarUrl) ||
                const DeepCollectionEquality()
                    .equals(other.avatarUrl, avatarUrl)) &&
            (identical(other.displayName, displayName) ||
                const DeepCollectionEquality()
                    .equals(other.displayName, displayName)) &&
            (identical(other.videoItemDetail, videoItemDetail) ||
                const DeepCollectionEquality()
                    .equals(other.videoItemDetail, videoItemDetail)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(userId) ^
      const DeepCollectionEquality().hash(avatarUrl) ^
      const DeepCollectionEquality().hash(displayName) ^
      const DeepCollectionEquality().hash(videoItemDetail);

  @JsonKey(ignore: true)
  @override
  _$VideoDetailEntityCopyWith<_VideoDetailEntity> get copyWith =>
      __$VideoDetailEntityCopyWithImpl<_VideoDetailEntity>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_VideoDetailEntityToJson(this);
  }
}

abstract class _VideoDetailEntity implements VideoDetailEntity {
  const factory _VideoDetailEntity(
      {int userId,
      String avatarUrl,
      String displayName,
      VideoItemDetailEntity? videoItemDetail}) = _$_VideoDetailEntity;

  factory _VideoDetailEntity.fromJson(Map<String, dynamic> json) =
      _$_VideoDetailEntity.fromJson;

  @override
  int get userId => throw _privateConstructorUsedError;
  @override
  String get avatarUrl => throw _privateConstructorUsedError;
  @override
  String get displayName => throw _privateConstructorUsedError;
  @override
  VideoItemDetailEntity? get videoItemDetail =>
      throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$VideoDetailEntityCopyWith<_VideoDetailEntity> get copyWith =>
      throw _privateConstructorUsedError;
}
