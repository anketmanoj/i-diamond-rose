// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'genre_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

GenreEntity _$GenreEntityFromJson(Map<String, dynamic> json) {
  return _GenreEntity.fromJson(json);
}

/// @nodoc
class _$GenreEntityTearOff {
  const _$GenreEntityTearOff();

  _GenreEntity call(
      {int id = 0,
      String? code,
      bool? isSelected,
      String label = "",
      int? position}) {
    return _GenreEntity(
      id: id,
      code: code,
      isSelected: isSelected,
      label: label,
      position: position,
    );
  }

  GenreEntity fromJson(Map<String, Object> json) {
    return GenreEntity.fromJson(json);
  }
}

/// @nodoc
const $GenreEntity = _$GenreEntityTearOff();

/// @nodoc
mixin _$GenreEntity {
  int get id => throw _privateConstructorUsedError;
  String? get code => throw _privateConstructorUsedError;
  bool? get isSelected => throw _privateConstructorUsedError;
  String get label => throw _privateConstructorUsedError;
  int? get position => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GenreEntityCopyWith<GenreEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GenreEntityCopyWith<$Res> {
  factory $GenreEntityCopyWith(
          GenreEntity value, $Res Function(GenreEntity) then) =
      _$GenreEntityCopyWithImpl<$Res>;
  $Res call(
      {int id, String? code, bool? isSelected, String label, int? position});
}

/// @nodoc
class _$GenreEntityCopyWithImpl<$Res> implements $GenreEntityCopyWith<$Res> {
  _$GenreEntityCopyWithImpl(this._value, this._then);

  final GenreEntity _value;
  // ignore: unused_field
  final $Res Function(GenreEntity) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? code = freezed,
    Object? isSelected = freezed,
    Object? label = freezed,
    Object? position = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      code: code == freezed
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String?,
      isSelected: isSelected == freezed
          ? _value.isSelected
          : isSelected // ignore: cast_nullable_to_non_nullable
              as bool?,
      label: label == freezed
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as String,
      position: position == freezed
          ? _value.position
          : position // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
abstract class _$GenreEntityCopyWith<$Res>
    implements $GenreEntityCopyWith<$Res> {
  factory _$GenreEntityCopyWith(
          _GenreEntity value, $Res Function(_GenreEntity) then) =
      __$GenreEntityCopyWithImpl<$Res>;
  @override
  $Res call(
      {int id, String? code, bool? isSelected, String label, int? position});
}

/// @nodoc
class __$GenreEntityCopyWithImpl<$Res> extends _$GenreEntityCopyWithImpl<$Res>
    implements _$GenreEntityCopyWith<$Res> {
  __$GenreEntityCopyWithImpl(
      _GenreEntity _value, $Res Function(_GenreEntity) _then)
      : super(_value, (v) => _then(v as _GenreEntity));

  @override
  _GenreEntity get _value => super._value as _GenreEntity;

  @override
  $Res call({
    Object? id = freezed,
    Object? code = freezed,
    Object? isSelected = freezed,
    Object? label = freezed,
    Object? position = freezed,
  }) {
    return _then(_GenreEntity(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      code: code == freezed
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String?,
      isSelected: isSelected == freezed
          ? _value.isSelected
          : isSelected // ignore: cast_nullable_to_non_nullable
              as bool?,
      label: label == freezed
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as String,
      position: position == freezed
          ? _value.position
          : position // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_GenreEntity implements _GenreEntity {
  const _$_GenreEntity(
      {this.id = 0,
      this.code,
      this.isSelected,
      this.label = "",
      this.position});

  factory _$_GenreEntity.fromJson(Map<String, dynamic> json) =>
      _$_$_GenreEntityFromJson(json);

  @JsonKey(defaultValue: 0)
  @override
  final int id;
  @override
  final String? code;
  @override
  final bool? isSelected;
  @JsonKey(defaultValue: "")
  @override
  final String label;
  @override
  final int? position;

  @override
  String toString() {
    return 'GenreEntity(id: $id, code: $code, isSelected: $isSelected, label: $label, position: $position)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _GenreEntity &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.code, code) ||
                const DeepCollectionEquality().equals(other.code, code)) &&
            (identical(other.isSelected, isSelected) ||
                const DeepCollectionEquality()
                    .equals(other.isSelected, isSelected)) &&
            (identical(other.label, label) ||
                const DeepCollectionEquality().equals(other.label, label)) &&
            (identical(other.position, position) ||
                const DeepCollectionEquality()
                    .equals(other.position, position)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(code) ^
      const DeepCollectionEquality().hash(isSelected) ^
      const DeepCollectionEquality().hash(label) ^
      const DeepCollectionEquality().hash(position);

  @JsonKey(ignore: true)
  @override
  _$GenreEntityCopyWith<_GenreEntity> get copyWith =>
      __$GenreEntityCopyWithImpl<_GenreEntity>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_GenreEntityToJson(this);
  }
}

abstract class _GenreEntity implements GenreEntity {
  const factory _GenreEntity(
      {int id,
      String? code,
      bool? isSelected,
      String label,
      int? position}) = _$_GenreEntity;

  factory _GenreEntity.fromJson(Map<String, dynamic> json) =
      _$_GenreEntity.fromJson;

  @override
  int get id => throw _privateConstructorUsedError;
  @override
  String? get code => throw _privateConstructorUsedError;
  @override
  bool? get isSelected => throw _privateConstructorUsedError;
  @override
  String get label => throw _privateConstructorUsedError;
  @override
  int? get position => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$GenreEntityCopyWith<_GenreEntity> get copyWith =>
      throw _privateConstructorUsedError;
}
