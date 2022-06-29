// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'video_following_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

VideoFollowingEntity _$VideoFollowingEntityFromJson(Map<String, dynamic> json) {
  return _VideoFollowingEntity.fromJson(json);
}

/// @nodoc
class _$VideoFollowingEntityTearOff {
  const _$VideoFollowingEntityTearOff();

  _VideoFollowingEntity call(
      {VideoDTOEntity? videoEntity,
      VideoSettingEntity? videoSettingEntity,
      UserContentModel? userEntity,
      bool? isLike,
      bool? isSubscribe,
      int? totalComment,
      int? totalFavorite,
      int? totalLike}) {
    return _VideoFollowingEntity(
      videoEntity: videoEntity,
      videoSettingEntity: videoSettingEntity,
      userEntity: userEntity,
      isLike: isLike,
      isSubscribe: isSubscribe,
      totalComment: totalComment,
      totalFavorite: totalFavorite,
      totalLike: totalLike,
    );
  }

  VideoFollowingEntity fromJson(Map<String, Object> json) {
    return VideoFollowingEntity.fromJson(json);
  }
}

/// @nodoc
const $VideoFollowingEntity = _$VideoFollowingEntityTearOff();

/// @nodoc
mixin _$VideoFollowingEntity {
  VideoDTOEntity? get videoEntity => throw _privateConstructorUsedError;
  VideoSettingEntity? get videoSettingEntity =>
      throw _privateConstructorUsedError;
  UserContentModel? get userEntity => throw _privateConstructorUsedError;
  bool? get isLike => throw _privateConstructorUsedError;
  bool? get isSubscribe => throw _privateConstructorUsedError;
  int? get totalComment => throw _privateConstructorUsedError;
  int? get totalFavorite => throw _privateConstructorUsedError;
  int? get totalLike => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $VideoFollowingEntityCopyWith<VideoFollowingEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VideoFollowingEntityCopyWith<$Res> {
  factory $VideoFollowingEntityCopyWith(VideoFollowingEntity value,
          $Res Function(VideoFollowingEntity) then) =
      _$VideoFollowingEntityCopyWithImpl<$Res>;
  $Res call(
      {VideoDTOEntity? videoEntity,
      VideoSettingEntity? videoSettingEntity,
      UserContentModel? userEntity,
      bool? isLike,
      bool? isSubscribe,
      int? totalComment,
      int? totalFavorite,
      int? totalLike});

  $VideoDTOEntityCopyWith<$Res>? get videoEntity;
  $VideoSettingEntityCopyWith<$Res>? get videoSettingEntity;
  $UserContentModelCopyWith<$Res>? get userEntity;
}

/// @nodoc
class _$VideoFollowingEntityCopyWithImpl<$Res>
    implements $VideoFollowingEntityCopyWith<$Res> {
  _$VideoFollowingEntityCopyWithImpl(this._value, this._then);

  final VideoFollowingEntity _value;
  // ignore: unused_field
  final $Res Function(VideoFollowingEntity) _then;

  @override
  $Res call({
    Object? videoEntity = freezed,
    Object? videoSettingEntity = freezed,
    Object? userEntity = freezed,
    Object? isLike = freezed,
    Object? isSubscribe = freezed,
    Object? totalComment = freezed,
    Object? totalFavorite = freezed,
    Object? totalLike = freezed,
  }) {
    return _then(_value.copyWith(
      videoEntity: videoEntity == freezed
          ? _value.videoEntity
          : videoEntity // ignore: cast_nullable_to_non_nullable
              as VideoDTOEntity?,
      videoSettingEntity: videoSettingEntity == freezed
          ? _value.videoSettingEntity
          : videoSettingEntity // ignore: cast_nullable_to_non_nullable
              as VideoSettingEntity?,
      userEntity: userEntity == freezed
          ? _value.userEntity
          : userEntity // ignore: cast_nullable_to_non_nullable
              as UserContentModel?,
      isLike: isLike == freezed
          ? _value.isLike
          : isLike // ignore: cast_nullable_to_non_nullable
              as bool?,
      isSubscribe: isSubscribe == freezed
          ? _value.isSubscribe
          : isSubscribe // ignore: cast_nullable_to_non_nullable
              as bool?,
      totalComment: totalComment == freezed
          ? _value.totalComment
          : totalComment // ignore: cast_nullable_to_non_nullable
              as int?,
      totalFavorite: totalFavorite == freezed
          ? _value.totalFavorite
          : totalFavorite // ignore: cast_nullable_to_non_nullable
              as int?,
      totalLike: totalLike == freezed
          ? _value.totalLike
          : totalLike // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }

  @override
  $VideoDTOEntityCopyWith<$Res>? get videoEntity {
    if (_value.videoEntity == null) {
      return null;
    }

    return $VideoDTOEntityCopyWith<$Res>(_value.videoEntity!, (value) {
      return _then(_value.copyWith(videoEntity: value));
    });
  }

  @override
  $VideoSettingEntityCopyWith<$Res>? get videoSettingEntity {
    if (_value.videoSettingEntity == null) {
      return null;
    }

    return $VideoSettingEntityCopyWith<$Res>(_value.videoSettingEntity!,
        (value) {
      return _then(_value.copyWith(videoSettingEntity: value));
    });
  }

  @override
  $UserContentModelCopyWith<$Res>? get userEntity {
    if (_value.userEntity == null) {
      return null;
    }

    return $UserContentModelCopyWith<$Res>(_value.userEntity!, (value) {
      return _then(_value.copyWith(userEntity: value));
    });
  }
}

/// @nodoc
abstract class _$VideoFollowingEntityCopyWith<$Res>
    implements $VideoFollowingEntityCopyWith<$Res> {
  factory _$VideoFollowingEntityCopyWith(_VideoFollowingEntity value,
          $Res Function(_VideoFollowingEntity) then) =
      __$VideoFollowingEntityCopyWithImpl<$Res>;
  @override
  $Res call(
      {VideoDTOEntity? videoEntity,
      VideoSettingEntity? videoSettingEntity,
      UserContentModel? userEntity,
      bool? isLike,
      bool? isSubscribe,
      int? totalComment,
      int? totalFavorite,
      int? totalLike});

  @override
  $VideoDTOEntityCopyWith<$Res>? get videoEntity;
  @override
  $VideoSettingEntityCopyWith<$Res>? get videoSettingEntity;
  @override
  $UserContentModelCopyWith<$Res>? get userEntity;
}

/// @nodoc
class __$VideoFollowingEntityCopyWithImpl<$Res>
    extends _$VideoFollowingEntityCopyWithImpl<$Res>
    implements _$VideoFollowingEntityCopyWith<$Res> {
  __$VideoFollowingEntityCopyWithImpl(
      _VideoFollowingEntity _value, $Res Function(_VideoFollowingEntity) _then)
      : super(_value, (v) => _then(v as _VideoFollowingEntity));

  @override
  _VideoFollowingEntity get _value => super._value as _VideoFollowingEntity;

  @override
  $Res call({
    Object? videoEntity = freezed,
    Object? videoSettingEntity = freezed,
    Object? userEntity = freezed,
    Object? isLike = freezed,
    Object? isSubscribe = freezed,
    Object? totalComment = freezed,
    Object? totalFavorite = freezed,
    Object? totalLike = freezed,
  }) {
    return _then(_VideoFollowingEntity(
      videoEntity: videoEntity == freezed
          ? _value.videoEntity
          : videoEntity // ignore: cast_nullable_to_non_nullable
              as VideoDTOEntity?,
      videoSettingEntity: videoSettingEntity == freezed
          ? _value.videoSettingEntity
          : videoSettingEntity // ignore: cast_nullable_to_non_nullable
              as VideoSettingEntity?,
      userEntity: userEntity == freezed
          ? _value.userEntity
          : userEntity // ignore: cast_nullable_to_non_nullable
              as UserContentModel?,
      isLike: isLike == freezed
          ? _value.isLike
          : isLike // ignore: cast_nullable_to_non_nullable
              as bool?,
      isSubscribe: isSubscribe == freezed
          ? _value.isSubscribe
          : isSubscribe // ignore: cast_nullable_to_non_nullable
              as bool?,
      totalComment: totalComment == freezed
          ? _value.totalComment
          : totalComment // ignore: cast_nullable_to_non_nullable
              as int?,
      totalFavorite: totalFavorite == freezed
          ? _value.totalFavorite
          : totalFavorite // ignore: cast_nullable_to_non_nullable
              as int?,
      totalLike: totalLike == freezed
          ? _value.totalLike
          : totalLike // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_VideoFollowingEntity implements _VideoFollowingEntity {
  const _$_VideoFollowingEntity(
      {this.videoEntity,
      this.videoSettingEntity,
      this.userEntity,
      this.isLike,
      this.isSubscribe,
      this.totalComment,
      this.totalFavorite,
      this.totalLike});

  factory _$_VideoFollowingEntity.fromJson(Map<String, dynamic> json) =>
      _$_$_VideoFollowingEntityFromJson(json);

  @override
  final VideoDTOEntity? videoEntity;
  @override
  final VideoSettingEntity? videoSettingEntity;
  @override
  final UserContentModel? userEntity;
  @override
  final bool? isLike;
  @override
  final bool? isSubscribe;
  @override
  final int? totalComment;
  @override
  final int? totalFavorite;
  @override
  final int? totalLike;

  @override
  String toString() {
    return 'VideoFollowingEntity(videoEntity: $videoEntity, videoSettingEntity: $videoSettingEntity, userEntity: $userEntity, isLike: $isLike, isSubscribe: $isSubscribe, totalComment: $totalComment, totalFavorite: $totalFavorite, totalLike: $totalLike)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _VideoFollowingEntity &&
            (identical(other.videoEntity, videoEntity) ||
                const DeepCollectionEquality()
                    .equals(other.videoEntity, videoEntity)) &&
            (identical(other.videoSettingEntity, videoSettingEntity) ||
                const DeepCollectionEquality()
                    .equals(other.videoSettingEntity, videoSettingEntity)) &&
            (identical(other.userEntity, userEntity) ||
                const DeepCollectionEquality()
                    .equals(other.userEntity, userEntity)) &&
            (identical(other.isLike, isLike) ||
                const DeepCollectionEquality().equals(other.isLike, isLike)) &&
            (identical(other.isSubscribe, isSubscribe) ||
                const DeepCollectionEquality()
                    .equals(other.isSubscribe, isSubscribe)) &&
            (identical(other.totalComment, totalComment) ||
                const DeepCollectionEquality()
                    .equals(other.totalComment, totalComment)) &&
            (identical(other.totalFavorite, totalFavorite) ||
                const DeepCollectionEquality()
                    .equals(other.totalFavorite, totalFavorite)) &&
            (identical(other.totalLike, totalLike) ||
                const DeepCollectionEquality()
                    .equals(other.totalLike, totalLike)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(videoEntity) ^
      const DeepCollectionEquality().hash(videoSettingEntity) ^
      const DeepCollectionEquality().hash(userEntity) ^
      const DeepCollectionEquality().hash(isLike) ^
      const DeepCollectionEquality().hash(isSubscribe) ^
      const DeepCollectionEquality().hash(totalComment) ^
      const DeepCollectionEquality().hash(totalFavorite) ^
      const DeepCollectionEquality().hash(totalLike);

  @JsonKey(ignore: true)
  @override
  _$VideoFollowingEntityCopyWith<_VideoFollowingEntity> get copyWith =>
      __$VideoFollowingEntityCopyWithImpl<_VideoFollowingEntity>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_VideoFollowingEntityToJson(this);
  }
}

abstract class _VideoFollowingEntity implements VideoFollowingEntity {
  const factory _VideoFollowingEntity(
      {VideoDTOEntity? videoEntity,
      VideoSettingEntity? videoSettingEntity,
      UserContentModel? userEntity,
      bool? isLike,
      bool? isSubscribe,
      int? totalComment,
      int? totalFavorite,
      int? totalLike}) = _$_VideoFollowingEntity;

  factory _VideoFollowingEntity.fromJson(Map<String, dynamic> json) =
      _$_VideoFollowingEntity.fromJson;

  @override
  VideoDTOEntity? get videoEntity => throw _privateConstructorUsedError;
  @override
  VideoSettingEntity? get videoSettingEntity =>
      throw _privateConstructorUsedError;
  @override
  UserContentModel? get userEntity => throw _privateConstructorUsedError;
  @override
  bool? get isLike => throw _privateConstructorUsedError;
  @override
  bool? get isSubscribe => throw _privateConstructorUsedError;
  @override
  int? get totalComment => throw _privateConstructorUsedError;
  @override
  int? get totalFavorite => throw _privateConstructorUsedError;
  @override
  int? get totalLike => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$VideoFollowingEntityCopyWith<_VideoFollowingEntity> get copyWith =>
      throw _privateConstructorUsedError;
}
