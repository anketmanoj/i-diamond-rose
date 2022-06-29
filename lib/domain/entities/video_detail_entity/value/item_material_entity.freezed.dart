// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'item_material_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ItemMaterialEntity _$ItemMaterialEntityFromJson(Map<String, dynamic> json) {
  return _ItemMaterialEntity.fromJson(json);
}

/// @nodoc
class _$ItemMaterialEntityTearOff {
  const _$ItemMaterialEntityTearOff();

  _ItemMaterialEntity call(
      {int id = 0, String itemUrl = "", String itemThumbnailUrl = ""}) {
    return _ItemMaterialEntity(
      id: id,
      itemUrl: itemUrl,
      itemThumbnailUrl: itemThumbnailUrl,
    );
  }

  ItemMaterialEntity fromJson(Map<String, Object> json) {
    return ItemMaterialEntity.fromJson(json);
  }
}

/// @nodoc
const $ItemMaterialEntity = _$ItemMaterialEntityTearOff();

/// @nodoc
mixin _$ItemMaterialEntity {
  int get id => throw _privateConstructorUsedError;
  String get itemUrl => throw _privateConstructorUsedError;
  String get itemThumbnailUrl => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ItemMaterialEntityCopyWith<ItemMaterialEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ItemMaterialEntityCopyWith<$Res> {
  factory $ItemMaterialEntityCopyWith(
          ItemMaterialEntity value, $Res Function(ItemMaterialEntity) then) =
      _$ItemMaterialEntityCopyWithImpl<$Res>;
  $Res call({int id, String itemUrl, String itemThumbnailUrl});
}

/// @nodoc
class _$ItemMaterialEntityCopyWithImpl<$Res>
    implements $ItemMaterialEntityCopyWith<$Res> {
  _$ItemMaterialEntityCopyWithImpl(this._value, this._then);

  final ItemMaterialEntity _value;
  // ignore: unused_field
  final $Res Function(ItemMaterialEntity) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? itemUrl = freezed,
    Object? itemThumbnailUrl = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      itemUrl: itemUrl == freezed
          ? _value.itemUrl
          : itemUrl // ignore: cast_nullable_to_non_nullable
              as String,
      itemThumbnailUrl: itemThumbnailUrl == freezed
          ? _value.itemThumbnailUrl
          : itemThumbnailUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$ItemMaterialEntityCopyWith<$Res>
    implements $ItemMaterialEntityCopyWith<$Res> {
  factory _$ItemMaterialEntityCopyWith(
          _ItemMaterialEntity value, $Res Function(_ItemMaterialEntity) then) =
      __$ItemMaterialEntityCopyWithImpl<$Res>;
  @override
  $Res call({int id, String itemUrl, String itemThumbnailUrl});
}

/// @nodoc
class __$ItemMaterialEntityCopyWithImpl<$Res>
    extends _$ItemMaterialEntityCopyWithImpl<$Res>
    implements _$ItemMaterialEntityCopyWith<$Res> {
  __$ItemMaterialEntityCopyWithImpl(
      _ItemMaterialEntity _value, $Res Function(_ItemMaterialEntity) _then)
      : super(_value, (v) => _then(v as _ItemMaterialEntity));

  @override
  _ItemMaterialEntity get _value => super._value as _ItemMaterialEntity;

  @override
  $Res call({
    Object? id = freezed,
    Object? itemUrl = freezed,
    Object? itemThumbnailUrl = freezed,
  }) {
    return _then(_ItemMaterialEntity(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      itemUrl: itemUrl == freezed
          ? _value.itemUrl
          : itemUrl // ignore: cast_nullable_to_non_nullable
              as String,
      itemThumbnailUrl: itemThumbnailUrl == freezed
          ? _value.itemThumbnailUrl
          : itemThumbnailUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ItemMaterialEntity implements _ItemMaterialEntity {
  const _$_ItemMaterialEntity(
      {this.id = 0, this.itemUrl = "", this.itemThumbnailUrl = ""});

  factory _$_ItemMaterialEntity.fromJson(Map<String, dynamic> json) =>
      _$_$_ItemMaterialEntityFromJson(json);

  @JsonKey(defaultValue: 0)
  @override
  final int id;
  @JsonKey(defaultValue: "")
  @override
  final String itemUrl;
  @JsonKey(defaultValue: "")
  @override
  final String itemThumbnailUrl;

  @override
  String toString() {
    return 'ItemMaterialEntity(id: $id, itemUrl: $itemUrl, itemThumbnailUrl: $itemThumbnailUrl)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ItemMaterialEntity &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.itemUrl, itemUrl) ||
                const DeepCollectionEquality()
                    .equals(other.itemUrl, itemUrl)) &&
            (identical(other.itemThumbnailUrl, itemThumbnailUrl) ||
                const DeepCollectionEquality()
                    .equals(other.itemThumbnailUrl, itemThumbnailUrl)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(itemUrl) ^
      const DeepCollectionEquality().hash(itemThumbnailUrl);

  @JsonKey(ignore: true)
  @override
  _$ItemMaterialEntityCopyWith<_ItemMaterialEntity> get copyWith =>
      __$ItemMaterialEntityCopyWithImpl<_ItemMaterialEntity>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_ItemMaterialEntityToJson(this);
  }
}

abstract class _ItemMaterialEntity implements ItemMaterialEntity {
  const factory _ItemMaterialEntity(
      {int id,
      String itemUrl,
      String itemThumbnailUrl}) = _$_ItemMaterialEntity;

  factory _ItemMaterialEntity.fromJson(Map<String, dynamic> json) =
      _$_ItemMaterialEntity.fromJson;

  @override
  int get id => throw _privateConstructorUsedError;
  @override
  String get itemUrl => throw _privateConstructorUsedError;
  @override
  String get itemThumbnailUrl => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ItemMaterialEntityCopyWith<_ItemMaterialEntity> get copyWith =>
      throw _privateConstructorUsedError;
}
