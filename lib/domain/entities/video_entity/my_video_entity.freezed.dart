// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'my_video_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MyVideoEntity _$MyVideoEntityFromJson(Map<String, dynamic> json) {
  return _MyVideoEntity.fromJson(json);
}

/// @nodoc
class _$MyVideoEntityTearOff {
  const _$MyVideoEntityTearOff();

  _MyVideoEntity call(
      {dynamic videoId = 0,
      String? videoUrl,
      String? thumbnailUrl,
      int? userId,
      String? userName,
      String? displayName,
      String? uid}) {
    return _MyVideoEntity(
      videoId: videoId,
      videoUrl: videoUrl,
      thumbnailUrl: thumbnailUrl,
      userId: userId,
      userName: userName,
      displayName: displayName,
      uid: uid,
    );
  }

  MyVideoEntity fromJson(Map<String, Object> json) {
    return MyVideoEntity.fromJson(json);
  }
}

/// @nodoc
const $MyVideoEntity = _$MyVideoEntityTearOff();

/// @nodoc
mixin _$MyVideoEntity {
  dynamic get videoId => throw _privateConstructorUsedError;
  String? get videoUrl => throw _privateConstructorUsedError;
  String? get thumbnailUrl => throw _privateConstructorUsedError;
  int? get userId => throw _privateConstructorUsedError;
  String? get userName => throw _privateConstructorUsedError;
  String? get displayName => throw _privateConstructorUsedError;
  String? get uid => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MyVideoEntityCopyWith<MyVideoEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MyVideoEntityCopyWith<$Res> {
  factory $MyVideoEntityCopyWith(
          MyVideoEntity value, $Res Function(MyVideoEntity) then) =
      _$MyVideoEntityCopyWithImpl<$Res>;
  $Res call(
      {dynamic videoId,
      String? videoUrl,
      String? thumbnailUrl,
      int? userId,
      String? userName,
      String? displayName,
      String? uid});
}

/// @nodoc
class _$MyVideoEntityCopyWithImpl<$Res>
    implements $MyVideoEntityCopyWith<$Res> {
  _$MyVideoEntityCopyWithImpl(this._value, this._then);

  final MyVideoEntity _value;
  // ignore: unused_field
  final $Res Function(MyVideoEntity) _then;

  @override
  $Res call({
    Object? videoId = freezed,
    Object? videoUrl = freezed,
    Object? thumbnailUrl = freezed,
    Object? userId = freezed,
    Object? userName = freezed,
    Object? displayName = freezed,
    Object? uid = freezed,
  }) {
    return _then(_value.copyWith(
      videoId: videoId == freezed
          ? _value.videoId
          : videoId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      videoUrl: videoUrl == freezed
          ? _value.videoUrl
          : videoUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      thumbnailUrl: thumbnailUrl == freezed
          ? _value.thumbnailUrl
          : thumbnailUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      userId: userId == freezed
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int?,
      userName: userName == freezed
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String?,
      displayName: displayName == freezed
          ? _value.displayName
          : displayName // ignore: cast_nullable_to_non_nullable
              as String?,
      uid: uid == freezed
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$MyVideoEntityCopyWith<$Res>
    implements $MyVideoEntityCopyWith<$Res> {
  factory _$MyVideoEntityCopyWith(
          _MyVideoEntity value, $Res Function(_MyVideoEntity) then) =
      __$MyVideoEntityCopyWithImpl<$Res>;
  @override
  $Res call(
      {dynamic videoId,
      String? videoUrl,
      String? thumbnailUrl,
      int? userId,
      String? userName,
      String? displayName,
      String? uid});
}

/// @nodoc
class __$MyVideoEntityCopyWithImpl<$Res>
    extends _$MyVideoEntityCopyWithImpl<$Res>
    implements _$MyVideoEntityCopyWith<$Res> {
  __$MyVideoEntityCopyWithImpl(
      _MyVideoEntity _value, $Res Function(_MyVideoEntity) _then)
      : super(_value, (v) => _then(v as _MyVideoEntity));

  @override
  _MyVideoEntity get _value => super._value as _MyVideoEntity;

  @override
  $Res call({
    Object? videoId = freezed,
    Object? videoUrl = freezed,
    Object? thumbnailUrl = freezed,
    Object? userId = freezed,
    Object? userName = freezed,
    Object? displayName = freezed,
    Object? uid = freezed,
  }) {
    return _then(_MyVideoEntity(
      videoId: videoId == freezed ? _value.videoId : videoId,
      videoUrl: videoUrl == freezed
          ? _value.videoUrl
          : videoUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      thumbnailUrl: thumbnailUrl == freezed
          ? _value.thumbnailUrl
          : thumbnailUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      userId: userId == freezed
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int?,
      userName: userName == freezed
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String?,
      displayName: displayName == freezed
          ? _value.displayName
          : displayName // ignore: cast_nullable_to_non_nullable
              as String?,
      uid: uid == freezed
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_MyVideoEntity implements _MyVideoEntity {
  const _$_MyVideoEntity(
      {this.videoId = 0,
      this.videoUrl,
      this.thumbnailUrl,
      this.userId,
      this.userName,
      this.displayName,
      this.uid});

  factory _$_MyVideoEntity.fromJson(Map<String, dynamic> json) =>
      _$_$_MyVideoEntityFromJson(json);

  @JsonKey(defaultValue: 0)
  @override
  final dynamic videoId;
  @override
  final String? videoUrl;
  @override
  final String? thumbnailUrl;
  @override
  final int? userId;
  @override
  final String? userName;
  @override
  final String? displayName;
  @override
  final String? uid;

  @override
  String toString() {
    return 'MyVideoEntity(videoId: $videoId, videoUrl: $videoUrl, thumbnailUrl: $thumbnailUrl, userId: $userId, userName: $userName, displayName: $displayName, uid: $uid)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _MyVideoEntity &&
            (identical(other.videoId, videoId) ||
                const DeepCollectionEquality()
                    .equals(other.videoId, videoId)) &&
            (identical(other.videoUrl, videoUrl) ||
                const DeepCollectionEquality()
                    .equals(other.videoUrl, videoUrl)) &&
            (identical(other.thumbnailUrl, thumbnailUrl) ||
                const DeepCollectionEquality()
                    .equals(other.thumbnailUrl, thumbnailUrl)) &&
            (identical(other.userId, userId) ||
                const DeepCollectionEquality().equals(other.userId, userId)) &&
            (identical(other.userName, userName) ||
                const DeepCollectionEquality()
                    .equals(other.userName, userName)) &&
            (identical(other.displayName, displayName) ||
                const DeepCollectionEquality()
                    .equals(other.displayName, displayName)) &&
            (identical(other.uid, uid) ||
                const DeepCollectionEquality().equals(other.uid, uid)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(videoId) ^
      const DeepCollectionEquality().hash(videoUrl) ^
      const DeepCollectionEquality().hash(thumbnailUrl) ^
      const DeepCollectionEquality().hash(userId) ^
      const DeepCollectionEquality().hash(userName) ^
      const DeepCollectionEquality().hash(displayName) ^
      const DeepCollectionEquality().hash(uid);

  @JsonKey(ignore: true)
  @override
  _$MyVideoEntityCopyWith<_MyVideoEntity> get copyWith =>
      __$MyVideoEntityCopyWithImpl<_MyVideoEntity>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_MyVideoEntityToJson(this);
  }
}

abstract class _MyVideoEntity implements MyVideoEntity {
  const factory _MyVideoEntity(
      {dynamic videoId,
      String? videoUrl,
      String? thumbnailUrl,
      int? userId,
      String? userName,
      String? displayName,
      String? uid}) = _$_MyVideoEntity;

  factory _MyVideoEntity.fromJson(Map<String, dynamic> json) =
      _$_MyVideoEntity.fromJson;

  @override
  dynamic get videoId => throw _privateConstructorUsedError;
  @override
  String? get videoUrl => throw _privateConstructorUsedError;
  @override
  String? get thumbnailUrl => throw _privateConstructorUsedError;
  @override
  int? get userId => throw _privateConstructorUsedError;
  @override
  String? get userName => throw _privateConstructorUsedError;
  @override
  String? get displayName => throw _privateConstructorUsedError;
  @override
  String? get uid => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$MyVideoEntityCopyWith<_MyVideoEntity> get copyWith =>
      throw _privateConstructorUsedError;
}
