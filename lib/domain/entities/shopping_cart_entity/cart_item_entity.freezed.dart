// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'cart_item_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CartItemEntity _$CartItemEntityFromJson(Map<String, dynamic> json) {
  return _CartItemEntity.fromJson(json);
}

/// @nodoc
class _$CartItemEntityTearOff {
  const _$CartItemEntityTearOff();

  _CartItemEntity call(
      {int id = 0,
      int videoId = 0,
      int quantity = 0,
      double totalPrice = 0,
      double salePrice = 0,
      double discountPercent = 0,
      bool discount = false}) {
    return _CartItemEntity(
      id: id,
      videoId: videoId,
      quantity: quantity,
      totalPrice: totalPrice,
      salePrice: salePrice,
      discountPercent: discountPercent,
      discount: discount,
    );
  }

  CartItemEntity fromJson(Map<String, Object> json) {
    return CartItemEntity.fromJson(json);
  }
}

/// @nodoc
const $CartItemEntity = _$CartItemEntityTearOff();

/// @nodoc
mixin _$CartItemEntity {
  int get id => throw _privateConstructorUsedError;
  int get videoId => throw _privateConstructorUsedError;
  int get quantity => throw _privateConstructorUsedError;
  double get totalPrice => throw _privateConstructorUsedError;
  double get salePrice => throw _privateConstructorUsedError;
  double get discountPercent => throw _privateConstructorUsedError;
  bool get discount => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CartItemEntityCopyWith<CartItemEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CartItemEntityCopyWith<$Res> {
  factory $CartItemEntityCopyWith(
          CartItemEntity value, $Res Function(CartItemEntity) then) =
      _$CartItemEntityCopyWithImpl<$Res>;
  $Res call(
      {int id,
      int videoId,
      int quantity,
      double totalPrice,
      double salePrice,
      double discountPercent,
      bool discount});
}

/// @nodoc
class _$CartItemEntityCopyWithImpl<$Res>
    implements $CartItemEntityCopyWith<$Res> {
  _$CartItemEntityCopyWithImpl(this._value, this._then);

  final CartItemEntity _value;
  // ignore: unused_field
  final $Res Function(CartItemEntity) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? videoId = freezed,
    Object? quantity = freezed,
    Object? totalPrice = freezed,
    Object? salePrice = freezed,
    Object? discountPercent = freezed,
    Object? discount = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      videoId: videoId == freezed
          ? _value.videoId
          : videoId // ignore: cast_nullable_to_non_nullable
              as int,
      quantity: quantity == freezed
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int,
      totalPrice: totalPrice == freezed
          ? _value.totalPrice
          : totalPrice // ignore: cast_nullable_to_non_nullable
              as double,
      salePrice: salePrice == freezed
          ? _value.salePrice
          : salePrice // ignore: cast_nullable_to_non_nullable
              as double,
      discountPercent: discountPercent == freezed
          ? _value.discountPercent
          : discountPercent // ignore: cast_nullable_to_non_nullable
              as double,
      discount: discount == freezed
          ? _value.discount
          : discount // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$CartItemEntityCopyWith<$Res>
    implements $CartItemEntityCopyWith<$Res> {
  factory _$CartItemEntityCopyWith(
          _CartItemEntity value, $Res Function(_CartItemEntity) then) =
      __$CartItemEntityCopyWithImpl<$Res>;
  @override
  $Res call(
      {int id,
      int videoId,
      int quantity,
      double totalPrice,
      double salePrice,
      double discountPercent,
      bool discount});
}

/// @nodoc
class __$CartItemEntityCopyWithImpl<$Res>
    extends _$CartItemEntityCopyWithImpl<$Res>
    implements _$CartItemEntityCopyWith<$Res> {
  __$CartItemEntityCopyWithImpl(
      _CartItemEntity _value, $Res Function(_CartItemEntity) _then)
      : super(_value, (v) => _then(v as _CartItemEntity));

  @override
  _CartItemEntity get _value => super._value as _CartItemEntity;

  @override
  $Res call({
    Object? id = freezed,
    Object? videoId = freezed,
    Object? quantity = freezed,
    Object? totalPrice = freezed,
    Object? salePrice = freezed,
    Object? discountPercent = freezed,
    Object? discount = freezed,
  }) {
    return _then(_CartItemEntity(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      videoId: videoId == freezed
          ? _value.videoId
          : videoId // ignore: cast_nullable_to_non_nullable
              as int,
      quantity: quantity == freezed
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int,
      totalPrice: totalPrice == freezed
          ? _value.totalPrice
          : totalPrice // ignore: cast_nullable_to_non_nullable
              as double,
      salePrice: salePrice == freezed
          ? _value.salePrice
          : salePrice // ignore: cast_nullable_to_non_nullable
              as double,
      discountPercent: discountPercent == freezed
          ? _value.discountPercent
          : discountPercent // ignore: cast_nullable_to_non_nullable
              as double,
      discount: discount == freezed
          ? _value.discount
          : discount // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CartItemEntity implements _CartItemEntity {
  const _$_CartItemEntity(
      {this.id = 0,
      this.videoId = 0,
      this.quantity = 0,
      this.totalPrice = 0,
      this.salePrice = 0,
      this.discountPercent = 0,
      this.discount = false});

  factory _$_CartItemEntity.fromJson(Map<String, dynamic> json) =>
      _$_$_CartItemEntityFromJson(json);

  @JsonKey(defaultValue: 0)
  @override
  final int id;
  @JsonKey(defaultValue: 0)
  @override
  final int videoId;
  @JsonKey(defaultValue: 0)
  @override
  final int quantity;
  @JsonKey(defaultValue: 0)
  @override
  final double totalPrice;
  @JsonKey(defaultValue: 0)
  @override
  final double salePrice;
  @JsonKey(defaultValue: 0)
  @override
  final double discountPercent;
  @JsonKey(defaultValue: false)
  @override
  final bool discount;

  @override
  String toString() {
    return 'CartItemEntity(id: $id, videoId: $videoId, quantity: $quantity, totalPrice: $totalPrice, salePrice: $salePrice, discountPercent: $discountPercent, discount: $discount)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _CartItemEntity &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.videoId, videoId) ||
                const DeepCollectionEquality()
                    .equals(other.videoId, videoId)) &&
            (identical(other.quantity, quantity) ||
                const DeepCollectionEquality()
                    .equals(other.quantity, quantity)) &&
            (identical(other.totalPrice, totalPrice) ||
                const DeepCollectionEquality()
                    .equals(other.totalPrice, totalPrice)) &&
            (identical(other.salePrice, salePrice) ||
                const DeepCollectionEquality()
                    .equals(other.salePrice, salePrice)) &&
            (identical(other.discountPercent, discountPercent) ||
                const DeepCollectionEquality()
                    .equals(other.discountPercent, discountPercent)) &&
            (identical(other.discount, discount) ||
                const DeepCollectionEquality()
                    .equals(other.discount, discount)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(videoId) ^
      const DeepCollectionEquality().hash(quantity) ^
      const DeepCollectionEquality().hash(totalPrice) ^
      const DeepCollectionEquality().hash(salePrice) ^
      const DeepCollectionEquality().hash(discountPercent) ^
      const DeepCollectionEquality().hash(discount);

  @JsonKey(ignore: true)
  @override
  _$CartItemEntityCopyWith<_CartItemEntity> get copyWith =>
      __$CartItemEntityCopyWithImpl<_CartItemEntity>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_CartItemEntityToJson(this);
  }
}

abstract class _CartItemEntity implements CartItemEntity {
  const factory _CartItemEntity(
      {int id,
      int videoId,
      int quantity,
      double totalPrice,
      double salePrice,
      double discountPercent,
      bool discount}) = _$_CartItemEntity;

  factory _CartItemEntity.fromJson(Map<String, dynamic> json) =
      _$_CartItemEntity.fromJson;

  @override
  int get id => throw _privateConstructorUsedError;
  @override
  int get videoId => throw _privateConstructorUsedError;
  @override
  int get quantity => throw _privateConstructorUsedError;
  @override
  double get totalPrice => throw _privateConstructorUsedError;
  @override
  double get salePrice => throw _privateConstructorUsedError;
  @override
  double get discountPercent => throw _privateConstructorUsedError;
  @override
  bool get discount => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$CartItemEntityCopyWith<_CartItemEntity> get copyWith =>
      throw _privateConstructorUsedError;
}
