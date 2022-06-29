// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'user_social_entity_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

UserSocialModel _$UserSocialModelFromJson(Map<String, dynamic> json) {
  return _UserSocialModel.fromJson(json);
}

/// @nodoc
class _$UserSocialModelTearOff {
  const _$UserSocialModelTearOff();

  _UserSocialModel call(
      {String? tiktokUrl,
      String? twitterUrl,
      String? instagramUrl,
      String? facebookUrl,
      String? selfIntroduce}) {
    return _UserSocialModel(
      tiktokUrl: tiktokUrl,
      twitterUrl: twitterUrl,
      instagramUrl: instagramUrl,
      facebookUrl: facebookUrl,
      selfIntroduce: selfIntroduce,
    );
  }

  UserSocialModel fromJson(Map<String, Object> json) {
    return UserSocialModel.fromJson(json);
  }
}

/// @nodoc
const $UserSocialModel = _$UserSocialModelTearOff();

/// @nodoc
mixin _$UserSocialModel {
  String? get tiktokUrl => throw _privateConstructorUsedError;
  String? get twitterUrl => throw _privateConstructorUsedError;
  String? get instagramUrl => throw _privateConstructorUsedError;
  String? get facebookUrl => throw _privateConstructorUsedError;
  String? get selfIntroduce => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserSocialModelCopyWith<UserSocialModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserSocialModelCopyWith<$Res> {
  factory $UserSocialModelCopyWith(
          UserSocialModel value, $Res Function(UserSocialModel) then) =
      _$UserSocialModelCopyWithImpl<$Res>;
  $Res call(
      {String? tiktokUrl,
      String? twitterUrl,
      String? instagramUrl,
      String? facebookUrl,
      String? selfIntroduce});
}

/// @nodoc
class _$UserSocialModelCopyWithImpl<$Res>
    implements $UserSocialModelCopyWith<$Res> {
  _$UserSocialModelCopyWithImpl(this._value, this._then);

  final UserSocialModel _value;
  // ignore: unused_field
  final $Res Function(UserSocialModel) _then;

  @override
  $Res call({
    Object? tiktokUrl = freezed,
    Object? twitterUrl = freezed,
    Object? instagramUrl = freezed,
    Object? facebookUrl = freezed,
    Object? selfIntroduce = freezed,
  }) {
    return _then(_value.copyWith(
      tiktokUrl: tiktokUrl == freezed
          ? _value.tiktokUrl
          : tiktokUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      twitterUrl: twitterUrl == freezed
          ? _value.twitterUrl
          : twitterUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      instagramUrl: instagramUrl == freezed
          ? _value.instagramUrl
          : instagramUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      facebookUrl: facebookUrl == freezed
          ? _value.facebookUrl
          : facebookUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      selfIntroduce: selfIntroduce == freezed
          ? _value.selfIntroduce
          : selfIntroduce // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$UserSocialModelCopyWith<$Res>
    implements $UserSocialModelCopyWith<$Res> {
  factory _$UserSocialModelCopyWith(
          _UserSocialModel value, $Res Function(_UserSocialModel) then) =
      __$UserSocialModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {String? tiktokUrl,
      String? twitterUrl,
      String? instagramUrl,
      String? facebookUrl,
      String? selfIntroduce});
}

/// @nodoc
class __$UserSocialModelCopyWithImpl<$Res>
    extends _$UserSocialModelCopyWithImpl<$Res>
    implements _$UserSocialModelCopyWith<$Res> {
  __$UserSocialModelCopyWithImpl(
      _UserSocialModel _value, $Res Function(_UserSocialModel) _then)
      : super(_value, (v) => _then(v as _UserSocialModel));

  @override
  _UserSocialModel get _value => super._value as _UserSocialModel;

  @override
  $Res call({
    Object? tiktokUrl = freezed,
    Object? twitterUrl = freezed,
    Object? instagramUrl = freezed,
    Object? facebookUrl = freezed,
    Object? selfIntroduce = freezed,
  }) {
    return _then(_UserSocialModel(
      tiktokUrl: tiktokUrl == freezed
          ? _value.tiktokUrl
          : tiktokUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      twitterUrl: twitterUrl == freezed
          ? _value.twitterUrl
          : twitterUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      instagramUrl: instagramUrl == freezed
          ? _value.instagramUrl
          : instagramUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      facebookUrl: facebookUrl == freezed
          ? _value.facebookUrl
          : facebookUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      selfIntroduce: selfIntroduce == freezed
          ? _value.selfIntroduce
          : selfIntroduce // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_UserSocialModel implements _UserSocialModel {
  const _$_UserSocialModel(
      {this.tiktokUrl,
      this.twitterUrl,
      this.instagramUrl,
      this.facebookUrl,
      this.selfIntroduce});

  factory _$_UserSocialModel.fromJson(Map<String, dynamic> json) =>
      _$_$_UserSocialModelFromJson(json);

  @override
  final String? tiktokUrl;
  @override
  final String? twitterUrl;
  @override
  final String? instagramUrl;
  @override
  final String? facebookUrl;
  @override
  final String? selfIntroduce;

  @override
  String toString() {
    return 'UserSocialModel(tiktokUrl: $tiktokUrl, twitterUrl: $twitterUrl, instagramUrl: $instagramUrl, facebookUrl: $facebookUrl, selfIntroduce: $selfIntroduce)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _UserSocialModel &&
            (identical(other.tiktokUrl, tiktokUrl) ||
                const DeepCollectionEquality()
                    .equals(other.tiktokUrl, tiktokUrl)) &&
            (identical(other.twitterUrl, twitterUrl) ||
                const DeepCollectionEquality()
                    .equals(other.twitterUrl, twitterUrl)) &&
            (identical(other.instagramUrl, instagramUrl) ||
                const DeepCollectionEquality()
                    .equals(other.instagramUrl, instagramUrl)) &&
            (identical(other.facebookUrl, facebookUrl) ||
                const DeepCollectionEquality()
                    .equals(other.facebookUrl, facebookUrl)) &&
            (identical(other.selfIntroduce, selfIntroduce) ||
                const DeepCollectionEquality()
                    .equals(other.selfIntroduce, selfIntroduce)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(tiktokUrl) ^
      const DeepCollectionEquality().hash(twitterUrl) ^
      const DeepCollectionEquality().hash(instagramUrl) ^
      const DeepCollectionEquality().hash(facebookUrl) ^
      const DeepCollectionEquality().hash(selfIntroduce);

  @JsonKey(ignore: true)
  @override
  _$UserSocialModelCopyWith<_UserSocialModel> get copyWith =>
      __$UserSocialModelCopyWithImpl<_UserSocialModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_UserSocialModelToJson(this);
  }
}

abstract class _UserSocialModel implements UserSocialModel {
  const factory _UserSocialModel(
      {String? tiktokUrl,
      String? twitterUrl,
      String? instagramUrl,
      String? facebookUrl,
      String? selfIntroduce}) = _$_UserSocialModel;

  factory _UserSocialModel.fromJson(Map<String, dynamic> json) =
      _$_UserSocialModel.fromJson;

  @override
  String? get tiktokUrl => throw _privateConstructorUsedError;
  @override
  String? get twitterUrl => throw _privateConstructorUsedError;
  @override
  String? get instagramUrl => throw _privateConstructorUsedError;
  @override
  String? get facebookUrl => throw _privateConstructorUsedError;
  @override
  String? get selfIntroduce => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$UserSocialModelCopyWith<_UserSocialModel> get copyWith =>
      throw _privateConstructorUsedError;
}
