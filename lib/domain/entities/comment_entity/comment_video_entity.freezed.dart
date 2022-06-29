// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'comment_video_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CommentVideoEntity _$CommentVideoEntityFromJson(Map<String, dynamic> json) {
  return _CommentVideoEntity.fromJson(json);
}

/// @nodoc
class _$CommentVideoEntityTearOff {
  const _$CommentVideoEntityTearOff();

  _CommentVideoEntity call(
      {int id = 0,
      int? videoId,
      int? parentCommentId,
      String? commentVideo,
      int? replies,
      int? userId,
      String? ownerAvatar,
      String? ownerUserName,
      String? ownerDisplayName,
      bool? isCommentAuthor,
      bool isSending = false}) {
    return _CommentVideoEntity(
      id: id,
      videoId: videoId,
      parentCommentId: parentCommentId,
      commentVideo: commentVideo,
      replies: replies,
      userId: userId,
      ownerAvatar: ownerAvatar,
      ownerUserName: ownerUserName,
      ownerDisplayName: ownerDisplayName,
      isCommentAuthor: isCommentAuthor,
      isSending: isSending,
    );
  }

  CommentVideoEntity fromJson(Map<String, Object> json) {
    return CommentVideoEntity.fromJson(json);
  }
}

/// @nodoc
const $CommentVideoEntity = _$CommentVideoEntityTearOff();

