// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'request_shopping_cart.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

RequestShoppingCart _$RequestShoppingCartFromJson(Map<String, dynamic> json) {
  return _RequestShoppingCart.fromJson(json);
}

/// @nodoc
class _$RequestShoppingCartTearOff {
  const _$RequestShoppingCartTearOff();

  _RequestShoppingCart call(
      {int? backgroundId = 0, int? effectId = 0, int? videoId = 0}) {
    return _RequestShoppingCart(
      backgroundId: backgroundId,
      effectId: effectId,
      videoId: videoId,
    );
  }

  RequestShoppingCart fromJson(Map<String, Object> json) {
    return RequestShoppingCart.fromJson(json);
  }
}

/// @nodoc
const $RequestShoppingCart = _$RequestShoppingCartTearOff();

/// @nodoc
mixin _$RequestShoppingCart {
  int? get backgroundId => throw _privateConstructorUsedError;
  int? get effectId => throw _privateConstructorUsedError;
  int? get videoId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RequestShoppingCartCopyWith<RequestShoppingCart> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RequestShoppingCartCopyWith<$Res> {
  factory $RequestShoppingCartCopyWith(
          RequestShoppingCart value, $Res Function(RequestShoppingCart) then) =
      _$RequestShoppingCartCopyWithImpl<$Res>;
  $Res call({int? backgroundId, int? effectId, int? videoId});
}

/// @nodoc
class _$RequestShoppingCartCopyWithImpl<$Res>
    implements $RequestShoppingCartCopyWith<$Res> {
  _$RequestShoppingCartCopyWithImpl(this._value, this._then);

  final RequestShoppingCart _value;
  // ignore: unused_field
  final $Res Function(RequestShoppingCart) _then;

  @override
  $Res call({
    Object? backgroundId = freezed,
    Object? effectId = freezed,
    Object? videoId = freezed,
  }) {
    return _then(_value.copyWith(
      backgroundId: backgroundId == freezed
          ? _value.backgroundId
          : backgroundId // ignore: cast_nullable_to_non_nullable
              as int?,
      effectId: effectId == freezed
          ? _value.effectId
          : effectId // ignore: cast_nullable_to_non_nullable
              as int?,
      videoId: videoId == freezed
          ? _value.videoId
          : videoId // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
abstract class _$RequestShoppingCartCopyWith<$Res>
    implements $RequestShoppingCartCopyWith<$Res> {
  factory _$RequestShoppingCartCopyWith(_RequestShoppingCart value,
          $Res Function(_RequestShoppingCart) then) =
      __$RequestShoppingCartCopyWithImpl<$Res>;
  @override
  $Res call({int? backgroundId, int? effectId, int? videoId});
}

/// @nodoc
class __$RequestShoppingCartCopyWithImpl<$Res>
    extends _$RequestShoppingCartCopyWithImpl<$Res>
    implements _$RequestShoppingCartCopyWith<$Res> {
  __$RequestShoppingCartCopyWithImpl(
      _RequestShoppingCart _value, $Res Function(_RequestShoppingCart) _then)
      : super(_value, (v) => _then(v as _RequestShoppingCart));

  @override
  _RequestShoppingCart get _value => super._value as _RequestShoppingCart;

  @override
  $Res call({
    Object? backgroundId = freezed,
    Object? effectId = freezed,
    Object? videoId = freezed,
  }) {
    return _then(_RequestShoppingCart(
      backgroundId: backgroundId == freezed
          ? _value.backgroundId
          : backgroundId // ignore: cast_nullable_to_non_nullable
              as int?,
      effectId: effectId == freezed
          ? _value.effectId
          : effectId // ignore: cast_nullable_to_non_nullable
              as int?,
      videoId: videoId == freezed
          ? _value.videoId
          : videoId // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_RequestShoppingCart implements _RequestShoppingCart {
  const _$_RequestShoppingCart(
      {this.backgroundId = 0, this.effectId = 0, this.videoId = 0});

  factory _$_RequestShoppingCart.fromJson(Map<String, dynamic> json) =>
      _$_$_RequestShoppingCartFromJson(json);

  @JsonKey(defaultValue: 0)
  @override
  final int? backgroundId;
  @JsonKey(defaultValue: 0)
  @override
  final int? effectId;
  @JsonKey(defaultValue: 0)
  @override
  final int? videoId;

  @override
  String toString() {
    return 'RequestShoppingCart(backgroundId: $backgroundId, effectId: $effectId, videoId: $videoId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _RequestShoppingCart &&
            (identical(other.backgroundId, backgroundId) ||
                const DeepCollectionEquality()
                    .equals(other.backgroundId, backgroundId)) &&
            (identical(other.effectId, effectId) ||
                const DeepCollectionEquality()
                    .equals(other.effectId, effectId)) &&
            (identical(other.videoId, videoId) ||
                const DeepCollectionEquality().equals(other.videoId, videoId)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(backgroundId) ^
      const DeepCollectionEquality().hash(effectId) ^
      const DeepCollectionEquality().hash(videoId);

  @JsonKey(ignore: true)
  @override
  _$RequestShoppingCartCopyWith<_RequestShoppingCart> get copyWith =>
      __$RequestShoppingCartCopyWithImpl<_RequestShoppingCart>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_RequestShoppingCartToJson(this);
  }
}

abstract class _RequestShoppingCart implements RequestShoppingCart {
  const factory _RequestShoppingCart(
      {int? backgroundId,
      int? effectId,
      int? videoId}) = _$_RequestShoppingCart;

  factory _RequestShoppingCart.fromJson(Map<String, dynamic> json) =
      _$_RequestShoppingCart.fromJson;

  @override
  int? get backgroundId => throw _privateConstructorUsedError;
  @override
  int? get effectId => throw _privateConstructorUsedError;
  @override
  int? get videoId => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$RequestShoppingCartCopyWith<_RequestShoppingCart> get copyWith =>
      throw _privateConstructorUsedError;
}
