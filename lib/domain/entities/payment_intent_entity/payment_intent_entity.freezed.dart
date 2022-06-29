// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'payment_intent_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PaymentIntentEntity _$PaymentIntentEntityFromJson(Map<String, dynamic> json) {
  return _PaymentIntentEntity.fromJson(json);
}

/// @nodoc
class _$PaymentIntentEntityTearOff {
  const _$PaymentIntentEntityTearOff();

  _PaymentIntentEntity call(
      {String id = "",
      int amount = 0,
      int amountReceived = 0,
      List<dynamic>? charges,
      String clientSecret = "",
      String currency = "",
      String description = "",
      String receiptEmail = "",
      Map<String, dynamic>? metadata,
      String status = "",
      String? paymentMethod,
      String stripePublicKey = ""}) {
    return _PaymentIntentEntity(
      id: id,
      amount: amount,
      amountReceived: amountReceived,
      charges: charges,
      clientSecret: clientSecret,
      currency: currency,
      description: description,
      receiptEmail: receiptEmail,
      metadata: metadata,
      status: status,
      paymentMethod: paymentMethod,
      stripePublicKey: stripePublicKey,
    );
  }

  PaymentIntentEntity fromJson(Map<String, Object> json) {
    return PaymentIntentEntity.fromJson(json);
  }
}

/// @nodoc
const $PaymentIntentEntity = _$PaymentIntentEntityTearOff();

