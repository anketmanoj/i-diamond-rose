// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'request_checkout_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

RequestCheckoutModel _$RequestCheckoutModelFromJson(Map<String, dynamic> json) {
  return _RequestCheckoutModel.fromJson(json);
}

/// @nodoc
class _$RequestCheckoutModelTearOff {
  const _$RequestCheckoutModelTearOff();

  _RequestCheckoutModel call({required List<int> shoppingCartItems}) {
    return _RequestCheckoutModel(
      shoppingCartItems: shoppingCartItems,
    );
  }

  RequestCheckoutModel fromJson(Map<String, Object> json) {
    return RequestCheckoutModel.fromJson(json);
  }
}

/// @nodoc
const $RequestCheckoutModel = _$RequestCheckoutModelTearOff();

/// @nodoc
mixin _$RequestCheckoutModel {
  List<int> get shoppingCartItems => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RequestCheckoutModelCopyWith<RequestCheckoutModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RequestCheckoutModelCopyWith<$Res> {
  factory $RequestCheckoutModelCopyWith(RequestCheckoutModel value,
          $Res Function(RequestCheckoutModel) then) =
      _$RequestCheckoutModelCopyWithImpl<$Res>;
  $Res call({List<int> shoppingCartItems});
}

/// @nodoc
class _$RequestCheckoutModelCopyWithImpl<$Res>
    implements $RequestCheckoutModelCopyWith<$Res> {
  _$RequestCheckoutModelCopyWithImpl(this._value, this._then);

  final RequestCheckoutModel _value;
  // ignore: unused_field
  final $Res Function(RequestCheckoutModel) _then;

  @override
  $Res call({
    Object? shoppingCartItems = freezed,
  }) {
    return _then(_value.copyWith(
      shoppingCartItems: shoppingCartItems == freezed
          ? _value.shoppingCartItems
          : shoppingCartItems // ignore: cast_nullable_to_non_nullable
              as List<int>,
    ));
  }
}

/// @nodoc
abstract class _$RequestCheckoutModelCopyWith<$Res>
    implements $RequestCheckoutModelCopyWith<$Res> {
  factory _$RequestCheckoutModelCopyWith(_RequestCheckoutModel value,
          $Res Function(_RequestCheckoutModel) then) =
      __$RequestCheckoutModelCopyWithImpl<$Res>;
  @override
  $Res call({List<int> shoppingCartItems});
}

/// @nodoc
class __$RequestCheckoutModelCopyWithImpl<$Res>
    extends _$RequestCheckoutModelCopyWithImpl<$Res>
    implements _$RequestCheckoutModelCopyWith<$Res> {
  __$RequestCheckoutModelCopyWithImpl(
      _RequestCheckoutModel _value, $Res Function(_RequestCheckoutModel) _then)
      : super(_value, (v) => _then(v as _RequestCheckoutModel));

  @override
  _RequestCheckoutModel get _value => super._value as _RequestCheckoutModel;

  @override
  $Res call({
    Object? shoppingCartItems = freezed,
  }) {
    return _then(_RequestCheckoutModel(
      shoppingCartItems: shoppingCartItems == freezed
          ? _value.shoppingCartItems
          : shoppingCartItems // ignore: cast_nullable_to_non_nullable
              as List<int>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_RequestCheckoutModel implements _RequestCheckoutModel {
  const _$_RequestCheckoutModel({required this.shoppingCartItems});

  factory _$_RequestCheckoutModel.fromJson(Map<String, dynamic> json) =>
      _$_$_RequestCheckoutModelFromJson(json);

  @override
  final List<int> shoppingCartItems;

  @override
  String toString() {
    return 'RequestCheckoutModel(shoppingCartItems: $shoppingCartItems)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _RequestCheckoutModel &&
            (identical(other.shoppingCartItems, shoppingCartItems) ||
                const DeepCollectionEquality()
                    .equals(other.shoppingCartItems, shoppingCartItems)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(shoppingCartItems);

  @JsonKey(ignore: true)
  @override
  _$RequestCheckoutModelCopyWith<_RequestCheckoutModel> get copyWith =>
      __$RequestCheckoutModelCopyWithImpl<_RequestCheckoutModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_RequestCheckoutModelToJson(this);
  }
}

abstract class _RequestCheckoutModel implements RequestCheckoutModel {
  const factory _RequestCheckoutModel({required List<int> shoppingCartItems}) =
      _$_RequestCheckoutModel;

  factory _RequestCheckoutModel.fromJson(Map<String, dynamic> json) =
      _$_RequestCheckoutModel.fromJson;

  @override
  List<int> get shoppingCartItems => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$RequestCheckoutModelCopyWith<_RequestCheckoutModel> get copyWith =>
      throw _privateConstructorUsedError;
}
