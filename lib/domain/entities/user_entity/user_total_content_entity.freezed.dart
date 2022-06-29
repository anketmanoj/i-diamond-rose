// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'user_total_content_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

UserTotalContentModel _$UserTotalContentModelFromJson(
    Map<String, dynamic> json) {
  return _UserTotalContentModel.fromJson(json);
}

/// @nodoc
class _$UserTotalContentModelTearOff {
  const _$UserTotalContentModelTearOff();

  _UserTotalContentModel call(
      {int? totalFollower,
      int? totalVideo,
      int? totalFollowing,
      bool? isSubscribe,
      String? avatarUrl,
      String? coverUrl,
      UserContentModel? userInfo}) {
    return _UserTotalContentModel(
      totalFollower: totalFollower,
      totalVideo: totalVideo,
      totalFollowing: totalFollowing,
      isSubscribe: isSubscribe,
      avatarUrl: avatarUrl,
      coverUrl: coverUrl,
      userInfo: userInfo,
    );
  }

  UserTotalContentModel fromJson(Map<String, Object> json) {
    return UserTotalContentModel.fromJson(json);
  }
}

/// @nodoc
const $UserTotalContentModel = _$UserTotalContentModelTearOff();

/// @nodoc
mixin _$UserTotalContentModel {
  int? get totalFollower => throw _privateConstructorUsedError;
  int? get totalVideo => throw _privateConstructorUsedError;
  int? get totalFollowing => throw _privateConstructorUsedError;
  bool? get isSubscribe => throw _privateConstructorUsedError;
  String? get avatarUrl => throw _privateConstructorUsedError;
  String? get coverUrl => throw _privateConstructorUsedError;
  UserContentModel? get userInfo => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserTotalContentModelCopyWith<UserTotalContentModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserTotalContentModelCopyWith<$Res> {
  factory $UserTotalContentModelCopyWith(UserTotalContentModel value,
          $Res Function(UserTotalContentModel) then) =
      _$UserTotalContentModelCopyWithImpl<$Res>;
  $Res call(
      {int? totalFollower,
      int? totalVideo,
      int? totalFollowing,
      bool? isSubscribe,
      String? avatarUrl,
      String? coverUrl,
      UserContentModel? userInfo});

  $UserContentModelCopyWith<$Res>? get userInfo;
}

/// @nodoc
class _$UserTotalContentModelCopyWithImpl<$Res>
    implements $UserTotalContentModelCopyWith<$Res> {
  _$UserTotalContentModelCopyWithImpl(this._value, this._then);

  final UserTotalContentModel _value;
  // ignore: unused_field
  final $Res Function(UserTotalContentModel) _then;

  @override
  $Res call({
    Object? totalFollower = freezed,
    Object? totalVideo = freezed,
    Object? totalFollowing = freezed,
    Object? isSubscribe = freezed,
    Object? avatarUrl = freezed,
    Object? coverUrl = freezed,
    Object? userInfo = freezed,
  }) {
    return _then(_value.copyWith(
      totalFollower: totalFollower == freezed
          ? _value.totalFollower
          : totalFollower // ignore: cast_nullable_to_non_nullable
              as int?,
      totalVideo: totalVideo == freezed
          ? _value.totalVideo
          : totalVideo // ignore: cast_nullable_to_non_nullable
              as int?,
      totalFollowing: totalFollowing == freezed
          ? _value.totalFollowing
          : totalFollowing // ignore: cast_nullable_to_non_nullable
              as int?,
      isSubscribe: isSubscribe == freezed
          ? _value.isSubscribe
          : isSubscribe // ignore: cast_nullable_to_non_nullable
              as bool?,
      avatarUrl: avatarUrl == freezed
          ? _value.avatarUrl
          : avatarUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      coverUrl: coverUrl == freezed
          ? _value.coverUrl
          : coverUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      userInfo: userInfo == freezed
          ? _value.userInfo
          : userInfo // ignore: cast_nullable_to_non_nullable
              as UserContentModel?,
    ));
  }

  @override
  $UserContentModelCopyWith<$Res>? get userInfo {
    if (_value.userInfo == null) {
      return null;
    }

    return $UserContentModelCopyWith<$Res>(_value.userInfo!, (value) {
      return _then(_value.copyWith(userInfo: value));
    });
  }
}

/// @nodoc
abstract class _$UserTotalContentModelCopyWith<$Res>
    implements $UserTotalContentModelCopyWith<$Res> {
  factory _$UserTotalContentModelCopyWith(_UserTotalContentModel value,
          $Res Function(_UserTotalContentModel) then) =
      __$UserTotalContentModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {int? totalFollower,
      int? totalVideo,
      int? totalFollowing,
      bool? isSubscribe,
      String? avatarUrl,
      String? coverUrl,
      UserContentModel? userInfo});

  @override
  $UserContentModelCopyWith<$Res>? get userInfo;
}

