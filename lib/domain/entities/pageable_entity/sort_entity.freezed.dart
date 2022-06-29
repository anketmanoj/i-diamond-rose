// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'sort_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SortEntity _$SortEntityFromJson(Map<String, dynamic> json) {
  return _SortEntity.fromJson(json);
}

/// @nodoc
class _$SortEntityTearOff {
  const _$SortEntityTearOff();

  _SortEntity call(
      {bool sorted = false, bool unsorted = false, bool empty = false}) {
    return _SortEntity(
      sorted: sorted,
      unsorted: unsorted,
      empty: empty,
    );
  }

  SortEntity fromJson(Map<String, Object> json) {
    return SortEntity.fromJson(json);
  }
}

/// @nodoc
const $SortEntity = _$SortEntityTearOff();

/// @nodoc
mixin _$SortEntity {
  bool get sorted => throw _privateConstructorUsedError;
  bool get unsorted => throw _privateConstructorUsedError;
  bool get empty => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SortEntityCopyWith<SortEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SortEntityCopyWith<$Res> {
  factory $SortEntityCopyWith(
          SortEntity value, $Res Function(SortEntity) then) =
      _$SortEntityCopyWithImpl<$Res>;
  $Res call({bool sorted, bool unsorted, bool empty});
}

/// @nodoc
class _$SortEntityCopyWithImpl<$Res> implements $SortEntityCopyWith<$Res> {
  _$SortEntityCopyWithImpl(this._value, this._then);

  final SortEntity _value;
  // ignore: unused_field
  final $Res Function(SortEntity) _then;

  @override
  $Res call({
    Object? sorted = freezed,
    Object? unsorted = freezed,
    Object? empty = freezed,
  }) {
    return _then(_value.copyWith(
      sorted: sorted == freezed
          ? _value.sorted
          : sorted // ignore: cast_nullable_to_non_nullable
              as bool,
      unsorted: unsorted == freezed
          ? _value.unsorted
          : unsorted // ignore: cast_nullable_to_non_nullable
              as bool,
      empty: empty == freezed
          ? _value.empty
          : empty // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$SortEntityCopyWith<$Res> implements $SortEntityCopyWith<$Res> {
  factory _$SortEntityCopyWith(
          _SortEntity value, $Res Function(_SortEntity) then) =
      __$SortEntityCopyWithImpl<$Res>;
  @override
  $Res call({bool sorted, bool unsorted, bool empty});
}

/// @nodoc
class __$SortEntityCopyWithImpl<$Res> extends _$SortEntityCopyWithImpl<$Res>
    implements _$SortEntityCopyWith<$Res> {
  __$SortEntityCopyWithImpl(
      _SortEntity _value, $Res Function(_SortEntity) _then)
      : super(_value, (v) => _then(v as _SortEntity));

  @override
  _SortEntity get _value => super._value as _SortEntity;

  @override
  $Res call({
    Object? sorted = freezed,
    Object? unsorted = freezed,
    Object? empty = freezed,
  }) {
    return _then(_SortEntity(
      sorted: sorted == freezed
          ? _value.sorted
          : sorted // ignore: cast_nullable_to_non_nullable
              as bool,
      unsorted: unsorted == freezed
          ? _value.unsorted
          : unsorted // ignore: cast_nullable_to_non_nullable
              as bool,
      empty: empty == freezed
          ? _value.empty
          : empty // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SortEntity implements _SortEntity {
  const _$_SortEntity(
      {this.sorted = false, this.unsorted = false, this.empty = false});

  factory _$_SortEntity.fromJson(Map<String, dynamic> json) =>
      _$_$_SortEntityFromJson(json);

  @JsonKey(defaultValue: false)
  @override
  final bool sorted;
  @JsonKey(defaultValue: false)
  @override
  final bool unsorted;
  @JsonKey(defaultValue: false)
  @override
  final bool empty;

  @override
  String toString() {
    return 'SortEntity(sorted: $sorted, unsorted: $unsorted, empty: $empty)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SortEntity &&
            (identical(other.sorted, sorted) ||
                const DeepCollectionEquality().equals(other.sorted, sorted)) &&
            (identical(other.unsorted, unsorted) ||
                const DeepCollectionEquality()
                    .equals(other.unsorted, unsorted)) &&
            (identical(other.empty, empty) ||
                const DeepCollectionEquality().equals(other.empty, empty)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(sorted) ^
      const DeepCollectionEquality().hash(unsorted) ^
      const DeepCollectionEquality().hash(empty);

  @JsonKey(ignore: true)
  @override
  _$SortEntityCopyWith<_SortEntity> get copyWith =>
      __$SortEntityCopyWithImpl<_SortEntity>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_SortEntityToJson(this);
  }
}

abstract class _SortEntity implements SortEntity {
  const factory _SortEntity({bool sorted, bool unsorted, bool empty}) =
      _$_SortEntity;

  factory _SortEntity.fromJson(Map<String, dynamic> json) =
      _$_SortEntity.fromJson;

  @override
  bool get sorted => throw _privateConstructorUsedError;
  @override
  bool get unsorted => throw _privateConstructorUsedError;
  @override
  bool get empty => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$SortEntityCopyWith<_SortEntity> get copyWith =>
      throw _privateConstructorUsedError;
}