/// @nodoc
mixin _$PaymentIntentEntity {
  String get id => throw _privateConstructorUsedError;
  int get amount => throw _privateConstructorUsedError;
  int get amountReceived => throw _privateConstructorUsedError;
  List<dynamic>? get charges => throw _privateConstructorUsedError;
  String get clientSecret => throw _privateConstructorUsedError;
  String get currency => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  String get receiptEmail => throw _privateConstructorUsedError;
  Map<String, dynamic>? get metadata => throw _privateConstructorUsedError;
  String get status => throw _privateConstructorUsedError;
  String? get paymentMethod => throw _privateConstructorUsedError;
  String get stripePublicKey => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PaymentIntentEntityCopyWith<PaymentIntentEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaymentIntentEntityCopyWith<$Res> {
  factory $PaymentIntentEntityCopyWith(
          PaymentIntentEntity value, $Res Function(PaymentIntentEntity) then) =
      _$PaymentIntentEntityCopyWithImpl<$Res>;
  $Res call(
      {String id,
      int amount,
      int amountReceived,
      List<dynamic>? charges,
      String clientSecret,
      String currency,
      String description,
      String receiptEmail,
      Map<String, dynamic>? metadata,
      String status,
      String? paymentMethod,
      String stripePublicKey});
}

/// @nodoc
class _$PaymentIntentEntityCopyWithImpl<$Res>
    implements $PaymentIntentEntityCopyWith<$Res> {
  _$PaymentIntentEntityCopyWithImpl(this._value, this._then);

  final PaymentIntentEntity _value;
  // ignore: unused_field
  final $Res Function(PaymentIntentEntity) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? amount = freezed,
    Object? amountReceived = freezed,
    Object? charges = freezed,
    Object? clientSecret = freezed,
    Object? currency = freezed,
    Object? description = freezed,
    Object? receiptEmail = freezed,
    Object? metadata = freezed,
    Object? status = freezed,
    Object? paymentMethod = freezed,
    Object? stripePublicKey = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      amount: amount == freezed
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as int,
      amountReceived: amountReceived == freezed
          ? _value.amountReceived
          : amountReceived // ignore: cast_nullable_to_non_nullable
              as int,
      charges: charges == freezed
          ? _value.charges
          : charges // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      clientSecret: clientSecret == freezed
          ? _value.clientSecret
          : clientSecret // ignore: cast_nullable_to_non_nullable
              as String,
      currency: currency == freezed
          ? _value.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as String,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      receiptEmail: receiptEmail == freezed
          ? _value.receiptEmail
          : receiptEmail // ignore: cast_nullable_to_non_nullable
              as String,
      metadata: metadata == freezed
          ? _value.metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      paymentMethod: paymentMethod == freezed
          ? _value.paymentMethod
          : paymentMethod // ignore: cast_nullable_to_non_nullable
              as String?,
      stripePublicKey: stripePublicKey == freezed
          ? _value.stripePublicKey
          : stripePublicKey // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$PaymentIntentEntityCopyWith<$Res>
    implements $PaymentIntentEntityCopyWith<$Res> {
  factory _$PaymentIntentEntityCopyWith(_PaymentIntentEntity value,
          $Res Function(_PaymentIntentEntity) then) =
      __$PaymentIntentEntityCopyWithImpl<$Res>;
  @override
  $Res call(
      {String id,
      int amount,
      int amountReceived,
      List<dynamic>? charges,
      String clientSecret,
      String currency,
      String description,
      String receiptEmail,
      Map<String, dynamic>? metadata,
      String status,
      String? paymentMethod,
      String stripePublicKey});
}

/// @nodoc
class __$PaymentIntentEntityCopyWithImpl<$Res>
    extends _$PaymentIntentEntityCopyWithImpl<$Res>
    implements _$PaymentIntentEntityCopyWith<$Res> {
  __$PaymentIntentEntityCopyWithImpl(
      _PaymentIntentEntity _value, $Res Function(_PaymentIntentEntity) _then)
      : super(_value, (v) => _then(v as _PaymentIntentEntity));

  @override
  _PaymentIntentEntity get _value => super._value as _PaymentIntentEntity;

  @override
  $Res call({
    Object? id = freezed,
    Object? amount = freezed,
    Object? amountReceived = freezed,
    Object? charges = freezed,
    Object? clientSecret = freezed,
    Object? currency = freezed,
    Object? description = freezed,
    Object? receiptEmail = freezed,
    Object? metadata = freezed,
    Object? status = freezed,
    Object? paymentMethod = freezed,
    Object? stripePublicKey = freezed,
  }) {
    return _then(_PaymentIntentEntity(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      amount: amount == freezed
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as int,
      amountReceived: amountReceived == freezed
          ? _value.amountReceived
          : amountReceived // ignore: cast_nullable_to_non_nullable
              as int,
      charges: charges == freezed
          ? _value.charges
          : charges // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      clientSecret: clientSecret == freezed
          ? _value.clientSecret
          : clientSecret // ignore: cast_nullable_to_non_nullable
              as String,
      currency: currency == freezed
          ? _value.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as String,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      receiptEmail: receiptEmail == freezed
          ? _value.receiptEmail
          : receiptEmail // ignore: cast_nullable_to_non_nullable
              as String,
      metadata: metadata == freezed
          ? _value.metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      paymentMethod: paymentMethod == freezed
          ? _value.paymentMethod
          : paymentMethod // ignore: cast_nullable_to_non_nullable
              as String?,
      stripePublicKey: stripePublicKey == freezed
          ? _value.stripePublicKey
          : stripePublicKey // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PaymentIntentEntity implements _PaymentIntentEntity {
  const _$_PaymentIntentEntity(
      {this.id = "",
      this.amount = 0,
      this.amountReceived = 0,
      this.charges,
      this.clientSecret = "",
      this.currency = "",
      this.description = "",
      this.receiptEmail = "",
      this.metadata,
      this.status = "",
      this.paymentMethod,
      this.stripePublicKey = ""});

  factory _$_PaymentIntentEntity.fromJson(Map<String, dynamic> json) =>
      _$_$_PaymentIntentEntityFromJson(json);

  @JsonKey(defaultValue: "")
  @override
  final String id;
  @JsonKey(defaultValue: 0)
  @override
  final int amount;
  @JsonKey(defaultValue: 0)
  @override
  final int amountReceived;
  @override
  final List<dynamic>? charges;
  @JsonKey(defaultValue: "")
  @override
  final String clientSecret;
  @JsonKey(defaultValue: "")
  @override
  final String currency;
  @JsonKey(defaultValue: "")
  @override
  final String description;
  @JsonKey(defaultValue: "")
  @override
  final String receiptEmail;
  @override
  final Map<String, dynamic>? metadata;
  @JsonKey(defaultValue: "")
  @override
  final String status;
  @override
  final String? paymentMethod;
  @JsonKey(defaultValue: "")
  @override
  final String stripePublicKey;

  @override
  String toString() {
    return 'PaymentIntentEntity(id: $id, amount: $amount, amountReceived: $amountReceived, charges: $charges, clientSecret: $clientSecret, currency: $currency, description: $description, receiptEmail: $receiptEmail, metadata: $metadata, status: $status, paymentMethod: $paymentMethod, stripePublicKey: $stripePublicKey)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _PaymentIntentEntity &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.amount, amount) ||
                const DeepCollectionEquality().equals(other.amount, amount)) &&
            (identical(other.amountReceived, amountReceived) ||
                const DeepCollectionEquality()
                    .equals(other.amountReceived, amountReceived)) &&
            (identical(other.charges, charges) ||
                const DeepCollectionEquality()
                    .equals(other.charges, charges)) &&
            (identical(other.clientSecret, clientSecret) ||
                const DeepCollectionEquality()
                    .equals(other.clientSecret, clientSecret)) &&
            (identical(other.currency, currency) ||
                const DeepCollectionEquality()
                    .equals(other.currency, currency)) &&
            (identical(other.description, description) ||
                const DeepCollectionEquality()
                    .equals(other.description, description)) &&
            (identical(other.receiptEmail, receiptEmail) ||
                const DeepCollectionEquality()
                    .equals(other.receiptEmail, receiptEmail)) &&
            (identical(other.metadata, metadata) ||
                const DeepCollectionEquality()
                    .equals(other.metadata, metadata)) &&
            (identical(other.status, status) ||
                const DeepCollectionEquality().equals(other.status, status)) &&
            (identical(other.paymentMethod, paymentMethod) ||
                const DeepCollectionEquality()
                    .equals(other.paymentMethod, paymentMethod)) &&
            (identical(other.stripePublicKey, stripePublicKey) ||
                const DeepCollectionEquality()
                    .equals(other.stripePublicKey, stripePublicKey)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(amount) ^
      const DeepCollectionEquality().hash(amountReceived) ^
      const DeepCollectionEquality().hash(charges) ^
      const DeepCollectionEquality().hash(clientSecret) ^
      const DeepCollectionEquality().hash(currency) ^
      const DeepCollectionEquality().hash(description) ^
      const DeepCollectionEquality().hash(receiptEmail) ^
      const DeepCollectionEquality().hash(metadata) ^
      const DeepCollectionEquality().hash(status) ^
      const DeepCollectionEquality().hash(paymentMethod) ^
      const DeepCollectionEquality().hash(stripePublicKey);

  @JsonKey(ignore: true)
  @override
  _$PaymentIntentEntityCopyWith<_PaymentIntentEntity> get copyWith =>
      __$PaymentIntentEntityCopyWithImpl<_PaymentIntentEntity>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_PaymentIntentEntityToJson(this);
  }
}

abstract class _PaymentIntentEntity implements PaymentIntentEntity {
  const factory _PaymentIntentEntity(
      {String id,
      int amount,
      int amountReceived,
      List<dynamic>? charges,
      String clientSecret,
      String currency,
      String description,
      String receiptEmail,
      Map<String, dynamic>? metadata,
      String status,
      String? paymentMethod,
      String stripePublicKey}) = _$_PaymentIntentEntity;

  factory _PaymentIntentEntity.fromJson(Map<String, dynamic> json) =
      _$_PaymentIntentEntity.fromJson;

  @override
  String get id => throw _privateConstructorUsedError;
  @override
  int get amount => throw _privateConstructorUsedError;
  @override
  int get amountReceived => throw _privateConstructorUsedError;
  @override
  List<dynamic>? get charges => throw _privateConstructorUsedError;
  @override
  String get clientSecret => throw _privateConstructorUsedError;
  @override
  String get currency => throw _privateConstructorUsedError;
  @override
  String get description => throw _privateConstructorUsedError;
  @override
  String get receiptEmail => throw _privateConstructorUsedError;
  @override
  Map<String, dynamic>? get metadata => throw _privateConstructorUsedError;
  @override
  String get status => throw _privateConstructorUsedError;
  @override
  String? get paymentMethod => throw _privateConstructorUsedError;
  @override
  String get stripePublicKey => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$PaymentIntentEntityCopyWith<_PaymentIntentEntity> get copyWith =>
      throw _privateConstructorUsedError;
}
