// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'checkout_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CheckoutEntity _$CheckoutEntityFromJson(Map<String, dynamic> json) {
  return _CheckoutEntity.fromJson(json);
}

/// @nodoc
class _$CheckoutEntityTearOff {
  const _$CheckoutEntityTearOff();

  _CheckoutEntity call({PaymentIntentEntity? paymentIntent}) {
    return _CheckoutEntity(
      paymentIntent: paymentIntent,
    );
  }

  CheckoutEntity fromJson(Map<String, Object> json) {
    return CheckoutEntity.fromJson(json);
  }
}

/// @nodoc
const $CheckoutEntity = _$CheckoutEntityTearOff();

/// @nodoc
mixin _$CheckoutEntity {
  PaymentIntentEntity? get paymentIntent => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CheckoutEntityCopyWith<CheckoutEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CheckoutEntityCopyWith<$Res> {
  factory $CheckoutEntityCopyWith(
          CheckoutEntity value, $Res Function(CheckoutEntity) then) =
      _$CheckoutEntityCopyWithImpl<$Res>;
  $Res call({PaymentIntentEntity? paymentIntent});

  $PaymentIntentEntityCopyWith<$Res>? get paymentIntent;
}

/// @nodoc
class _$CheckoutEntityCopyWithImpl<$Res>
    implements $CheckoutEntityCopyWith<$Res> {
  _$CheckoutEntityCopyWithImpl(this._value, this._then);

  final CheckoutEntity _value;
  // ignore: unused_field
  final $Res Function(CheckoutEntity) _then;

  @override
  $Res call({
    Object? paymentIntent = freezed,
  }) {
    return _then(_value.copyWith(
      paymentIntent: paymentIntent == freezed
          ? _value.paymentIntent
          : paymentIntent // ignore: cast_nullable_to_non_nullable
              as PaymentIntentEntity?,
    ));
  }

  @override
  $PaymentIntentEntityCopyWith<$Res>? get paymentIntent {
    if (_value.paymentIntent == null) {
      return null;
    }

    return $PaymentIntentEntityCopyWith<$Res>(_value.paymentIntent!, (value) {
      return _then(_value.copyWith(paymentIntent: value));
    });
  }
}

/// @nodoc
abstract class _$CheckoutEntityCopyWith<$Res>
    implements $CheckoutEntityCopyWith<$Res> {
  factory _$CheckoutEntityCopyWith(
          _CheckoutEntity value, $Res Function(_CheckoutEntity) then) =
      __$CheckoutEntityCopyWithImpl<$Res>;
  @override
  $Res call({PaymentIntentEntity? paymentIntent});

  @override
  $PaymentIntentEntityCopyWith<$Res>? get paymentIntent;
}

/// @nodoc
class __$CheckoutEntityCopyWithImpl<$Res>
    extends _$CheckoutEntityCopyWithImpl<$Res>
    implements _$CheckoutEntityCopyWith<$Res> {
  __$CheckoutEntityCopyWithImpl(
      _CheckoutEntity _value, $Res Function(_CheckoutEntity) _then)
      : super(_value, (v) => _then(v as _CheckoutEntity));

  @override
  _CheckoutEntity get _value => super._value as _CheckoutEntity;

  @override
  $Res call({
    Object? paymentIntent = freezed,
  }) {
    return _then(_CheckoutEntity(
      paymentIntent: paymentIntent == freezed
          ? _value.paymentIntent
          : paymentIntent // ignore: cast_nullable_to_non_nullable
              as PaymentIntentEntity?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CheckoutEntity implements _CheckoutEntity {
  const _$_CheckoutEntity({this.paymentIntent});

  factory _$_CheckoutEntity.fromJson(Map<String, dynamic> json) =>
      _$_$_CheckoutEntityFromJson(json);

  @override
  final PaymentIntentEntity? paymentIntent;

  @override
  String toString() {
    return 'CheckoutEntity(paymentIntent: $paymentIntent)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _CheckoutEntity &&
            (identical(other.paymentIntent, paymentIntent) ||
                const DeepCollectionEquality()
                    .equals(other.paymentIntent, paymentIntent)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(paymentIntent);

  @JsonKey(ignore: true)
  @override
  _$CheckoutEntityCopyWith<_CheckoutEntity> get copyWith =>
      __$CheckoutEntityCopyWithImpl<_CheckoutEntity>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_CheckoutEntityToJson(this);
  }
}

abstract class _CheckoutEntity implements CheckoutEntity {
  const factory _CheckoutEntity({PaymentIntentEntity? paymentIntent}) =
      _$_CheckoutEntity;

  factory _CheckoutEntity.fromJson(Map<String, dynamic> json) =
      _$_CheckoutEntity.fromJson;

  @override
  PaymentIntentEntity? get paymentIntent => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$CheckoutEntityCopyWith<_CheckoutEntity> get copyWith =>
      throw _privateConstructorUsedError;
}