/// @nodoc
class __$UserTotalContentModelCopyWithImpl<$Res>
    extends _$UserTotalContentModelCopyWithImpl<$Res>
    implements _$UserTotalContentModelCopyWith<$Res> {
  __$UserTotalContentModelCopyWithImpl(_UserTotalContentModel _value,
      $Res Function(_UserTotalContentModel) _then)
      : super(_value, (v) => _then(v as _UserTotalContentModel));

  @override
  _UserTotalContentModel get _value => super._value as _UserTotalContentModel;

  @override
  $Res call({
    Object? totalFollower = freezed,
    Object? totalVideo = freezed,
    Object? totalFollowing = freezed,
    Object? isSubscribe = freezed,
    Object? avatarUrl = freezed,
    Object? coverUrl = freezed,
    Object? userInfo = freezed,
  }) {
    return _then(_UserTotalContentModel(
      totalFollower: totalFollower == freezed
          ? _value.totalFollower
          : totalFollower // ignore: cast_nullable_to_non_nullable
              as int?,
      totalVideo: totalVideo == freezed
          ? _value.totalVideo
          : totalVideo // ignore: cast_nullable_to_non_nullable
              as int?,
      totalFollowing: totalFollowing == freezed
          ? _value.totalFollowing
          : totalFollowing // ignore: cast_nullable_to_non_nullable
              as int?,
      isSubscribe: isSubscribe == freezed
          ? _value.isSubscribe
          : isSubscribe // ignore: cast_nullable_to_non_nullable
              as bool?,
      avatarUrl: avatarUrl == freezed
          ? _value.avatarUrl
          : avatarUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      coverUrl: coverUrl == freezed
          ? _value.coverUrl
          : coverUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      userInfo: userInfo == freezed
          ? _value.userInfo
          : userInfo // ignore: cast_nullable_to_non_nullable
              as UserContentModel?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_UserTotalContentModel
    with DiagnosticableTreeMixin
    implements _UserTotalContentModel {
  const _$_UserTotalContentModel(
      {this.totalFollower,
      this.totalVideo,
      this.totalFollowing,
      this.isSubscribe,
      this.avatarUrl,
      this.coverUrl,
      this.userInfo});

  factory _$_UserTotalContentModel.fromJson(Map<String, dynamic> json) =>
      _$_$_UserTotalContentModelFromJson(json);

  @override
  final int? totalFollower;
  @override
  final int? totalVideo;
  @override
  final int? totalFollowing;
  @override
  final bool? isSubscribe;
  @override
  final String? avatarUrl;
  @override
  final String? coverUrl;
  @override
  final UserContentModel? userInfo;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'UserTotalContentModel(totalFollower: $totalFollower, totalVideo: $totalVideo, totalFollowing: $totalFollowing, isSubscribe: $isSubscribe, avatarUrl: $avatarUrl, coverUrl: $coverUrl, userInfo: $userInfo)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'UserTotalContentModel'))
      ..add(DiagnosticsProperty('totalFollower', totalFollower))
      ..add(DiagnosticsProperty('totalVideo', totalVideo))
      ..add(DiagnosticsProperty('totalFollowing', totalFollowing))
      ..add(DiagnosticsProperty('isSubscribe', isSubscribe))
      ..add(DiagnosticsProperty('avatarUrl', avatarUrl))
      ..add(DiagnosticsProperty('coverUrl', coverUrl))
      ..add(DiagnosticsProperty('userInfo', userInfo));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _UserTotalContentModel &&
            (identical(other.totalFollower, totalFollower) ||
                const DeepCollectionEquality()
                    .equals(other.totalFollower, totalFollower)) &&
            (identical(other.totalVideo, totalVideo) ||
                const DeepCollectionEquality()
                    .equals(other.totalVideo, totalVideo)) &&
            (identical(other.totalFollowing, totalFollowing) ||
                const DeepCollectionEquality()
                    .equals(other.totalFollowing, totalFollowing)) &&
            (identical(other.isSubscribe, isSubscribe) ||
                const DeepCollectionEquality()
                    .equals(other.isSubscribe, isSubscribe)) &&
            (identical(other.avatarUrl, avatarUrl) ||
                const DeepCollectionEquality()
                    .equals(other.avatarUrl, avatarUrl)) &&
            (identical(other.coverUrl, coverUrl) ||
                const DeepCollectionEquality()
                    .equals(other.coverUrl, coverUrl)) &&
            (identical(other.userInfo, userInfo) ||
                const DeepCollectionEquality()
                    .equals(other.userInfo, userInfo)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(totalFollower) ^
      const DeepCollectionEquality().hash(totalVideo) ^
      const DeepCollectionEquality().hash(totalFollowing) ^
      const DeepCollectionEquality().hash(isSubscribe) ^
      const DeepCollectionEquality().hash(avatarUrl) ^
      const DeepCollectionEquality().hash(coverUrl) ^
      const DeepCollectionEquality().hash(userInfo);

  @JsonKey(ignore: true)
  @override
  _$UserTotalContentModelCopyWith<_UserTotalContentModel> get copyWith =>
      __$UserTotalContentModelCopyWithImpl<_UserTotalContentModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_UserTotalContentModelToJson(this);
  }
}

abstract class _UserTotalContentModel implements UserTotalContentModel {
  const factory _UserTotalContentModel(
      {int? totalFollower,
      int? totalVideo,
      int? totalFollowing,
      bool? isSubscribe,
      String? avatarUrl,
      String? coverUrl,
      UserContentModel? userInfo}) = _$_UserTotalContentModel;

  factory _UserTotalContentModel.fromJson(Map<String, dynamic> json) =
      _$_UserTotalContentModel.fromJson;

  @override
  int? get totalFollower => throw _privateConstructorUsedError;
  @override
  int? get totalVideo => throw _privateConstructorUsedError;
  @override
  int? get totalFollowing => throw _privateConstructorUsedError;
  @override
  bool? get isSubscribe => throw _privateConstructorUsedError;
  @override
  String? get avatarUrl => throw _privateConstructorUsedError;
  @override
  String? get coverUrl => throw _privateConstructorUsedError;
  @override
  UserContentModel? get userInfo => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$UserTotalContentModelCopyWith<_UserTotalContentModel> get copyWith =>
      throw _privateConstructorUsedError;
}
