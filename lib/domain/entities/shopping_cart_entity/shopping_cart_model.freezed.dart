// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'shopping_cart_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ShoppingCartModel _$ShoppingCartModelFromJson(Map<String, dynamic> json) {
  return _ShoppingCartModel.fromJson(json);
}

/// @nodoc
class _$ShoppingCartModelTearOff {
  const _$ShoppingCartModelTearOff();

  _ShoppingCartModel call(
      {CartItemEntity? cartItem, VideoItemDetailEntity? video}) {
    return _ShoppingCartModel(
      cartItem: cartItem,
      video: video,
    );
  }

  ShoppingCartModel fromJson(Map<String, Object> json) {
    return ShoppingCartModel.fromJson(json);
  }
}

/// @nodoc
const $ShoppingCartModel = _$ShoppingCartModelTearOff();

/// @nodoc
mixin _$ShoppingCartModel {
  CartItemEntity? get cartItem => throw _privateConstructorUsedError;
  VideoItemDetailEntity? get video => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ShoppingCartModelCopyWith<ShoppingCartModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ShoppingCartModelCopyWith<$Res> {
  factory $ShoppingCartModelCopyWith(
          ShoppingCartModel value, $Res Function(ShoppingCartModel) then) =
      _$ShoppingCartModelCopyWithImpl<$Res>;
  $Res call({CartItemEntity? cartItem, VideoItemDetailEntity? video});

  $CartItemEntityCopyWith<$Res>? get cartItem;
  $VideoItemDetailEntityCopyWith<$Res>? get video;
}

/// @nodoc
class _$ShoppingCartModelCopyWithImpl<$Res>
    implements $ShoppingCartModelCopyWith<$Res> {
  _$ShoppingCartModelCopyWithImpl(this._value, this._then);

  final ShoppingCartModel _value;
  // ignore: unused_field
  final $Res Function(ShoppingCartModel) _then;

  @override
  $Res call({
    Object? cartItem = freezed,
    Object? video = freezed,
  }) {
    return _then(_value.copyWith(
      cartItem: cartItem == freezed
          ? _value.cartItem
          : cartItem // ignore: cast_nullable_to_non_nullable
              as CartItemEntity?,
      video: video == freezed
          ? _value.video
          : video // ignore: cast_nullable_to_non_nullable
              as VideoItemDetailEntity?,
    ));
  }

  @override
  $CartItemEntityCopyWith<$Res>? get cartItem {
    if (_value.cartItem == null) {
      return null;
    }

    return $CartItemEntityCopyWith<$Res>(_value.cartItem!, (value) {
      return _then(_value.copyWith(cartItem: value));
    });
  }

  @override
  $VideoItemDetailEntityCopyWith<$Res>? get video {
    if (_value.video == null) {
      return null;
    }

    return $VideoItemDetailEntityCopyWith<$Res>(_value.video!, (value) {
      return _then(_value.copyWith(video: value));
    });
  }
}

/// @nodoc
abstract class _$ShoppingCartModelCopyWith<$Res>
    implements $ShoppingCartModelCopyWith<$Res> {
  factory _$ShoppingCartModelCopyWith(
          _ShoppingCartModel value, $Res Function(_ShoppingCartModel) then) =
      __$ShoppingCartModelCopyWithImpl<$Res>;
  @override
  $Res call({CartItemEntity? cartItem, VideoItemDetailEntity? video});

  @override
  $CartItemEntityCopyWith<$Res>? get cartItem;
  @override
  $VideoItemDetailEntityCopyWith<$Res>? get video;
}

/// @nodoc
class __$ShoppingCartModelCopyWithImpl<$Res>
    extends _$ShoppingCartModelCopyWithImpl<$Res>
    implements _$ShoppingCartModelCopyWith<$Res> {
  __$ShoppingCartModelCopyWithImpl(
      _ShoppingCartModel _value, $Res Function(_ShoppingCartModel) _then)
      : super(_value, (v) => _then(v as _ShoppingCartModel));

  @override
  _ShoppingCartModel get _value => super._value as _ShoppingCartModel;

  @override
  $Res call({
    Object? cartItem = freezed,
    Object? video = freezed,
  }) {
    return _then(_ShoppingCartModel(
      cartItem: cartItem == freezed
          ? _value.cartItem
          : cartItem // ignore: cast_nullable_to_non_nullable
              as CartItemEntity?,
      video: video == freezed
          ? _value.video
          : video // ignore: cast_nullable_to_non_nullable
              as VideoItemDetailEntity?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ShoppingCartModel implements _ShoppingCartModel {
  const _$_ShoppingCartModel({this.cartItem, this.video});

  factory _$_ShoppingCartModel.fromJson(Map<String, dynamic> json) =>
      _$_$_ShoppingCartModelFromJson(json);

  @override
  final CartItemEntity? cartItem;
  @override
  final VideoItemDetailEntity? video;

  @override
  String toString() {
    return 'ShoppingCartModel(cartItem: $cartItem, video: $video)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ShoppingCartModel &&
            (identical(other.cartItem, cartItem) ||
                const DeepCollectionEquality()
                    .equals(other.cartItem, cartItem)) &&
            (identical(other.video, video) ||
                const DeepCollectionEquality().equals(other.video, video)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(cartItem) ^
      const DeepCollectionEquality().hash(video);

  @JsonKey(ignore: true)
  @override
  _$ShoppingCartModelCopyWith<_ShoppingCartModel> get copyWith =>
      __$ShoppingCartModelCopyWithImpl<_ShoppingCartModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_ShoppingCartModelToJson(this);
  }
}

abstract class _ShoppingCartModel implements ShoppingCartModel {
  const factory _ShoppingCartModel(
      {CartItemEntity? cartItem,
      VideoItemDetailEntity? video}) = _$_ShoppingCartModel;

  factory _ShoppingCartModel.fromJson(Map<String, dynamic> json) =
      _$_ShoppingCartModel.fromJson;

  @override
  CartItemEntity? get cartItem => throw _privateConstructorUsedError;
  @override
  VideoItemDetailEntity? get video => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ShoppingCartModelCopyWith<_ShoppingCartModel> get copyWith =>
      throw _privateConstructorUsedError;
}
