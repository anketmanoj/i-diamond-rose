// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'cart_list_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CartListModel _$CartListModelFromJson(Map<String, dynamic> json) {
  return _CartListModel.fromJson(json);
}

/// @nodoc
class _$CartListModelTearOff {
  const _$CartListModelTearOff();

  _CartListModel call(
      {List<ShoppingCartModel>? listItem, int totalElement = 0}) {
    return _CartListModel(
      listItem: listItem,
      totalElement: totalElement,
    );
  }

  CartListModel fromJson(Map<String, Object> json) {
    return CartListModel.fromJson(json);
  }
}

/// @nodoc
const $CartListModel = _$CartListModelTearOff();

/// @nodoc
mixin _$CartListModel {
  List<ShoppingCartModel>? get listItem => throw _privateConstructorUsedError;
  int get totalElement => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CartListModelCopyWith<CartListModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CartListModelCopyWith<$Res> {
  factory $CartListModelCopyWith(
          CartListModel value, $Res Function(CartListModel) then) =
      _$CartListModelCopyWithImpl<$Res>;
  $Res call({List<ShoppingCartModel>? listItem, int totalElement});
}

/// @nodoc
class _$CartListModelCopyWithImpl<$Res>
    implements $CartListModelCopyWith<$Res> {
  _$CartListModelCopyWithImpl(this._value, this._then);

  final CartListModel _value;
  // ignore: unused_field
  final $Res Function(CartListModel) _then;

  @override
  $Res call({
    Object? listItem = freezed,
    Object? totalElement = freezed,
  }) {
    return _then(_value.copyWith(
      listItem: listItem == freezed
          ? _value.listItem
          : listItem // ignore: cast_nullable_to_non_nullable
              as List<ShoppingCartModel>?,
      totalElement: totalElement == freezed
          ? _value.totalElement
          : totalElement // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$CartListModelCopyWith<$Res>
    implements $CartListModelCopyWith<$Res> {
  factory _$CartListModelCopyWith(
          _CartListModel value, $Res Function(_CartListModel) then) =
      __$CartListModelCopyWithImpl<$Res>;
  @override
  $Res call({List<ShoppingCartModel>? listItem, int totalElement});
}

/// @nodoc
class __$CartListModelCopyWithImpl<$Res>
    extends _$CartListModelCopyWithImpl<$Res>
    implements _$CartListModelCopyWith<$Res> {
  __$CartListModelCopyWithImpl(
      _CartListModel _value, $Res Function(_CartListModel) _then)
      : super(_value, (v) => _then(v as _CartListModel));

  @override
  _CartListModel get _value => super._value as _CartListModel;

  @override
  $Res call({
    Object? listItem = freezed,
    Object? totalElement = freezed,
  }) {
    return _then(_CartListModel(
      listItem: listItem == freezed
          ? _value.listItem
          : listItem // ignore: cast_nullable_to_non_nullable
              as List<ShoppingCartModel>?,
      totalElement: totalElement == freezed
          ? _value.totalElement
          : totalElement // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CartListModel implements _CartListModel {
  const _$_CartListModel({this.listItem, this.totalElement = 0});

  factory _$_CartListModel.fromJson(Map<String, dynamic> json) =>
      _$_$_CartListModelFromJson(json);

  @override
  final List<ShoppingCartModel>? listItem;
  @JsonKey(defaultValue: 0)
  @override
  final int totalElement;

  @override
  String toString() {
    return 'CartListModel(listItem: $listItem, totalElement: $totalElement)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _CartListModel &&
            (identical(other.listItem, listItem) ||
                const DeepCollectionEquality()
                    .equals(other.listItem, listItem)) &&
            (identical(other.totalElement, totalElement) ||
                const DeepCollectionEquality()
                    .equals(other.totalElement, totalElement)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(listItem) ^
      const DeepCollectionEquality().hash(totalElement);

  @JsonKey(ignore: true)
  @override
  _$CartListModelCopyWith<_CartListModel> get copyWith =>
      __$CartListModelCopyWithImpl<_CartListModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_CartListModelToJson(this);
  }
}

abstract class _CartListModel implements CartListModel {
  const factory _CartListModel(
      {List<ShoppingCartModel>? listItem, int totalElement}) = _$_CartListModel;

  factory _CartListModel.fromJson(Map<String, dynamic> json) =
      _$_CartListModel.fromJson;

  @override
  List<ShoppingCartModel>? get listItem => throw _privateConstructorUsedError;
  @override
  int get totalElement => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$CartListModelCopyWith<_CartListModel> get copyWith =>
      throw _privateConstructorUsedError;
}
