// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'video_response_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

VideoResponseEntity _$VideoResponseEntityFromJson(Map<String, dynamic> json) {
  return _VideoResponseEntity.fromJson(json);
}

/// @nodoc
class _$VideoResponseEntityTearOff {
  const _$VideoResponseEntityTearOff();

  _VideoResponseEntity call(
      {int id = 0,
      String? videoUrl,
      String? thumbnailUrl,
      String videoCaption = "",
      String videoDesc = "",
      int? likeCount,
      int? commentCount,
      int ownerId = 0,
      bool? deleteFlag,
      int? createBy,
      DateTime? createdAt,
      int? updateBy,
      DateTime? updatedAt}) {
    return _VideoResponseEntity(
      id: id,
      videoUrl: videoUrl,
      thumbnailUrl: thumbnailUrl,
      videoCaption: videoCaption,
      videoDesc: videoDesc,
      likeCount: likeCount,
      commentCount: commentCount,
      ownerId: ownerId,
      deleteFlag: deleteFlag,
      createBy: createBy,
      createdAt: createdAt,
      updateBy: updateBy,
      updatedAt: updatedAt,
    );
  }

  VideoResponseEntity fromJson(Map<String, Object> json) {
    return VideoResponseEntity.fromJson(json);
  }
}

/// @nodoc
const $VideoResponseEntity = _$VideoResponseEntityTearOff();

