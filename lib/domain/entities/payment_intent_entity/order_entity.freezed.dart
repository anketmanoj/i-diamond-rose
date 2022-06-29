// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'order_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

OrderEntity _$OrderEntityFromJson(Map<String, dynamic> json) {
  return _OrderEntity.fromJson(json);
}

/// @nodoc
class _$OrderEntityTearOff {
  const _$OrderEntityTearOff();

  _OrderEntity call(
      {int id = 0,
      int userId = 0,
      int paymentMethodId = 0,
      int totalAmount = 0,
      int purchaseStatus = 0,
      String stripePaymentIntentId = "",
      String? stripeTransactionId,
      int createBy = 0,
      String createdAt = "",
      int updateBy = 0,
      String updatedAt = ""}) {
    return _OrderEntity(
      id: id,
      userId: userId,
      paymentMethodId: paymentMethodId,
      totalAmount: totalAmount,
      purchaseStatus: purchaseStatus,
      stripePaymentIntentId: stripePaymentIntentId,
      stripeTransactionId: stripeTransactionId,
      createBy: createBy,
      createdAt: createdAt,
      updateBy: updateBy,
      updatedAt: updatedAt,
    );
  }

  OrderEntity fromJson(Map<String, Object> json) {
    return OrderEntity.fromJson(json);
  }
}

/// @nodoc
const $OrderEntity = _$OrderEntityTearOff();

