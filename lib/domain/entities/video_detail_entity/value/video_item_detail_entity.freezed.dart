// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'video_item_detail_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

VideoItemDetailEntity _$VideoItemDetailEntityFromJson(
    Map<String, dynamic> json) {
  return _VideoItemDetailEntity.fromJson(json);
}

/// @nodoc
class _$VideoItemDetailEntityTearOff {
  const _$VideoItemDetailEntityTearOff();

  _VideoItemDetailEntity call(
      {int id = 0,
      String videoUrl = "",
      String videoUID = "",
      String videoThumbnail = "",
      String videoCaption = "",
      String videoDesc = "",
      int ownerId = 0,
      VideoSettingItemEntity? videoSettingItem,
      int wkVideoId = 0,
      List<ItemMaterialEntity>? listItem}) {
    return _VideoItemDetailEntity(
      id: id,
      videoUrl: videoUrl,
      videoUID: videoUID,
      videoThumbnail: videoThumbnail,
      videoCaption: videoCaption,
      videoDesc: videoDesc,
      ownerId: ownerId,
      videoSettingItem: videoSettingItem,
      wkVideoId: wkVideoId,
      listItem: listItem,
    );
  }

  VideoItemDetailEntity fromJson(Map<String, Object> json) {
    return VideoItemDetailEntity.fromJson(json);
  }
}

/// @nodoc
const $VideoItemDetailEntity = _$VideoItemDetailEntityTearOff();

/// @nodoc
mixin _$VideoItemDetailEntity {
  int get id => throw _privateConstructorUsedError;
  String get videoUrl => throw _privateConstructorUsedError;
  String get videoUID => throw _privateConstructorUsedError;
  String get videoThumbnail => throw _privateConstructorUsedError;
  String get videoCaption => throw _privateConstructorUsedError;
  String get videoDesc => throw _privateConstructorUsedError;
  int get ownerId => throw _privateConstructorUsedError;
  VideoSettingItemEntity? get videoSettingItem =>
      throw _privateConstructorUsedError;
  int get wkVideoId => throw _privateConstructorUsedError;
  List<ItemMaterialEntity>? get listItem => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $VideoItemDetailEntityCopyWith<VideoItemDetailEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VideoItemDetailEntityCopyWith<$Res> {
  factory $VideoItemDetailEntityCopyWith(VideoItemDetailEntity value,
          $Res Function(VideoItemDetailEntity) then) =
      _$VideoItemDetailEntityCopyWithImpl<$Res>;
  $Res call(
      {int id,
      String videoUrl,
      String videoUID,
      String videoThumbnail,
      String videoCaption,
      String videoDesc,
      int ownerId,
      VideoSettingItemEntity? videoSettingItem,
      int wkVideoId,
      List<ItemMaterialEntity>? listItem});

  $VideoSettingItemEntityCopyWith<$Res>? get videoSettingItem;
}

/// @nodoc
class _$VideoItemDetailEntityCopyWithImpl<$Res>
    implements $VideoItemDetailEntityCopyWith<$Res> {
  _$VideoItemDetailEntityCopyWithImpl(this._value, this._then);

  final VideoItemDetailEntity _value;
  // ignore: unused_field
  final $Res Function(VideoItemDetailEntity) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? videoUrl = freezed,
    Object? videoUID = freezed,
    Object? videoThumbnail = freezed,
    Object? videoCaption = freezed,
    Object? videoDesc = freezed,
    Object? ownerId = freezed,
    Object? videoSettingItem = freezed,
    Object? wkVideoId = freezed,
    Object? listItem = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      videoUrl: videoUrl == freezed
          ? _value.videoUrl
          : videoUrl // ignore: cast_nullable_to_non_nullable
              as String,
      videoUID: videoUID == freezed
          ? _value.videoUID
          : videoUID // ignore: cast_nullable_to_non_nullable
              as String,
      videoThumbnail: videoThumbnail == freezed
          ? _value.videoThumbnail
          : videoThumbnail // ignore: cast_nullable_to_non_nullable
              as String,
      videoCaption: videoCaption == freezed
          ? _value.videoCaption
          : videoCaption // ignore: cast_nullable_to_non_nullable
              as String,
      videoDesc: videoDesc == freezed
          ? _value.videoDesc
          : videoDesc // ignore: cast_nullable_to_non_nullable
              as String,
      ownerId: ownerId == freezed
          ? _value.ownerId
          : ownerId // ignore: cast_nullable_to_non_nullable
              as int,
      videoSettingItem: videoSettingItem == freezed
          ? _value.videoSettingItem
          : videoSettingItem // ignore: cast_nullable_to_non_nullable
              as VideoSettingItemEntity?,
      wkVideoId: wkVideoId == freezed
          ? _value.wkVideoId
          : wkVideoId // ignore: cast_nullable_to_non_nullable
              as int,
      listItem: listItem == freezed
          ? _value.listItem
          : listItem // ignore: cast_nullable_to_non_nullable
              as List<ItemMaterialEntity>?,
    ));
  }

  @override
  $VideoSettingItemEntityCopyWith<$Res>? get videoSettingItem {
    if (_value.videoSettingItem == null) {
      return null;
    }

    return $VideoSettingItemEntityCopyWith<$Res>(_value.videoSettingItem!,
        (value) {
      return _then(_value.copyWith(videoSettingItem: value));
    });
  }
}

