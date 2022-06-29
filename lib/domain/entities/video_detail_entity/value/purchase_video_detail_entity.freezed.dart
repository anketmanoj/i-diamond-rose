// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'purchase_video_detail_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PurchaseVideoDetailEntity _$PurchaseVideoDetailEntityFromJson(
    Map<String, dynamic> json) {
  return _PurchaseVideoDetailEntity.fromJson(json);
}

/// @nodoc
class _$PurchaseVideoDetailEntityTearOff {
  const _$PurchaseVideoDetailEntityTearOff();

  _PurchaseVideoDetailEntity call(
      {String? wkVideoId, List<ItemMaterialEntity>? listItem}) {
    return _PurchaseVideoDetailEntity(
      wkVideoId: wkVideoId,
      listItem: listItem,
    );
  }

  PurchaseVideoDetailEntity fromJson(Map<String, Object> json) {
    return PurchaseVideoDetailEntity.fromJson(json);
  }
}

/// @nodoc
const $PurchaseVideoDetailEntity = _$PurchaseVideoDetailEntityTearOff();

/// @nodoc
mixin _$PurchaseVideoDetailEntity {
  String? get wkVideoId => throw _privateConstructorUsedError;
  List<ItemMaterialEntity>? get listItem => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PurchaseVideoDetailEntityCopyWith<PurchaseVideoDetailEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PurchaseVideoDetailEntityCopyWith<$Res> {
  factory $PurchaseVideoDetailEntityCopyWith(PurchaseVideoDetailEntity value,
          $Res Function(PurchaseVideoDetailEntity) then) =
      _$PurchaseVideoDetailEntityCopyWithImpl<$Res>;
  $Res call({String? wkVideoId, List<ItemMaterialEntity>? listItem});
}

/// @nodoc
class _$PurchaseVideoDetailEntityCopyWithImpl<$Res>
    implements $PurchaseVideoDetailEntityCopyWith<$Res> {
  _$PurchaseVideoDetailEntityCopyWithImpl(this._value, this._then);

  final PurchaseVideoDetailEntity _value;
  // ignore: unused_field
  final $Res Function(PurchaseVideoDetailEntity) _then;

  @override
  $Res call({
    Object? wkVideoId = freezed,
    Object? listItem = freezed,
  }) {
    return _then(_value.copyWith(
      wkVideoId: wkVideoId == freezed
          ? _value.wkVideoId
          : wkVideoId // ignore: cast_nullable_to_non_nullable
              as String?,
      listItem: listItem == freezed
          ? _value.listItem
          : listItem // ignore: cast_nullable_to_non_nullable
              as List<ItemMaterialEntity>?,
    ));
  }
}

/// @nodoc
abstract class _$PurchaseVideoDetailEntityCopyWith<$Res>
    implements $PurchaseVideoDetailEntityCopyWith<$Res> {
  factory _$PurchaseVideoDetailEntityCopyWith(_PurchaseVideoDetailEntity value,
          $Res Function(_PurchaseVideoDetailEntity) then) =
      __$PurchaseVideoDetailEntityCopyWithImpl<$Res>;
  @override
  $Res call({String? wkVideoId, List<ItemMaterialEntity>? listItem});
}

/// @nodoc
class __$PurchaseVideoDetailEntityCopyWithImpl<$Res>
    extends _$PurchaseVideoDetailEntityCopyWithImpl<$Res>
    implements _$PurchaseVideoDetailEntityCopyWith<$Res> {
  __$PurchaseVideoDetailEntityCopyWithImpl(_PurchaseVideoDetailEntity _value,
      $Res Function(_PurchaseVideoDetailEntity) _then)
      : super(_value, (v) => _then(v as _PurchaseVideoDetailEntity));

  @override
  _PurchaseVideoDetailEntity get _value =>
      super._value as _PurchaseVideoDetailEntity;

  @override
  $Res call({
    Object? wkVideoId = freezed,
    Object? listItem = freezed,
  }) {
    return _then(_PurchaseVideoDetailEntity(
      wkVideoId: wkVideoId == freezed
          ? _value.wkVideoId
          : wkVideoId // ignore: cast_nullable_to_non_nullable
              as String?,
      listItem: listItem == freezed
          ? _value.listItem
          : listItem // ignore: cast_nullable_to_non_nullable
              as List<ItemMaterialEntity>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PurchaseVideoDetailEntity implements _PurchaseVideoDetailEntity {
  const _$_PurchaseVideoDetailEntity({this.wkVideoId, this.listItem});

  factory _$_PurchaseVideoDetailEntity.fromJson(Map<String, dynamic> json) =>
      _$_$_PurchaseVideoDetailEntityFromJson(json);

  @override
  final String? wkVideoId;
  @override
  final List<ItemMaterialEntity>? listItem;

  @override
  String toString() {
    return 'PurchaseVideoDetailEntity(wkVideoId: $wkVideoId, listItem: $listItem)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _PurchaseVideoDetailEntity &&
            (identical(other.wkVideoId, wkVideoId) ||
                const DeepCollectionEquality()
                    .equals(other.wkVideoId, wkVideoId)) &&
            (identical(other.listItem, listItem) ||
                const DeepCollectionEquality()
                    .equals(other.listItem, listItem)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(wkVideoId) ^
      const DeepCollectionEquality().hash(listItem);

  @JsonKey(ignore: true)
  @override
  _$PurchaseVideoDetailEntityCopyWith<_PurchaseVideoDetailEntity>
      get copyWith =>
          __$PurchaseVideoDetailEntityCopyWithImpl<_PurchaseVideoDetailEntity>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_PurchaseVideoDetailEntityToJson(this);
  }
}

abstract class _PurchaseVideoDetailEntity implements PurchaseVideoDetailEntity {
  const factory _PurchaseVideoDetailEntity(
      {String? wkVideoId,
      List<ItemMaterialEntity>? listItem}) = _$_PurchaseVideoDetailEntity;

  factory _PurchaseVideoDetailEntity.fromJson(Map<String, dynamic> json) =
      _$_PurchaseVideoDetailEntity.fromJson;

  @override
  String? get wkVideoId => throw _privateConstructorUsedError;
  @override
  List<ItemMaterialEntity>? get listItem => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$PurchaseVideoDetailEntityCopyWith<_PurchaseVideoDetailEntity>
      get copyWith => throw _privateConstructorUsedError;
}
