// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'country_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CountryEntity _$CountryEntityFromJson(Map<String, dynamic> json) {
  return _CountryEntity.fromJson(json);
}

/// @nodoc
class _$CountryEntityTearOff {
  const _$CountryEntityTearOff();

  _CountryEntity call({int id = 0, String? countryName}) {
    return _CountryEntity(
      id: id,
      countryName: countryName,
    );
  }

  CountryEntity fromJson(Map<String, Object> json) {
    return CountryEntity.fromJson(json);
  }
}

/// @nodoc
const $CountryEntity = _$CountryEntityTearOff();

/// @nodoc
mixin _$CountryEntity {
  int get id => throw _privateConstructorUsedError;
  String? get countryName => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CountryEntityCopyWith<CountryEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CountryEntityCopyWith<$Res> {
  factory $CountryEntityCopyWith(
          CountryEntity value, $Res Function(CountryEntity) then) =
      _$CountryEntityCopyWithImpl<$Res>;
  $Res call({int id, String? countryName});
}

/// @nodoc
class _$CountryEntityCopyWithImpl<$Res>
    implements $CountryEntityCopyWith<$Res> {
  _$CountryEntityCopyWithImpl(this._value, this._then);

  final CountryEntity _value;
  // ignore: unused_field
  final $Res Function(CountryEntity) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? countryName = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      countryName: countryName == freezed
          ? _value.countryName
          : countryName // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$CountryEntityCopyWith<$Res>
    implements $CountryEntityCopyWith<$Res> {
  factory _$CountryEntityCopyWith(
          _CountryEntity value, $Res Function(_CountryEntity) then) =
      __$CountryEntityCopyWithImpl<$Res>;
  @override
  $Res call({int id, String? countryName});
}

/// @nodoc
class __$CountryEntityCopyWithImpl<$Res>
    extends _$CountryEntityCopyWithImpl<$Res>
    implements _$CountryEntityCopyWith<$Res> {
  __$CountryEntityCopyWithImpl(
      _CountryEntity _value, $Res Function(_CountryEntity) _then)
      : super(_value, (v) => _then(v as _CountryEntity));

  @override
  _CountryEntity get _value => super._value as _CountryEntity;

  @override
  $Res call({
    Object? id = freezed,
    Object? countryName = freezed,
  }) {
    return _then(_CountryEntity(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      countryName: countryName == freezed
          ? _value.countryName
          : countryName // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CountryEntity implements _CountryEntity {
  const _$_CountryEntity({this.id = 0, this.countryName});

  factory _$_CountryEntity.fromJson(Map<String, dynamic> json) =>
      _$_$_CountryEntityFromJson(json);

  @JsonKey(defaultValue: 0)
  @override
  final int id;
  @override
  final String? countryName;

  @override
  String toString() {
    return 'CountryEntity(id: $id, countryName: $countryName)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _CountryEntity &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.countryName, countryName) ||
                const DeepCollectionEquality()
                    .equals(other.countryName, countryName)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(countryName);

  @JsonKey(ignore: true)
  @override
  _$CountryEntityCopyWith<_CountryEntity> get copyWith =>
      __$CountryEntityCopyWithImpl<_CountryEntity>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_CountryEntityToJson(this);
  }
}

abstract class _CountryEntity implements CountryEntity {
  const factory _CountryEntity({int id, String? countryName}) =
      _$_CountryEntity;

  factory _CountryEntity.fromJson(Map<String, dynamic> json) =
      _$_CountryEntity.fromJson;

  @override
  int get id => throw _privateConstructorUsedError;
  @override
  String? get countryName => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$CountryEntityCopyWith<_CountryEntity> get copyWith =>
      throw _privateConstructorUsedError;
}