/// @nodoc
mixin _$CommentVideoEntity {
  int get id => throw _privateConstructorUsedError;
  int? get videoId => throw _privateConstructorUsedError;
  int? get parentCommentId => throw _privateConstructorUsedError;
  String? get commentVideo => throw _privateConstructorUsedError;
  int? get replies => throw _privateConstructorUsedError;
  int? get userId => throw _privateConstructorUsedError;
  String? get ownerAvatar => throw _privateConstructorUsedError;
  String? get ownerUserName => throw _privateConstructorUsedError;
  String? get ownerDisplayName => throw _privateConstructorUsedError;
  bool? get isCommentAuthor => throw _privateConstructorUsedError;
  bool get isSending => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CommentVideoEntityCopyWith<CommentVideoEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CommentVideoEntityCopyWith<$Res> {
  factory $CommentVideoEntityCopyWith(
          CommentVideoEntity value, $Res Function(CommentVideoEntity) then) =
      _$CommentVideoEntityCopyWithImpl<$Res>;
  $Res call(
      {int id,
      int? videoId,
      int? parentCommentId,
      String? commentVideo,
      int? replies,
      int? userId,
      String? ownerAvatar,
      String? ownerUserName,
      String? ownerDisplayName,
      bool? isCommentAuthor,
      bool isSending});
}

/// @nodoc
class _$CommentVideoEntityCopyWithImpl<$Res>
    implements $CommentVideoEntityCopyWith<$Res> {
  _$CommentVideoEntityCopyWithImpl(this._value, this._then);

  final CommentVideoEntity _value;
  // ignore: unused_field
  final $Res Function(CommentVideoEntity) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? videoId = freezed,
    Object? parentCommentId = freezed,
    Object? commentVideo = freezed,
    Object? replies = freezed,
    Object? userId = freezed,
    Object? ownerAvatar = freezed,
    Object? ownerUserName = freezed,
    Object? ownerDisplayName = freezed,
    Object? isCommentAuthor = freezed,
    Object? isSending = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      videoId: videoId == freezed
          ? _value.videoId
          : videoId // ignore: cast_nullable_to_non_nullable
              as int?,
      parentCommentId: parentCommentId == freezed
          ? _value.parentCommentId
          : parentCommentId // ignore: cast_nullable_to_non_nullable
              as int?,
      commentVideo: commentVideo == freezed
          ? _value.commentVideo
          : commentVideo // ignore: cast_nullable_to_non_nullable
              as String?,
      replies: replies == freezed
          ? _value.replies
          : replies // ignore: cast_nullable_to_non_nullable
              as int?,
      userId: userId == freezed
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int?,
      ownerAvatar: ownerAvatar == freezed
          ? _value.ownerAvatar
          : ownerAvatar // ignore: cast_nullable_to_non_nullable
              as String?,
      ownerUserName: ownerUserName == freezed
          ? _value.ownerUserName
          : ownerUserName // ignore: cast_nullable_to_non_nullable
              as String?,
      ownerDisplayName: ownerDisplayName == freezed
          ? _value.ownerDisplayName
          : ownerDisplayName // ignore: cast_nullable_to_non_nullable
              as String?,
      isCommentAuthor: isCommentAuthor == freezed
          ? _value.isCommentAuthor
          : isCommentAuthor // ignore: cast_nullable_to_non_nullable
              as bool?,
      isSending: isSending == freezed
          ? _value.isSending
          : isSending // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$CommentVideoEntityCopyWith<$Res>
    implements $CommentVideoEntityCopyWith<$Res> {
  factory _$CommentVideoEntityCopyWith(
          _CommentVideoEntity value, $Res Function(_CommentVideoEntity) then) =
      __$CommentVideoEntityCopyWithImpl<$Res>;
  @override
  $Res call(
      {int id,
      int? videoId,
      int? parentCommentId,
      String? commentVideo,
      int? replies,
      int? userId,
      String? ownerAvatar,
      String? ownerUserName,
      String? ownerDisplayName,
      bool? isCommentAuthor,
      bool isSending});
}

/// @nodoc
class __$CommentVideoEntityCopyWithImpl<$Res>
    extends _$CommentVideoEntityCopyWithImpl<$Res>
    implements _$CommentVideoEntityCopyWith<$Res> {
  __$CommentVideoEntityCopyWithImpl(
      _CommentVideoEntity _value, $Res Function(_CommentVideoEntity) _then)
      : super(_value, (v) => _then(v as _CommentVideoEntity));

  @override
  _CommentVideoEntity get _value => super._value as _CommentVideoEntity;

  @override
  $Res call({
    Object? id = freezed,
    Object? videoId = freezed,
    Object? parentCommentId = freezed,
    Object? commentVideo = freezed,
    Object? replies = freezed,
    Object? userId = freezed,
    Object? ownerAvatar = freezed,
    Object? ownerUserName = freezed,
    Object? ownerDisplayName = freezed,
    Object? isCommentAuthor = freezed,
    Object? isSending = freezed,
  }) {
    return _then(_CommentVideoEntity(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      videoId: videoId == freezed
          ? _value.videoId
          : videoId // ignore: cast_nullable_to_non_nullable
              as int?,
      parentCommentId: parentCommentId == freezed
          ? _value.parentCommentId
          : parentCommentId // ignore: cast_nullable_to_non_nullable
              as int?,
      commentVideo: commentVideo == freezed
          ? _value.commentVideo
          : commentVideo // ignore: cast_nullable_to_non_nullable
              as String?,
      replies: replies == freezed
          ? _value.replies
          : replies // ignore: cast_nullable_to_non_nullable
              as int?,
      userId: userId == freezed
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int?,
      ownerAvatar: ownerAvatar == freezed
          ? _value.ownerAvatar
          : ownerAvatar // ignore: cast_nullable_to_non_nullable
              as String?,
      ownerUserName: ownerUserName == freezed
          ? _value.ownerUserName
          : ownerUserName // ignore: cast_nullable_to_non_nullable
              as String?,
      ownerDisplayName: ownerDisplayName == freezed
          ? _value.ownerDisplayName
          : ownerDisplayName // ignore: cast_nullable_to_non_nullable
              as String?,
      isCommentAuthor: isCommentAuthor == freezed
          ? _value.isCommentAuthor
          : isCommentAuthor // ignore: cast_nullable_to_non_nullable
              as bool?,
      isSending: isSending == freezed
          ? _value.isSending
          : isSending // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CommentVideoEntity implements _CommentVideoEntity {
  const _$_CommentVideoEntity(
      {this.id = 0,
      this.videoId,
      this.parentCommentId,
      this.commentVideo,
      this.replies,
      this.userId,
      this.ownerAvatar,
      this.ownerUserName,
      this.ownerDisplayName,
      this.isCommentAuthor,
      this.isSending = false});

  factory _$_CommentVideoEntity.fromJson(Map<String, dynamic> json) =>
      _$_$_CommentVideoEntityFromJson(json);

  @JsonKey(defaultValue: 0)
  @override
  final int id;
  @override
  final int? videoId;
  @override
  final int? parentCommentId;
  @override
  final String? commentVideo;
  @override
  final int? replies;
  @override
  final int? userId;
  @override
  final String? ownerAvatar;
  @override
  final String? ownerUserName;
  @override
  final String? ownerDisplayName;
  @override
  final bool? isCommentAuthor;
  @JsonKey(defaultValue: false)
  @override
  final bool isSending;

  @override
  String toString() {
    return 'CommentVideoEntity(id: $id, videoId: $videoId, parentCommentId: $parentCommentId, commentVideo: $commentVideo, replies: $replies, userId: $userId, ownerAvatar: $ownerAvatar, ownerUserName: $ownerUserName, ownerDisplayName: $ownerDisplayName, isCommentAuthor: $isCommentAuthor, isSending: $isSending)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _CommentVideoEntity &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.videoId, videoId) ||
                const DeepCollectionEquality()
                    .equals(other.videoId, videoId)) &&
            (identical(other.parentCommentId, parentCommentId) ||
                const DeepCollectionEquality()
                    .equals(other.parentCommentId, parentCommentId)) &&
            (identical(other.commentVideo, commentVideo) ||
                const DeepCollectionEquality()
                    .equals(other.commentVideo, commentVideo)) &&
            (identical(other.replies, replies) ||
                const DeepCollectionEquality()
                    .equals(other.replies, replies)) &&
            (identical(other.userId, userId) ||
                const DeepCollectionEquality().equals(other.userId, userId)) &&
            (identical(other.ownerAvatar, ownerAvatar) ||
                const DeepCollectionEquality()
                    .equals(other.ownerAvatar, ownerAvatar)) &&
            (identical(other.ownerUserName, ownerUserName) ||
                const DeepCollectionEquality()
                    .equals(other.ownerUserName, ownerUserName)) &&
            (identical(other.ownerDisplayName, ownerDisplayName) ||
                const DeepCollectionEquality()
                    .equals(other.ownerDisplayName, ownerDisplayName)) &&
            (identical(other.isCommentAuthor, isCommentAuthor) ||
                const DeepCollectionEquality()
                    .equals(other.isCommentAuthor, isCommentAuthor)) &&
            (identical(other.isSending, isSending) ||
                const DeepCollectionEquality()
                    .equals(other.isSending, isSending)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(videoId) ^
      const DeepCollectionEquality().hash(parentCommentId) ^
      const DeepCollectionEquality().hash(commentVideo) ^
      const DeepCollectionEquality().hash(replies) ^
      const DeepCollectionEquality().hash(userId) ^
      const DeepCollectionEquality().hash(ownerAvatar) ^
      const DeepCollectionEquality().hash(ownerUserName) ^
      const DeepCollectionEquality().hash(ownerDisplayName) ^
      const DeepCollectionEquality().hash(isCommentAuthor) ^
      const DeepCollectionEquality().hash(isSending);

  @JsonKey(ignore: true)
  @override
  _$CommentVideoEntityCopyWith<_CommentVideoEntity> get copyWith =>
      __$CommentVideoEntityCopyWithImpl<_CommentVideoEntity>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_CommentVideoEntityToJson(this);
  }
}

abstract class _CommentVideoEntity implements CommentVideoEntity {
  const factory _CommentVideoEntity(
      {int id,
      int? videoId,
      int? parentCommentId,
      String? commentVideo,
      int? replies,
      int? userId,
      String? ownerAvatar,
      String? ownerUserName,
      String? ownerDisplayName,
      bool? isCommentAuthor,
      bool isSending}) = _$_CommentVideoEntity;

  factory _CommentVideoEntity.fromJson(Map<String, dynamic> json) =
      _$_CommentVideoEntity.fromJson;

  @override
  int get id => throw _privateConstructorUsedError;
  @override
  int? get videoId => throw _privateConstructorUsedError;
  @override
  int? get parentCommentId => throw _privateConstructorUsedError;
  @override
  String? get commentVideo => throw _privateConstructorUsedError;
  @override
  int? get replies => throw _privateConstructorUsedError;
  @override
  int? get userId => throw _privateConstructorUsedError;
  @override
  String? get ownerAvatar => throw _privateConstructorUsedError;
  @override
  String? get ownerUserName => throw _privateConstructorUsedError;
  @override
  String? get ownerDisplayName => throw _privateConstructorUsedError;
  @override
  bool? get isCommentAuthor => throw _privateConstructorUsedError;
  @override
  bool get isSending => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$CommentVideoEntityCopyWith<_CommentVideoEntity> get copyWith =>
      throw _privateConstructorUsedError;
}
