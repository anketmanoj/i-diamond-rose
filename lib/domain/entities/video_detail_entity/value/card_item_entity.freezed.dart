// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'card_item_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CardItemEntity _$CardItemEntityFromJson(Map<String, dynamic> json) {
  return _CardItemEntity.fromJson(json);
}

/// @nodoc
class _$CardItemEntityTearOff {
  const _$CardItemEntityTearOff();

  _CardItemEntity call(
      {int videoId = 0, String quantity = "", String totalPrice = ""}) {
    return _CardItemEntity(
      videoId: videoId,
      quantity: quantity,
      totalPrice: totalPrice,
    );
  }

  CardItemEntity fromJson(Map<String, Object> json) {
    return CardItemEntity.fromJson(json);
  }
}

/// @nodoc
const $CardItemEntity = _$CardItemEntityTearOff();

/// @nodoc
mixin _$CardItemEntity {
  int get videoId => throw _privateConstructorUsedError;
  String get quantity => throw _privateConstructorUsedError;
  String get totalPrice => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CardItemEntityCopyWith<CardItemEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CardItemEntityCopyWith<$Res> {
  factory $CardItemEntityCopyWith(
          CardItemEntity value, $Res Function(CardItemEntity) then) =
      _$CardItemEntityCopyWithImpl<$Res>;
  $Res call({int videoId, String quantity, String totalPrice});
}

/// @nodoc
class _$CardItemEntityCopyWithImpl<$Res>
    implements $CardItemEntityCopyWith<$Res> {
  _$CardItemEntityCopyWithImpl(this._value, this._then);

  final CardItemEntity _value;
  // ignore: unused_field
  final $Res Function(CardItemEntity) _then;

  @override
  $Res call({
    Object? videoId = freezed,
    Object? quantity = freezed,
    Object? totalPrice = freezed,
  }) {
    return _then(_value.copyWith(
      videoId: videoId == freezed
          ? _value.videoId
          : videoId // ignore: cast_nullable_to_non_nullable
              as int,
      quantity: quantity == freezed
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as String,
      totalPrice: totalPrice == freezed
          ? _value.totalPrice
          : totalPrice // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$CardItemEntityCopyWith<$Res>
    implements $CardItemEntityCopyWith<$Res> {
  factory _$CardItemEntityCopyWith(
          _CardItemEntity value, $Res Function(_CardItemEntity) then) =
      __$CardItemEntityCopyWithImpl<$Res>;
  @override
  $Res call({int videoId, String quantity, String totalPrice});
}

/// @nodoc
class __$CardItemEntityCopyWithImpl<$Res>
    extends _$CardItemEntityCopyWithImpl<$Res>
    implements _$CardItemEntityCopyWith<$Res> {
  __$CardItemEntityCopyWithImpl(
      _CardItemEntity _value, $Res Function(_CardItemEntity) _then)
      : super(_value, (v) => _then(v as _CardItemEntity));

  @override
  _CardItemEntity get _value => super._value as _CardItemEntity;

  @override
  $Res call({
    Object? videoId = freezed,
    Object? quantity = freezed,
    Object? totalPrice = freezed,
  }) {
    return _then(_CardItemEntity(
      videoId: videoId == freezed
          ? _value.videoId
          : videoId // ignore: cast_nullable_to_non_nullable
              as int,
      quantity: quantity == freezed
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as String,
      totalPrice: totalPrice == freezed
          ? _value.totalPrice
          : totalPrice // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CardItemEntity implements _CardItemEntity {
  const _$_CardItemEntity(
      {this.videoId = 0, this.quantity = "", this.totalPrice = ""});

  factory _$_CardItemEntity.fromJson(Map<String, dynamic> json) =>
      _$_$_CardItemEntityFromJson(json);

  @JsonKey(defaultValue: 0)
  @override
  final int videoId;
  @JsonKey(defaultValue: "")
  @override
  final String quantity;
  @JsonKey(defaultValue: "")
  @override
  final String totalPrice;

  @override
  String toString() {
    return 'CardItemEntity(videoId: $videoId, quantity: $quantity, totalPrice: $totalPrice)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _CardItemEntity &&
            (identical(other.videoId, videoId) ||
                const DeepCollectionEquality()
                    .equals(other.videoId, videoId)) &&
            (identical(other.quantity, quantity) ||
                const DeepCollectionEquality()
                    .equals(other.quantity, quantity)) &&
            (identical(other.totalPrice, totalPrice) ||
                const DeepCollectionEquality()
                    .equals(other.totalPrice, totalPrice)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(videoId) ^
      const DeepCollectionEquality().hash(quantity) ^
      const DeepCollectionEquality().hash(totalPrice);

  @JsonKey(ignore: true)
  @override
  _$CardItemEntityCopyWith<_CardItemEntity> get copyWith =>
      __$CardItemEntityCopyWithImpl<_CardItemEntity>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_CardItemEntityToJson(this);
  }
}

abstract class _CardItemEntity implements CardItemEntity {
  const factory _CardItemEntity(
      {int videoId, String quantity, String totalPrice}) = _$_CardItemEntity;

  factory _CardItemEntity.fromJson(Map<String, dynamic> json) =
      _$_CardItemEntity.fromJson;

  @override
  int get videoId => throw _privateConstructorUsedError;
  @override
  String get quantity => throw _privateConstructorUsedError;
  @override
  String get totalPrice => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$CardItemEntityCopyWith<_CardItemEntity> get copyWith =>
      throw _privateConstructorUsedError;
}
