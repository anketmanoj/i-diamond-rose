// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'video_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

VideoEntity _$VideoEntityFromJson(Map<String, dynamic> json) {
  return _VideoEntity.fromJson(json);
}

/// @nodoc
class _$VideoEntityTearOff {
  const _$VideoEntityTearOff();

  _VideoEntity call(
      {VideoDTOEntity? videoDTO,
      VideoSettingEntity? videoSettingDTO,
      String? userName,
      String? displayName,
      bool? isSubscribe = false,
      String? urlImage,
      int? userId,
      String? uid,
      bool? isLike,
      bool isVideoOwner = false,
      int totalLike = 0,
      int totalFavorite = 0,
      int totalComment = 0,
      bool? isFavorite}) {
    return _VideoEntity(
      videoDTO: videoDTO,
      videoSettingDTO: videoSettingDTO,
      userName: userName,
      displayName: displayName,
      isSubscribe: isSubscribe,
      urlImage: urlImage,
      userId: userId,
      uid: uid,
      isLike: isLike,
      isVideoOwner: isVideoOwner,
      totalLike: totalLike,
      totalFavorite: totalFavorite,
      totalComment: totalComment,
      isFavorite: isFavorite,
    );
  }

  VideoEntity fromJson(Map<String, Object> json) {
    return VideoEntity.fromJson(json);
  }
}

/// @nodoc
const $VideoEntity = _$VideoEntityTearOff();