/// @nodoc
mixin _$VideoResponseEntity {
  int get id => throw _privateConstructorUsedError;
  String? get videoUrl => throw _privateConstructorUsedError;
  String? get thumbnailUrl => throw _privateConstructorUsedError;
  String get videoCaption => throw _privateConstructorUsedError;
  String get videoDesc => throw _privateConstructorUsedError;
  int? get likeCount => throw _privateConstructorUsedError;
  int? get commentCount => throw _privateConstructorUsedError;
  int get ownerId => throw _privateConstructorUsedError;
  bool? get deleteFlag => throw _privateConstructorUsedError;
  int? get createBy => throw _privateConstructorUsedError;
  DateTime? get createdAt => throw _privateConstructorUsedError;
  int? get updateBy => throw _privateConstructorUsedError;
  DateTime? get updatedAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $VideoResponseEntityCopyWith<VideoResponseEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VideoResponseEntityCopyWith<$Res> {
  factory $VideoResponseEntityCopyWith(
          VideoResponseEntity value, $Res Function(VideoResponseEntity) then) =
      _$VideoResponseEntityCopyWithImpl<$Res>;
  $Res call(
      {int id,
      String? videoUrl,
      String? thumbnailUrl,
      String videoCaption,
      String videoDesc,
      int? likeCount,
      int? commentCount,
      int ownerId,
      bool? deleteFlag,
      int? createBy,
      DateTime? createdAt,
      int? updateBy,
      DateTime? updatedAt});
}

/// @nodoc
class _$VideoResponseEntityCopyWithImpl<$Res>
    implements $VideoResponseEntityCopyWith<$Res> {
  _$VideoResponseEntityCopyWithImpl(this._value, this._then);

  final VideoResponseEntity _value;
  // ignore: unused_field
  final $Res Function(VideoResponseEntity) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? videoUrl = freezed,
    Object? thumbnailUrl = freezed,
    Object? videoCaption = freezed,
    Object? videoDesc = freezed,
    Object? likeCount = freezed,
    Object? commentCount = freezed,
    Object? ownerId = freezed,
    Object? deleteFlag = freezed,
    Object? createBy = freezed,
    Object? createdAt = freezed,
    Object? updateBy = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      videoUrl: videoUrl == freezed
          ? _value.videoUrl
          : videoUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      thumbnailUrl: thumbnailUrl == freezed
          ? _value.thumbnailUrl
          : thumbnailUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      videoCaption: videoCaption == freezed
          ? _value.videoCaption
          : videoCaption // ignore: cast_nullable_to_non_nullable
              as String,
      videoDesc: videoDesc == freezed
          ? _value.videoDesc
          : videoDesc // ignore: cast_nullable_to_non_nullable
              as String,
      likeCount: likeCount == freezed
          ? _value.likeCount
          : likeCount // ignore: cast_nullable_to_non_nullable
              as int?,
      commentCount: commentCount == freezed
          ? _value.commentCount
          : commentCount // ignore: cast_nullable_to_non_nullable
              as int?,
      ownerId: ownerId == freezed
          ? _value.ownerId
          : ownerId // ignore: cast_nullable_to_non_nullable
              as int,
      deleteFlag: deleteFlag == freezed
          ? _value.deleteFlag
          : deleteFlag // ignore: cast_nullable_to_non_nullable
              as bool?,
      createBy: createBy == freezed
          ? _value.createBy
          : createBy // ignore: cast_nullable_to_non_nullable
              as int?,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updateBy: updateBy == freezed
          ? _value.updateBy
          : updateBy // ignore: cast_nullable_to_non_nullable
              as int?,
      updatedAt: updatedAt == freezed
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
abstract class _$VideoResponseEntityCopyWith<$Res>
    implements $VideoResponseEntityCopyWith<$Res> {
  factory _$VideoResponseEntityCopyWith(_VideoResponseEntity value,
          $Res Function(_VideoResponseEntity) then) =
      __$VideoResponseEntityCopyWithImpl<$Res>;
  @override
  $Res call(
      {int id,
      String? videoUrl,
      String? thumbnailUrl,
      String videoCaption,
      String videoDesc,
      int? likeCount,
      int? commentCount,
      int ownerId,
      bool? deleteFlag,
      int? createBy,
      DateTime? createdAt,
      int? updateBy,
      DateTime? updatedAt});
}

/// @nodoc
class __$VideoResponseEntityCopyWithImpl<$Res>
    extends _$VideoResponseEntityCopyWithImpl<$Res>
    implements _$VideoResponseEntityCopyWith<$Res> {
  __$VideoResponseEntityCopyWithImpl(
      _VideoResponseEntity _value, $Res Function(_VideoResponseEntity) _then)
      : super(_value, (v) => _then(v as _VideoResponseEntity));

  @override
  _VideoResponseEntity get _value => super._value as _VideoResponseEntity;

  @override
  $Res call({
    Object? id = freezed,
    Object? videoUrl = freezed,
    Object? thumbnailUrl = freezed,
    Object? videoCaption = freezed,
    Object? videoDesc = freezed,
    Object? likeCount = freezed,
    Object? commentCount = freezed,
    Object? ownerId = freezed,
    Object? deleteFlag = freezed,
    Object? createBy = freezed,
    Object? createdAt = freezed,
    Object? updateBy = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_VideoResponseEntity(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      videoUrl: videoUrl == freezed
          ? _value.videoUrl
          : videoUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      thumbnailUrl: thumbnailUrl == freezed
          ? _value.thumbnailUrl
          : thumbnailUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      videoCaption: videoCaption == freezed
          ? _value.videoCaption
          : videoCaption // ignore: cast_nullable_to_non_nullable
              as String,
      videoDesc: videoDesc == freezed
          ? _value.videoDesc
          : videoDesc // ignore: cast_nullable_to_non_nullable
              as String,
      likeCount: likeCount == freezed
          ? _value.likeCount
          : likeCount // ignore: cast_nullable_to_non_nullable
              as int?,
      commentCount: commentCount == freezed
          ? _value.commentCount
          : commentCount // ignore: cast_nullable_to_non_nullable
              as int?,
      ownerId: ownerId == freezed
          ? _value.ownerId
          : ownerId // ignore: cast_nullable_to_non_nullable
              as int,
      deleteFlag: deleteFlag == freezed
          ? _value.deleteFlag
          : deleteFlag // ignore: cast_nullable_to_non_nullable
              as bool?,
      createBy: createBy == freezed
          ? _value.createBy
          : createBy // ignore: cast_nullable_to_non_nullable
              as int?,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updateBy: updateBy == freezed
          ? _value.updateBy
          : updateBy // ignore: cast_nullable_to_non_nullable
              as int?,
      updatedAt: updatedAt == freezed
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_VideoResponseEntity implements _VideoResponseEntity {
  const _$_VideoResponseEntity(
      {this.id = 0,
      this.videoUrl,
      this.thumbnailUrl,
      this.videoCaption = "",
      this.videoDesc = "",
      this.likeCount,
      this.commentCount,
      this.ownerId = 0,
      this.deleteFlag,
      this.createBy,
      this.createdAt,
      this.updateBy,
      this.updatedAt});

  factory _$_VideoResponseEntity.fromJson(Map<String, dynamic> json) =>
      _$_$_VideoResponseEntityFromJson(json);

  @JsonKey(defaultValue: 0)
  @override
  final int id;
  @override
  final String? videoUrl;
  @override
  final String? thumbnailUrl;
  @JsonKey(defaultValue: "")
  @override
  final String videoCaption;
  @JsonKey(defaultValue: "")
  @override
  final String videoDesc;
  @override
  final int? likeCount;
  @override
  final int? commentCount;
  @JsonKey(defaultValue: 0)
  @override
  final int ownerId;
  @override
  final bool? deleteFlag;
  @override
  final int? createBy;
  @override
  final DateTime? createdAt;
  @override
  final int? updateBy;
  @override
  final DateTime? updatedAt;

  @override
  String toString() {
    return 'VideoResponseEntity(id: $id, videoUrl: $videoUrl, thumbnailUrl: $thumbnailUrl, videoCaption: $videoCaption, videoDesc: $videoDesc, likeCount: $likeCount, commentCount: $commentCount, ownerId: $ownerId, deleteFlag: $deleteFlag, createBy: $createBy, createdAt: $createdAt, updateBy: $updateBy, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _VideoResponseEntity &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.videoUrl, videoUrl) ||
                const DeepCollectionEquality()
                    .equals(other.videoUrl, videoUrl)) &&
            (identical(other.thumbnailUrl, thumbnailUrl) ||
                const DeepCollectionEquality()
                    .equals(other.thumbnailUrl, thumbnailUrl)) &&
            (identical(other.videoCaption, videoCaption) ||
                const DeepCollectionEquality()
                    .equals(other.videoCaption, videoCaption)) &&
            (identical(other.videoDesc, videoDesc) ||
                const DeepCollectionEquality()
                    .equals(other.videoDesc, videoDesc)) &&
            (identical(other.likeCount, likeCount) ||
                const DeepCollectionEquality()
                    .equals(other.likeCount, likeCount)) &&
            (identical(other.commentCount, commentCount) ||
                const DeepCollectionEquality()
                    .equals(other.commentCount, commentCount)) &&
            (identical(other.ownerId, ownerId) ||
                const DeepCollectionEquality()
                    .equals(other.ownerId, ownerId)) &&
            (identical(other.deleteFlag, deleteFlag) ||
                const DeepCollectionEquality()
                    .equals(other.deleteFlag, deleteFlag)) &&
            (identical(other.createBy, createBy) ||
                const DeepCollectionEquality()
                    .equals(other.createBy, createBy)) &&
            (identical(other.createdAt, createdAt) ||
                const DeepCollectionEquality()
                    .equals(other.createdAt, createdAt)) &&
            (identical(other.updateBy, updateBy) ||
                const DeepCollectionEquality()
                    .equals(other.updateBy, updateBy)) &&
            (identical(other.updatedAt, updatedAt) ||
                const DeepCollectionEquality()
                    .equals(other.updatedAt, updatedAt)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(videoUrl) ^
      const DeepCollectionEquality().hash(thumbnailUrl) ^
      const DeepCollectionEquality().hash(videoCaption) ^
      const DeepCollectionEquality().hash(videoDesc) ^
      const DeepCollectionEquality().hash(likeCount) ^
      const DeepCollectionEquality().hash(commentCount) ^
      const DeepCollectionEquality().hash(ownerId) ^
      const DeepCollectionEquality().hash(deleteFlag) ^
      const DeepCollectionEquality().hash(createBy) ^
      const DeepCollectionEquality().hash(createdAt) ^
      const DeepCollectionEquality().hash(updateBy) ^
      const DeepCollectionEquality().hash(updatedAt);

  @JsonKey(ignore: true)
  @override
  _$VideoResponseEntityCopyWith<_VideoResponseEntity> get copyWith =>
      __$VideoResponseEntityCopyWithImpl<_VideoResponseEntity>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_VideoResponseEntityToJson(this);
  }
}

abstract class _VideoResponseEntity implements VideoResponseEntity {
  const factory _VideoResponseEntity(
      {int id,
      String? videoUrl,
      String? thumbnailUrl,
      String videoCaption,
      String videoDesc,
      int? likeCount,
      int? commentCount,
      int ownerId,
      bool? deleteFlag,
      int? createBy,
      DateTime? createdAt,
      int? updateBy,
      DateTime? updatedAt}) = _$_VideoResponseEntity;

  factory _VideoResponseEntity.fromJson(Map<String, dynamic> json) =
      _$_VideoResponseEntity.fromJson;

  @override
  int get id => throw _privateConstructorUsedError;
  @override
  String? get videoUrl => throw _privateConstructorUsedError;
  @override
  String? get thumbnailUrl => throw _privateConstructorUsedError;
  @override
  String get videoCaption => throw _privateConstructorUsedError;
  @override
  String get videoDesc => throw _privateConstructorUsedError;
  @override
  int? get likeCount => throw _privateConstructorUsedError;
  @override
  int? get commentCount => throw _privateConstructorUsedError;
  @override
  int get ownerId => throw _privateConstructorUsedError;
  @override
  bool? get deleteFlag => throw _privateConstructorUsedError;
  @override
  int? get createBy => throw _privateConstructorUsedError;
  @override
  DateTime? get createdAt => throw _privateConstructorUsedError;
  @override
  int? get updateBy => throw _privateConstructorUsedError;
  @override
  DateTime? get updatedAt => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$VideoResponseEntityCopyWith<_VideoResponseEntity> get copyWith =>
      throw _privateConstructorUsedError;
}