/// @nodoc
abstract class _$VideoItemDetailEntityCopyWith<$Res>
    implements $VideoItemDetailEntityCopyWith<$Res> {
  factory _$VideoItemDetailEntityCopyWith(_VideoItemDetailEntity value,
          $Res Function(_VideoItemDetailEntity) then) =
      __$VideoItemDetailEntityCopyWithImpl<$Res>;
  @override
  $Res call(
      {int id,
      String videoUrl,
      String videoUID,
      String videoThumbnail,
      String videoCaption,
      String videoDesc,
      int ownerId,
      VideoSettingItemEntity? videoSettingItem,
      int wkVideoId,
      List<ItemMaterialEntity>? listItem});

  @override
  $VideoSettingItemEntityCopyWith<$Res>? get videoSettingItem;
}

/// @nodoc
class __$VideoItemDetailEntityCopyWithImpl<$Res>
    extends _$VideoItemDetailEntityCopyWithImpl<$Res>
    implements _$VideoItemDetailEntityCopyWith<$Res> {
  __$VideoItemDetailEntityCopyWithImpl(_VideoItemDetailEntity _value,
      $Res Function(_VideoItemDetailEntity) _then)
      : super(_value, (v) => _then(v as _VideoItemDetailEntity));

  @override
  _VideoItemDetailEntity get _value => super._value as _VideoItemDetailEntity;

  @override
  $Res call({
    Object? id = freezed,
    Object? videoUrl = freezed,
    Object? videoUID = freezed,
    Object? videoThumbnail = freezed,
    Object? videoCaption = freezed,
    Object? videoDesc = freezed,
    Object? ownerId = freezed,
    Object? videoSettingItem = freezed,
    Object? wkVideoId = freezed,
    Object? listItem = freezed,
  }) {
    return _then(_VideoItemDetailEntity(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      videoUrl: videoUrl == freezed
          ? _value.videoUrl
          : videoUrl // ignore: cast_nullable_to_non_nullable
              as String,
      videoUID: videoUID == freezed
          ? _value.videoUID
          : videoUID // ignore: cast_nullable_to_non_nullable
              as String,
      videoThumbnail: videoThumbnail == freezed
          ? _value.videoThumbnail
          : videoThumbnail // ignore: cast_nullable_to_non_nullable
              as String,
      videoCaption: videoCaption == freezed
          ? _value.videoCaption
          : videoCaption // ignore: cast_nullable_to_non_nullable
              as String,
      videoDesc: videoDesc == freezed
          ? _value.videoDesc
          : videoDesc // ignore: cast_nullable_to_non_nullable
              as String,
      ownerId: ownerId == freezed
          ? _value.ownerId
          : ownerId // ignore: cast_nullable_to_non_nullable
              as int,
      videoSettingItem: videoSettingItem == freezed
          ? _value.videoSettingItem
          : videoSettingItem // ignore: cast_nullable_to_non_nullable
              as VideoSettingItemEntity?,
      wkVideoId: wkVideoId == freezed
          ? _value.wkVideoId
          : wkVideoId // ignore: cast_nullable_to_non_nullable
              as int,
      listItem: listItem == freezed
          ? _value.listItem
          : listItem // ignore: cast_nullable_to_non_nullable
              as List<ItemMaterialEntity>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_VideoItemDetailEntity implements _VideoItemDetailEntity {
  const _$_VideoItemDetailEntity(
      {this.id = 0,
      this.videoUrl = "",
      this.videoUID = "",
      this.videoThumbnail = "",
      this.videoCaption = "",
      this.videoDesc = "",
      this.ownerId = 0,
      this.videoSettingItem,
      this.wkVideoId = 0,
      this.listItem});

  factory _$_VideoItemDetailEntity.fromJson(Map<String, dynamic> json) =>
      _$_$_VideoItemDetailEntityFromJson(json);

  @JsonKey(defaultValue: 0)
  @override
  final int id;
  @JsonKey(defaultValue: "")
  @override
  final String videoUrl;
  @JsonKey(defaultValue: "")
  @override
  final String videoUID;
  @JsonKey(defaultValue: "")
  @override
  final String videoThumbnail;
  @JsonKey(defaultValue: "")
  @override
  final String videoCaption;
  @JsonKey(defaultValue: "")
  @override
  final String videoDesc;
  @JsonKey(defaultValue: 0)
  @override
  final int ownerId;
  @override
  final VideoSettingItemEntity? videoSettingItem;
  @JsonKey(defaultValue: 0)
  @override
  final int wkVideoId;
  @override
  final List<ItemMaterialEntity>? listItem;

  @override
  String toString() {
    return 'VideoItemDetailEntity(id: $id, videoUrl: $videoUrl, videoUID: $videoUID, videoThumbnail: $videoThumbnail, videoCaption: $videoCaption, videoDesc: $videoDesc, ownerId: $ownerId, videoSettingItem: $videoSettingItem, wkVideoId: $wkVideoId, listItem: $listItem)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _VideoItemDetailEntity &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.videoUrl, videoUrl) ||
                const DeepCollectionEquality()
                    .equals(other.videoUrl, videoUrl)) &&
            (identical(other.videoUID, videoUID) ||
                const DeepCollectionEquality()
                    .equals(other.videoUID, videoUID)) &&
            (identical(other.videoThumbnail, videoThumbnail) ||
                const DeepCollectionEquality()
                    .equals(other.videoThumbnail, videoThumbnail)) &&
            (identical(other.videoCaption, videoCaption) ||
                const DeepCollectionEquality()
                    .equals(other.videoCaption, videoCaption)) &&
            (identical(other.videoDesc, videoDesc) ||
                const DeepCollectionEquality()
                    .equals(other.videoDesc, videoDesc)) &&
            (identical(other.ownerId, ownerId) ||
                const DeepCollectionEquality()
                    .equals(other.ownerId, ownerId)) &&
            (identical(other.videoSettingItem, videoSettingItem) ||
                const DeepCollectionEquality()
                    .equals(other.videoSettingItem, videoSettingItem)) &&
            (identical(other.wkVideoId, wkVideoId) ||
                const DeepCollectionEquality()
                    .equals(other.wkVideoId, wkVideoId)) &&
            (identical(other.listItem, listItem) ||
                const DeepCollectionEquality()
                    .equals(other.listItem, listItem)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(videoUrl) ^
      const DeepCollectionEquality().hash(videoUID) ^
      const DeepCollectionEquality().hash(videoThumbnail) ^
      const DeepCollectionEquality().hash(videoCaption) ^
      const DeepCollectionEquality().hash(videoDesc) ^
      const DeepCollectionEquality().hash(ownerId) ^
      const DeepCollectionEquality().hash(videoSettingItem) ^
      const DeepCollectionEquality().hash(wkVideoId) ^
      const DeepCollectionEquality().hash(listItem);

  @JsonKey(ignore: true)
  @override
  _$VideoItemDetailEntityCopyWith<_VideoItemDetailEntity> get copyWith =>
      __$VideoItemDetailEntityCopyWithImpl<_VideoItemDetailEntity>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_VideoItemDetailEntityToJson(this);
  }
}

abstract class _VideoItemDetailEntity implements VideoItemDetailEntity {
  const factory _VideoItemDetailEntity(
      {int id,
      String videoUrl,
      String videoUID,
      String videoThumbnail,
      String videoCaption,
      String videoDesc,
      int ownerId,
      VideoSettingItemEntity? videoSettingItem,
      int wkVideoId,
      List<ItemMaterialEntity>? listItem}) = _$_VideoItemDetailEntity;

  factory _VideoItemDetailEntity.fromJson(Map<String, dynamic> json) =
      _$_VideoItemDetailEntity.fromJson;

  @override
  int get id => throw _privateConstructorUsedError;
  @override
  String get videoUrl => throw _privateConstructorUsedError;
  @override
  String get videoUID => throw _privateConstructorUsedError;
  @override
  String get videoThumbnail => throw _privateConstructorUsedError;
  @override
  String get videoCaption => throw _privateConstructorUsedError;
  @override
  String get videoDesc => throw _privateConstructorUsedError;
  @override
  int get ownerId => throw _privateConstructorUsedError;
  @override
  VideoSettingItemEntity? get videoSettingItem =>
      throw _privateConstructorUsedError;
  @override
  int get wkVideoId => throw _privateConstructorUsedError;
  @override
  List<ItemMaterialEntity>? get listItem => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$VideoItemDetailEntityCopyWith<_VideoItemDetailEntity> get copyWith =>
      throw _privateConstructorUsedError;
}