/// @nodoc
mixin _$OrderEntity {
  int get id => throw _privateConstructorUsedError;
  int get userId => throw _privateConstructorUsedError;
  int get paymentMethodId => throw _privateConstructorUsedError;
  int get totalAmount => throw _privateConstructorUsedError;
  int get purchaseStatus => throw _privateConstructorUsedError;
  String get stripePaymentIntentId => throw _privateConstructorUsedError;
  String? get stripeTransactionId => throw _privateConstructorUsedError;
  int get createBy => throw _privateConstructorUsedError;
  String get createdAt => throw _privateConstructorUsedError;
  int get updateBy => throw _privateConstructorUsedError;
  String get updatedAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OrderEntityCopyWith<OrderEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderEntityCopyWith<$Res> {
  factory $OrderEntityCopyWith(
          OrderEntity value, $Res Function(OrderEntity) then) =
      _$OrderEntityCopyWithImpl<$Res>;
  $Res call(
      {int id,
      int userId,
      int paymentMethodId,
      int totalAmount,
      int purchaseStatus,
      String stripePaymentIntentId,
      String? stripeTransactionId,
      int createBy,
      String createdAt,
      int updateBy,
      String updatedAt});
}

/// @nodoc
class _$OrderEntityCopyWithImpl<$Res> implements $OrderEntityCopyWith<$Res> {
  _$OrderEntityCopyWithImpl(this._value, this._then);

  final OrderEntity _value;
  // ignore: unused_field
  final $Res Function(OrderEntity) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? userId = freezed,
    Object? paymentMethodId = freezed,
    Object? totalAmount = freezed,
    Object? purchaseStatus = freezed,
    Object? stripePaymentIntentId = freezed,
    Object? stripeTransactionId = freezed,
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
      userId: userId == freezed
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int,
      paymentMethodId: paymentMethodId == freezed
          ? _value.paymentMethodId
          : paymentMethodId // ignore: cast_nullable_to_non_nullable
              as int,
      totalAmount: totalAmount == freezed
          ? _value.totalAmount
          : totalAmount // ignore: cast_nullable_to_non_nullable
              as int,
      purchaseStatus: purchaseStatus == freezed
          ? _value.purchaseStatus
          : purchaseStatus // ignore: cast_nullable_to_non_nullable
              as int,
      stripePaymentIntentId: stripePaymentIntentId == freezed
          ? _value.stripePaymentIntentId
          : stripePaymentIntentId // ignore: cast_nullable_to_non_nullable
              as String,
      stripeTransactionId: stripeTransactionId == freezed
          ? _value.stripeTransactionId
          : stripeTransactionId // ignore: cast_nullable_to_non_nullable
              as String?,
      createBy: createBy == freezed
          ? _value.createBy
          : createBy // ignore: cast_nullable_to_non_nullable
              as int,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
      updateBy: updateBy == freezed
          ? _value.updateBy
          : updateBy // ignore: cast_nullable_to_non_nullable
              as int,
      updatedAt: updatedAt == freezed
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$OrderEntityCopyWith<$Res>
    implements $OrderEntityCopyWith<$Res> {
  factory _$OrderEntityCopyWith(
          _OrderEntity value, $Res Function(_OrderEntity) then) =
      __$OrderEntityCopyWithImpl<$Res>;
  @override
  $Res call(
      {int id,
      int userId,
      int paymentMethodId,
      int totalAmount,
      int purchaseStatus,
      String stripePaymentIntentId,
      String? stripeTransactionId,
      int createBy,
      String createdAt,
      int updateBy,
      String updatedAt});
}

/// @nodoc
class __$OrderEntityCopyWithImpl<$Res> extends _$OrderEntityCopyWithImpl<$Res>
    implements _$OrderEntityCopyWith<$Res> {
  __$OrderEntityCopyWithImpl(
      _OrderEntity _value, $Res Function(_OrderEntity) _then)
      : super(_value, (v) => _then(v as _OrderEntity));

  @override
  _OrderEntity get _value => super._value as _OrderEntity;

  @override
  $Res call({
    Object? id = freezed,
    Object? userId = freezed,
    Object? paymentMethodId = freezed,
    Object? totalAmount = freezed,
    Object? purchaseStatus = freezed,
    Object? stripePaymentIntentId = freezed,
    Object? stripeTransactionId = freezed,
    Object? createBy = freezed,
    Object? createdAt = freezed,
    Object? updateBy = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_OrderEntity(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      userId: userId == freezed
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int,
      paymentMethodId: paymentMethodId == freezed
          ? _value.paymentMethodId
          : paymentMethodId // ignore: cast_nullable_to_non_nullable
              as int,
      totalAmount: totalAmount == freezed
          ? _value.totalAmount
          : totalAmount // ignore: cast_nullable_to_non_nullable
              as int,
      purchaseStatus: purchaseStatus == freezed
          ? _value.purchaseStatus
          : purchaseStatus // ignore: cast_nullable_to_non_nullable
              as int,
      stripePaymentIntentId: stripePaymentIntentId == freezed
          ? _value.stripePaymentIntentId
          : stripePaymentIntentId // ignore: cast_nullable_to_non_nullable
              as String,
      stripeTransactionId: stripeTransactionId == freezed
          ? _value.stripeTransactionId
          : stripeTransactionId // ignore: cast_nullable_to_non_nullable
              as String?,
      createBy: createBy == freezed
          ? _value.createBy
          : createBy // ignore: cast_nullable_to_non_nullable
              as int,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
      updateBy: updateBy == freezed
          ? _value.updateBy
          : updateBy // ignore: cast_nullable_to_non_nullable
              as int,
      updatedAt: updatedAt == freezed
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_OrderEntity implements _OrderEntity {
  const _$_OrderEntity(
      {this.id = 0,
      this.userId = 0,
      this.paymentMethodId = 0,
      this.totalAmount = 0,
      this.purchaseStatus = 0,
      this.stripePaymentIntentId = "",
      this.stripeTransactionId,
      this.createBy = 0,
      this.createdAt = "",
      this.updateBy = 0,
      this.updatedAt = ""});

  factory _$_OrderEntity.fromJson(Map<String, dynamic> json) =>
      _$_$_OrderEntityFromJson(json);

  @JsonKey(defaultValue: 0)
  @override
  final int id;
  @JsonKey(defaultValue: 0)
  @override
  final int userId;
  @JsonKey(defaultValue: 0)
  @override
  final int paymentMethodId;
  @JsonKey(defaultValue: 0)
  @override
  final int totalAmount;
  @JsonKey(defaultValue: 0)
  @override
  final int purchaseStatus;
  @JsonKey(defaultValue: "")
  @override
  final String stripePaymentIntentId;
  @override
  final String? stripeTransactionId;
  @JsonKey(defaultValue: 0)
  @override
  final int createBy;
  @JsonKey(defaultValue: "")
  @override
  final String createdAt;
  @JsonKey(defaultValue: 0)
  @override
  final int updateBy;
  @JsonKey(defaultValue: "")
  @override
  final String updatedAt;

  @override
  String toString() {
    return 'OrderEntity(id: $id, userId: $userId, paymentMethodId: $paymentMethodId, totalAmount: $totalAmount, purchaseStatus: $purchaseStatus, stripePaymentIntentId: $stripePaymentIntentId, stripeTransactionId: $stripeTransactionId, createBy: $createBy, createdAt: $createdAt, updateBy: $updateBy, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _OrderEntity &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.userId, userId) ||
                const DeepCollectionEquality().equals(other.userId, userId)) &&
            (identical(other.paymentMethodId, paymentMethodId) ||
                const DeepCollectionEquality()
                    .equals(other.paymentMethodId, paymentMethodId)) &&
            (identical(other.totalAmount, totalAmount) ||
                const DeepCollectionEquality()
                    .equals(other.totalAmount, totalAmount)) &&
            (identical(other.purchaseStatus, purchaseStatus) ||
                const DeepCollectionEquality()
                    .equals(other.purchaseStatus, purchaseStatus)) &&
            (identical(other.stripePaymentIntentId, stripePaymentIntentId) ||
                const DeepCollectionEquality().equals(
                    other.stripePaymentIntentId, stripePaymentIntentId)) &&
            (identical(other.stripeTransactionId, stripeTransactionId) ||
                const DeepCollectionEquality()
                    .equals(other.stripeTransactionId, stripeTransactionId)) &&
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
      const DeepCollectionEquality().hash(userId) ^
      const DeepCollectionEquality().hash(paymentMethodId) ^
      const DeepCollectionEquality().hash(totalAmount) ^
      const DeepCollectionEquality().hash(purchaseStatus) ^
      const DeepCollectionEquality().hash(stripePaymentIntentId) ^
      const DeepCollectionEquality().hash(stripeTransactionId) ^
      const DeepCollectionEquality().hash(createBy) ^
      const DeepCollectionEquality().hash(createdAt) ^
      const DeepCollectionEquality().hash(updateBy) ^
      const DeepCollectionEquality().hash(updatedAt);

  @JsonKey(ignore: true)
  @override
  _$OrderEntityCopyWith<_OrderEntity> get copyWith =>
      __$OrderEntityCopyWithImpl<_OrderEntity>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_OrderEntityToJson(this);
  }
}

abstract class _OrderEntity implements OrderEntity {
  const factory _OrderEntity(
      {int id,
      int userId,
      int paymentMethodId,
      int totalAmount,
      int purchaseStatus,
      String stripePaymentIntentId,
      String? stripeTransactionId,
      int createBy,
      String createdAt,
      int updateBy,
      String updatedAt}) = _$_OrderEntity;

  factory _OrderEntity.fromJson(Map<String, dynamic> json) =
      _$_OrderEntity.fromJson;

  @override
  int get id => throw _privateConstructorUsedError;
  @override
  int get userId => throw _privateConstructorUsedError;
  @override
  int get paymentMethodId => throw _privateConstructorUsedError;
  @override
  int get totalAmount => throw _privateConstructorUsedError;
  @override
  int get purchaseStatus => throw _privateConstructorUsedError;
  @override
  String get stripePaymentIntentId => throw _privateConstructorUsedError;
  @override
  String? get stripeTransactionId => throw _privateConstructorUsedError;
  @override
  int get createBy => throw _privateConstructorUsedError;
  @override
  String get createdAt => throw _privateConstructorUsedError;
  @override
  int get updateBy => throw _privateConstructorUsedError;
  @override
  String get updatedAt => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$OrderEntityCopyWith<_OrderEntity> get copyWith =>
      throw _privateConstructorUsedError;
}