/// @nodoc
mixin _$VideoEntity {
  VideoDTOEntity? get videoDTO => throw _privateConstructorUsedError;
  VideoSettingEntity? get videoSettingDTO => throw _privateConstructorUsedError;
  String? get userName => throw _privateConstructorUsedError;
  String? get displayName => throw _privateConstructorUsedError;
  bool? get isSubscribe => throw _privateConstructorUsedError;
  String? get urlImage => throw _privateConstructorUsedError;
  int? get userId => throw _privateConstructorUsedError;
  String? get uid => throw _privateConstructorUsedError; // users.uid
  bool? get isLike => throw _privateConstructorUsedError;
  bool get isVideoOwner => throw _privateConstructorUsedError;
  int get totalLike => throw _privateConstructorUsedError;
  int get totalFavorite => throw _privateConstructorUsedError;
  int get totalComment => throw _privateConstructorUsedError;
  bool? get isFavorite => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $VideoEntityCopyWith<VideoEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VideoEntityCopyWith<$Res> {
  factory $VideoEntityCopyWith(
          VideoEntity value, $Res Function(VideoEntity) then) =
      _$VideoEntityCopyWithImpl<$Res>;
  $Res call(
      {VideoDTOEntity? videoDTO,
      VideoSettingEntity? videoSettingDTO,
      String? userName,
      String? displayName,
      bool? isSubscribe,
      String? urlImage,
      int? userId,
      String? uid,
      bool? isLike,
      bool isVideoOwner,
      int totalLike,
      int totalFavorite,
      int totalComment,
      bool? isFavorite});

  $VideoDTOEntityCopyWith<$Res>? get videoDTO;
  $VideoSettingEntityCopyWith<$Res>? get videoSettingDTO;
}

/// @nodoc
class _$VideoEntityCopyWithImpl<$Res> implements $VideoEntityCopyWith<$Res> {
  _$VideoEntityCopyWithImpl(this._value, this._then);

  final VideoEntity _value;
  // ignore: unused_field
  final $Res Function(VideoEntity) _then;

  @override
  $Res call({
    Object? videoDTO = freezed,
    Object? videoSettingDTO = freezed,
    Object? userName = freezed,
    Object? displayName = freezed,
    Object? isSubscribe = freezed,
    Object? urlImage = freezed,
    Object? userId = freezed,
    Object? uid = freezed,
    Object? isLike = freezed,
    Object? isVideoOwner = freezed,
    Object? totalLike = freezed,
    Object? totalFavorite = freezed,
    Object? totalComment = freezed,
    Object? isFavorite = freezed,
  }) {
    return _then(_value.copyWith(
      videoDTO: videoDTO == freezed
          ? _value.videoDTO
          : videoDTO // ignore: cast_nullable_to_non_nullable
              as VideoDTOEntity?,
      videoSettingDTO: videoSettingDTO == freezed
          ? _value.videoSettingDTO
          : videoSettingDTO // ignore: cast_nullable_to_non_nullable
              as VideoSettingEntity?,
      userName: userName == freezed
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String?,
      displayName: displayName == freezed
          ? _value.displayName
          : displayName // ignore: cast_nullable_to_non_nullable
              as String?,
      isSubscribe: isSubscribe == freezed
          ? _value.isSubscribe
          : isSubscribe // ignore: cast_nullable_to_non_nullable
              as bool?,
      urlImage: urlImage == freezed
          ? _value.urlImage
          : urlImage // ignore: cast_nullable_to_non_nullable
              as String?,
      userId: userId == freezed
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int?,
      uid: uid == freezed
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as String?,
      isLike: isLike == freezed
          ? _value.isLike
          : isLike // ignore: cast_nullable_to_non_nullable
              as bool?,
      isVideoOwner: isVideoOwner == freezed
          ? _value.isVideoOwner
          : isVideoOwner // ignore: cast_nullable_to_non_nullable
              as bool,
      totalLike: totalLike == freezed
          ? _value.totalLike
          : totalLike // ignore: cast_nullable_to_non_nullable
              as int,
      totalFavorite: totalFavorite == freezed
          ? _value.totalFavorite
          : totalFavorite // ignore: cast_nullable_to_non_nullable
              as int,
      totalComment: totalComment == freezed
          ? _value.totalComment
          : totalComment // ignore: cast_nullable_to_non_nullable
              as int,
      isFavorite: isFavorite == freezed
          ? _value.isFavorite
          : isFavorite // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }

  @override
  $VideoDTOEntityCopyWith<$Res>? get videoDTO {
    if (_value.videoDTO == null) {
      return null;
    }

    return $VideoDTOEntityCopyWith<$Res>(_value.videoDTO!, (value) {
      return _then(_value.copyWith(videoDTO: value));
    });
  }

  @override
  $VideoSettingEntityCopyWith<$Res>? get videoSettingDTO {
    if (_value.videoSettingDTO == null) {
      return null;
    }

    return $VideoSettingEntityCopyWith<$Res>(_value.videoSettingDTO!, (value) {
      return _then(_value.copyWith(videoSettingDTO: value));
    });
  }
}

/// @nodoc
abstract class _$VideoEntityCopyWith<$Res>
    implements $VideoEntityCopyWith<$Res> {
  factory _$VideoEntityCopyWith(
          _VideoEntity value, $Res Function(_VideoEntity) then) =
      __$VideoEntityCopyWithImpl<$Res>;
  @override
  $Res call(
      {VideoDTOEntity? videoDTO,
      VideoSettingEntity? videoSettingDTO,
      String? userName,
      String? displayName,
      bool? isSubscribe,
      String? urlImage,
      int? userId,
      String? uid,
      bool? isLike,
      bool isVideoOwner,
      int totalLike,
      int totalFavorite,
      int totalComment,
      bool? isFavorite});

  @override
  $VideoDTOEntityCopyWith<$Res>? get videoDTO;
  @override
  $VideoSettingEntityCopyWith<$Res>? get videoSettingDTO;
}

/// @nodoc
class __$VideoEntityCopyWithImpl<$Res> extends _$VideoEntityCopyWithImpl<$Res>
    implements _$VideoEntityCopyWith<$Res> {
  __$VideoEntityCopyWithImpl(
      _VideoEntity _value, $Res Function(_VideoEntity) _then)
      : super(_value, (v) => _then(v as _VideoEntity));

  @override
  _VideoEntity get _value => super._value as _VideoEntity;

  @override
  $Res call({
    Object? videoDTO = freezed,
    Object? videoSettingDTO = freezed,
    Object? userName = freezed,
    Object? displayName = freezed,
    Object? isSubscribe = freezed,
    Object? urlImage = freezed,
    Object? userId = freezed,
    Object? uid = freezed,
    Object? isLike = freezed,
    Object? isVideoOwner = freezed,
    Object? totalLike = freezed,
    Object? totalFavorite = freezed,
    Object? totalComment = freezed,
    Object? isFavorite = freezed,
  }) {
    return _then(_VideoEntity(
      videoDTO: videoDTO == freezed
          ? _value.videoDTO
          : videoDTO // ignore: cast_nullable_to_non_nullable
              as VideoDTOEntity?,
      videoSettingDTO: videoSettingDTO == freezed
          ? _value.videoSettingDTO
          : videoSettingDTO // ignore: cast_nullable_to_non_nullable
              as VideoSettingEntity?,
      userName: userName == freezed
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String?,
      displayName: displayName == freezed
          ? _value.displayName
          : displayName // ignore: cast_nullable_to_non_nullable
              as String?,
      isSubscribe: isSubscribe == freezed
          ? _value.isSubscribe
          : isSubscribe // ignore: cast_nullable_to_non_nullable
              as bool?,
      urlImage: urlImage == freezed
          ? _value.urlImage
          : urlImage // ignore: cast_nullable_to_non_nullable
              as String?,
      userId: userId == freezed
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int?,
      uid: uid == freezed
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as String?,
      isLike: isLike == freezed
          ? _value.isLike
          : isLike // ignore: cast_nullable_to_non_nullable
              as bool?,
      isVideoOwner: isVideoOwner == freezed
          ? _value.isVideoOwner
          : isVideoOwner // ignore: cast_nullable_to_non_nullable
              as bool,
      totalLike: totalLike == freezed
          ? _value.totalLike
          : totalLike // ignore: cast_nullable_to_non_nullable
              as int,
      totalFavorite: totalFavorite == freezed
          ? _value.totalFavorite
          : totalFavorite // ignore: cast_nullable_to_non_nullable
              as int,
      totalComment: totalComment == freezed
          ? _value.totalComment
          : totalComment // ignore: cast_nullable_to_non_nullable
              as int,
      isFavorite: isFavorite == freezed
          ? _value.isFavorite
          : isFavorite // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_VideoEntity implements _VideoEntity {
  const _$_VideoEntity(
      {this.videoDTO,
      this.videoSettingDTO,
      this.userName,
      this.displayName,
      this.isSubscribe = false,
      this.urlImage,
      this.userId,
      this.uid,
      this.isLike,
      this.isVideoOwner = false,
      this.totalLike = 0,
      this.totalFavorite = 0,
      this.totalComment = 0,
      this.isFavorite});

  factory _$_VideoEntity.fromJson(Map<String, dynamic> json) =>
      _$_$_VideoEntityFromJson(json);

  @override
  final VideoDTOEntity? videoDTO;
  @override
  final VideoSettingEntity? videoSettingDTO;
  @override
  final String? userName;
  @override
  final String? displayName;
  @JsonKey(defaultValue: false)
  @override
  final bool? isSubscribe;
  @override
  final String? urlImage;
  @override
  final int? userId;
  @override
  final String? uid;
  @override // users.uid
  final bool? isLike;
  @JsonKey(defaultValue: false)
  @override
  final bool isVideoOwner;
  @JsonKey(defaultValue: 0)
  @override
  final int totalLike;
  @JsonKey(defaultValue: 0)
  @override
  final int totalFavorite;
  @JsonKey(defaultValue: 0)
  @override
  final int totalComment;
  @override
  final bool? isFavorite;

  @override
  String toString() {
    return 'VideoEntity(videoDTO: $videoDTO, videoSettingDTO: $videoSettingDTO, userName: $userName, displayName: $displayName, isSubscribe: $isSubscribe, urlImage: $urlImage, userId: $userId, uid: $uid, isLike: $isLike, isVideoOwner: $isVideoOwner, totalLike: $totalLike, totalFavorite: $totalFavorite, totalComment: $totalComment, isFavorite: $isFavorite)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _VideoEntity &&
            (identical(other.videoDTO, videoDTO) ||
                const DeepCollectionEquality()
                    .equals(other.videoDTO, videoDTO)) &&
            (identical(other.videoSettingDTO, videoSettingDTO) ||
                const DeepCollectionEquality()
                    .equals(other.videoSettingDTO, videoSettingDTO)) &&
            (identical(other.userName, userName) ||
                const DeepCollectionEquality()
                    .equals(other.userName, userName)) &&
            (identical(other.displayName, displayName) ||
                const DeepCollectionEquality()
                    .equals(other.displayName, displayName)) &&
            (identical(other.isSubscribe, isSubscribe) ||
                const DeepCollectionEquality()
                    .equals(other.isSubscribe, isSubscribe)) &&
            (identical(other.urlImage, urlImage) ||
                const DeepCollectionEquality()
                    .equals(other.urlImage, urlImage)) &&
            (identical(other.userId, userId) ||
                const DeepCollectionEquality().equals(other.userId, userId)) &&
            (identical(other.uid, uid) ||
                const DeepCollectionEquality().equals(other.uid, uid)) &&
            (identical(other.isLike, isLike) ||
                const DeepCollectionEquality().equals(other.isLike, isLike)) &&
            (identical(other.isVideoOwner, isVideoOwner) ||
                const DeepCollectionEquality()
                    .equals(other.isVideoOwner, isVideoOwner)) &&
            (identical(other.totalLike, totalLike) ||
                const DeepCollectionEquality()
                    .equals(other.totalLike, totalLike)) &&
            (identical(other.totalFavorite, totalFavorite) ||
                const DeepCollectionEquality()
                    .equals(other.totalFavorite, totalFavorite)) &&
            (identical(other.totalComment, totalComment) ||
                const DeepCollectionEquality()
                    .equals(other.totalComment, totalComment)) &&
            (identical(other.isFavorite, isFavorite) ||
                const DeepCollectionEquality()
                    .equals(other.isFavorite, isFavorite)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(videoDTO) ^
      const DeepCollectionEquality().hash(videoSettingDTO) ^
      const DeepCollectionEquality().hash(userName) ^
      const DeepCollectionEquality().hash(displayName) ^
      const DeepCollectionEquality().hash(isSubscribe) ^
      const DeepCollectionEquality().hash(urlImage) ^
      const DeepCollectionEquality().hash(userId) ^
      const DeepCollectionEquality().hash(uid) ^
      const DeepCollectionEquality().hash(isLike) ^
      const DeepCollectionEquality().hash(isVideoOwner) ^
      const DeepCollectionEquality().hash(totalLike) ^
      const DeepCollectionEquality().hash(totalFavorite) ^
      const DeepCollectionEquality().hash(totalComment) ^
      const DeepCollectionEquality().hash(isFavorite);

  @JsonKey(ignore: true)
  @override
  _$VideoEntityCopyWith<_VideoEntity> get copyWith =>
      __$VideoEntityCopyWithImpl<_VideoEntity>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_VideoEntityToJson(this);
  }
}

abstract class _VideoEntity implements VideoEntity {
  const factory _VideoEntity(
      {VideoDTOEntity? videoDTO,
      VideoSettingEntity? videoSettingDTO,
      String? userName,
      String? displayName,
      bool? isSubscribe,
      String? urlImage,
      int? userId,
      String? uid,
      bool? isLike,
      bool isVideoOwner,
      int totalLike,
      int totalFavorite,
      int totalComment,
      bool? isFavorite}) = _$_VideoEntity;

  factory _VideoEntity.fromJson(Map<String, dynamic> json) =
      _$_VideoEntity.fromJson;

  @override
  VideoDTOEntity? get videoDTO => throw _privateConstructorUsedError;
  @override
  VideoSettingEntity? get videoSettingDTO => throw _privateConstructorUsedError;
  @override
  String? get userName => throw _privateConstructorUsedError;
  @override
  String? get displayName => throw _privateConstructorUsedError;
  @override
  bool? get isSubscribe => throw _privateConstructorUsedError;
  @override
  String? get urlImage => throw _privateConstructorUsedError;
  @override
  int? get userId => throw _privateConstructorUsedError;
  @override
  String? get uid => throw _privateConstructorUsedError;
  @override // users.uid
  bool? get isLike => throw _privateConstructorUsedError;
  @override
  bool get isVideoOwner => throw _privateConstructorUsedError;
  @override
  int get totalLike => throw _privateConstructorUsedError;
  @override
  int get totalFavorite => throw _privateConstructorUsedError;
  @override
  int get totalComment => throw _privateConstructorUsedError;
  @override
  bool? get isFavorite => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$VideoEntityCopyWith<_VideoEntity> get copyWith =>
      throw _privateConstructorUsedError;
}
