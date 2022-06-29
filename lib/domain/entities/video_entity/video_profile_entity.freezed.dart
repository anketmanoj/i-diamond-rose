// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'video_profile_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

VideoProfileEntity _$VideoProfileEntityFromJson(Map<String, dynamic> json) {
  return _VideoProfileEntity.fromJson(json);
}

/// @nodoc
class _$VideoProfileEntityTearOff {
  const _$VideoProfileEntityTearOff();

  _VideoProfileEntity call(
      {required MyVideoEntity myVideo, required MyDraftVideoEntity videoItem}) {
    return _VideoProfileEntity(
      myVideo: myVideo,
      videoItem: videoItem,
    );
  }

  VideoProfileEntity fromJson(Map<String, Object> json) {
    return VideoProfileEntity.fromJson(json);
  }
}

/// @nodoc
const $VideoProfileEntity = _$VideoProfileEntityTearOff();

/// @nodoc
mixin _$VideoProfileEntity {
  MyVideoEntity get myVideo => throw _privateConstructorUsedError;
  MyDraftVideoEntity get videoItem => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $VideoProfileEntityCopyWith<VideoProfileEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VideoProfileEntityCopyWith<$Res> {
  factory $VideoProfileEntityCopyWith(
          VideoProfileEntity value, $Res Function(VideoProfileEntity) then) =
      _$VideoProfileEntityCopyWithImpl<$Res>;
  $Res call({MyVideoEntity myVideo, MyDraftVideoEntity videoItem});

  $MyVideoEntityCopyWith<$Res> get myVideo;
  $MyDraftVideoEntityCopyWith<$Res> get videoItem;
}

/// @nodoc
class _$VideoProfileEntityCopyWithImpl<$Res>
    implements $VideoProfileEntityCopyWith<$Res> {
  _$VideoProfileEntityCopyWithImpl(this._value, this._then);

  final VideoProfileEntity _value;
  // ignore: unused_field
  final $Res Function(VideoProfileEntity) _then;

  @override
  $Res call({
    Object? myVideo = freezed,
    Object? videoItem = freezed,
  }) {
    return _then(_value.copyWith(
      myVideo: myVideo == freezed
          ? _value.myVideo
          : myVideo // ignore: cast_nullable_to_non_nullable
              as MyVideoEntity,
      videoItem: videoItem == freezed
          ? _value.videoItem
          : videoItem // ignore: cast_nullable_to_non_nullable
              as MyDraftVideoEntity,
    ));
  }

  @override
  $MyVideoEntityCopyWith<$Res> get myVideo {
    return $MyVideoEntityCopyWith<$Res>(_value.myVideo, (value) {
      return _then(_value.copyWith(myVideo: value));
    });
  }

  @override
  $MyDraftVideoEntityCopyWith<$Res> get videoItem {
    return $MyDraftVideoEntityCopyWith<$Res>(_value.videoItem, (value) {
      return _then(_value.copyWith(videoItem: value));
    });
  }
}

/// @nodoc
abstract class _$VideoProfileEntityCopyWith<$Res>
    implements $VideoProfileEntityCopyWith<$Res> {
  factory _$VideoProfileEntityCopyWith(
          _VideoProfileEntity value, $Res Function(_VideoProfileEntity) then) =
      __$VideoProfileEntityCopyWithImpl<$Res>;
  @override
  $Res call({MyVideoEntity myVideo, MyDraftVideoEntity videoItem});

  @override
  $MyVideoEntityCopyWith<$Res> get myVideo;
  @override
  $MyDraftVideoEntityCopyWith<$Res> get videoItem;
}

/// @nodoc
class __$VideoProfileEntityCopyWithImpl<$Res>
    extends _$VideoProfileEntityCopyWithImpl<$Res>
    implements _$VideoProfileEntityCopyWith<$Res> {
  __$VideoProfileEntityCopyWithImpl(
      _VideoProfileEntity _value, $Res Function(_VideoProfileEntity) _then)
      : super(_value, (v) => _then(v as _VideoProfileEntity));

  @override
  _VideoProfileEntity get _value => super._value as _VideoProfileEntity;

  @override
  $Res call({
    Object? myVideo = freezed,
    Object? videoItem = freezed,
  }) {
    return _then(_VideoProfileEntity(
      myVideo: myVideo == freezed
          ? _value.myVideo
          : myVideo // ignore: cast_nullable_to_non_nullable
              as MyVideoEntity,
      videoItem: videoItem == freezed
          ? _value.videoItem
          : videoItem // ignore: cast_nullable_to_non_nullable
              as MyDraftVideoEntity,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_VideoProfileEntity implements _VideoProfileEntity {
  const _$_VideoProfileEntity({required this.myVideo, required this.videoItem});

  factory _$_VideoProfileEntity.fromJson(Map<String, dynamic> json) =>
      _$_$_VideoProfileEntityFromJson(json);

  @override
  final MyVideoEntity myVideo;
  @override
  final MyDraftVideoEntity videoItem;

  @override
  String toString() {
    return 'VideoProfileEntity(myVideo: $myVideo, videoItem: $videoItem)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _VideoProfileEntity &&
            (identical(other.myVideo, myVideo) ||
                const DeepCollectionEquality()
                    .equals(other.myVideo, myVideo)) &&
            (identical(other.videoItem, videoItem) ||
                const DeepCollectionEquality()
                    .equals(other.videoItem, videoItem)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(myVideo) ^
      const DeepCollectionEquality().hash(videoItem);

  @JsonKey(ignore: true)
  @override
  _$VideoProfileEntityCopyWith<_VideoProfileEntity> get copyWith =>
      __$VideoProfileEntityCopyWithImpl<_VideoProfileEntity>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_VideoProfileEntityToJson(this);
  }
}

abstract class _VideoProfileEntity implements VideoProfileEntity {
  const factory _VideoProfileEntity(
      {required MyVideoEntity myVideo,
      required MyDraftVideoEntity videoItem}) = _$_VideoProfileEntity;

  factory _VideoProfileEntity.fromJson(Map<String, dynamic> json) =
      _$_VideoProfileEntity.fromJson;

  @override
  MyVideoEntity get myVideo => throw _privateConstructorUsedError;
  @override
  MyDraftVideoEntity get videoItem => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$VideoProfileEntityCopyWith<_VideoProfileEntity> get copyWith =>
      throw _privateConstructorUsedError;
}
