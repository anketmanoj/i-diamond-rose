// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'pageable_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PageableEntity _$PageableEntityFromJson(Map<String, dynamic> json) {
  return _PageableEntity.fromJson(json);
}

/// @nodoc
class _$PageableEntityTearOff {
  const _$PageableEntityTearOff();

  _PageableEntity call(
      {SortEntity? sort,
      int offset = 0,
      dynamic pageNumber = 0,
      dynamic pageSize = 0,
      bool paged = false,
      bool unPaged = false}) {
    return _PageableEntity(
      sort: sort,
      offset: offset,
      pageNumber: pageNumber,
      pageSize: pageSize,
      paged: paged,
      unPaged: unPaged,
    );
  }

  PageableEntity fromJson(Map<String, Object> json) {
    return PageableEntity.fromJson(json);
  }
}

/// @nodoc
const $PageableEntity = _$PageableEntityTearOff();

/// @nodoc
mixin _$PageableEntity {
  SortEntity? get sort => throw _privateConstructorUsedError;
  int get offset => throw _privateConstructorUsedError;
  dynamic get pageNumber => throw _privateConstructorUsedError;
  dynamic get pageSize => throw _privateConstructorUsedError;
  bool get paged => throw _privateConstructorUsedError;
  bool get unPaged => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PageableEntityCopyWith<PageableEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PageableEntityCopyWith<$Res> {
  factory $PageableEntityCopyWith(
          PageableEntity value, $Res Function(PageableEntity) then) =
      _$PageableEntityCopyWithImpl<$Res>;
  $Res call(
      {SortEntity? sort,
      int offset,
      dynamic pageNumber,
      dynamic pageSize,
      bool paged,
      bool unPaged});

  $SortEntityCopyWith<$Res>? get sort;
}

/// @nodoc
class _$PageableEntityCopyWithImpl<$Res>
    implements $PageableEntityCopyWith<$Res> {
  _$PageableEntityCopyWithImpl(this._value, this._then);

  final PageableEntity _value;
  // ignore: unused_field
  final $Res Function(PageableEntity) _then;

  @override
  $Res call({
    Object? sort = freezed,
    Object? offset = freezed,
    Object? pageNumber = freezed,
    Object? pageSize = freezed,
    Object? paged = freezed,
    Object? unPaged = freezed,
  }) {
    return _then(_value.copyWith(
      sort: sort == freezed
          ? _value.sort
          : sort // ignore: cast_nullable_to_non_nullable
              as SortEntity?,
      offset: offset == freezed
          ? _value.offset
          : offset // ignore: cast_nullable_to_non_nullable
              as int,
      pageNumber: pageNumber == freezed
          ? _value.pageNumber
          : pageNumber // ignore: cast_nullable_to_non_nullable
              as dynamic,
      pageSize: pageSize == freezed
          ? _value.pageSize
          : pageSize // ignore: cast_nullable_to_non_nullable
              as dynamic,
      paged: paged == freezed
          ? _value.paged
          : paged // ignore: cast_nullable_to_non_nullable
              as bool,
      unPaged: unPaged == freezed
          ? _value.unPaged
          : unPaged // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }

  @override
  $SortEntityCopyWith<$Res>? get sort {
    if (_value.sort == null) {
      return null;
    }

    return $SortEntityCopyWith<$Res>(_value.sort!, (value) {
      return _then(_value.copyWith(sort: value));
    });
  }
}

/// @nodoc
abstract class _$PageableEntityCopyWith<$Res>
    implements $PageableEntityCopyWith<$Res> {
  factory _$PageableEntityCopyWith(
          _PageableEntity value, $Res Function(_PageableEntity) then) =
      __$PageableEntityCopyWithImpl<$Res>;
  @override
  $Res call(
      {SortEntity? sort,
      int offset,
      dynamic pageNumber,
      dynamic pageSize,
      bool paged,
      bool unPaged});

  @override
  $SortEntityCopyWith<$Res>? get sort;
}

/// @nodoc
class __$PageableEntityCopyWithImpl<$Res>
    extends _$PageableEntityCopyWithImpl<$Res>
    implements _$PageableEntityCopyWith<$Res> {
  __$PageableEntityCopyWithImpl(
      _PageableEntity _value, $Res Function(_PageableEntity) _then)
      : super(_value, (v) => _then(v as _PageableEntity));

  @override
  _PageableEntity get _value => super._value as _PageableEntity;

  @override
  $Res call({
    Object? sort = freezed,
    Object? offset = freezed,
    Object? pageNumber = freezed,
    Object? pageSize = freezed,
    Object? paged = freezed,
    Object? unPaged = freezed,
  }) {
    return _then(_PageableEntity(
      sort: sort == freezed
          ? _value.sort
          : sort // ignore: cast_nullable_to_non_nullable
              as SortEntity?,
      offset: offset == freezed
          ? _value.offset
          : offset // ignore: cast_nullable_to_non_nullable
              as int,
      pageNumber: pageNumber == freezed ? _value.pageNumber : pageNumber,
      pageSize: pageSize == freezed ? _value.pageSize : pageSize,
      paged: paged == freezed
          ? _value.paged
          : paged // ignore: cast_nullable_to_non_nullable
              as bool,
      unPaged: unPaged == freezed
          ? _value.unPaged
          : unPaged // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PageableEntity implements _PageableEntity {
  const _$_PageableEntity(
      {this.sort,
      this.offset = 0,
      this.pageNumber = 0,
      this.pageSize = 0,
      this.paged = false,
      this.unPaged = false});

  factory _$_PageableEntity.fromJson(Map<String, dynamic> json) =>
      _$_$_PageableEntityFromJson(json);

  @override
  final SortEntity? sort;
  @JsonKey(defaultValue: 0)
  @override
  final int offset;
  @JsonKey(defaultValue: 0)
  @override
  final dynamic pageNumber;
  @JsonKey(defaultValue: 0)
  @override
  final dynamic pageSize;
  @JsonKey(defaultValue: false)
  @override
  final bool paged;
  @JsonKey(defaultValue: false)
  @override
  final bool unPaged;

  @override
  String toString() {
    return 'PageableEntity(sort: $sort, offset: $offset, pageNumber: $pageNumber, pageSize: $pageSize, paged: $paged, unPaged: $unPaged)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _PageableEntity &&
            (identical(other.sort, sort) ||
                const DeepCollectionEquality().equals(other.sort, sort)) &&
            (identical(other.offset, offset) ||
                const DeepCollectionEquality().equals(other.offset, offset)) &&
            (identical(other.pageNumber, pageNumber) ||
                const DeepCollectionEquality()
                    .equals(other.pageNumber, pageNumber)) &&
            (identical(other.pageSize, pageSize) ||
                const DeepCollectionEquality()
                    .equals(other.pageSize, pageSize)) &&
            (identical(other.paged, paged) ||
                const DeepCollectionEquality().equals(other.paged, paged)) &&
            (identical(other.unPaged, unPaged) ||
                const DeepCollectionEquality().equals(other.unPaged, unPaged)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(sort) ^
      const DeepCollectionEquality().hash(offset) ^
      const DeepCollectionEquality().hash(pageNumber) ^
      const DeepCollectionEquality().hash(pageSize) ^
      const DeepCollectionEquality().hash(paged) ^
      const DeepCollectionEquality().hash(unPaged);

  @JsonKey(ignore: true)
  @override
  _$PageableEntityCopyWith<_PageableEntity> get copyWith =>
      __$PageableEntityCopyWithImpl<_PageableEntity>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_PageableEntityToJson(this);
  }
}

abstract class _PageableEntity implements PageableEntity {
  const factory _PageableEntity(
      {SortEntity? sort,
      int offset,
      dynamic pageNumber,
      dynamic pageSize,
      bool paged,
      bool unPaged}) = _$_PageableEntity;

  factory _PageableEntity.fromJson(Map<String, dynamic> json) =
      _$_PageableEntity.fromJson;

  @override
  SortEntity? get sort => throw _privateConstructorUsedError;
  @override
  int get offset => throw _privateConstructorUsedError;
  @override
  dynamic get pageNumber => throw _privateConstructorUsedError;
  @override
  dynamic get pageSize => throw _privateConstructorUsedError;
  @override
  bool get paged => throw _privateConstructorUsedError;
  @override
  bool get unPaged => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$PageableEntityCopyWith<_PageableEntity> get copyWith =>
      throw _privateConstructorUsedError;
}
