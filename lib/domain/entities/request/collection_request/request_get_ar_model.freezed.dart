// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'request_get_ar_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

RequestGetArModel _$RequestGetArModelFromJson(Map<String, dynamic> json) {
  return _RequestGetArModel.fromJson(json);
}

/// @nodoc
class _$RequestGetArModelTearOff {
  const _$RequestGetArModelTearOff();

  _RequestGetArModel call({int? page, int? size}) {
    return _RequestGetArModel(
      page: page,
      size: size,
    );
  }

  RequestGetArModel fromJson(Map<String, Object> json) {
    return RequestGetArModel.fromJson(json);
  }
}

/// @nodoc
const $RequestGetArModel = _$RequestGetArModelTearOff();

/// @nodoc
mixin _$RequestGetArModel {
  int? get page => throw _privateConstructorUsedError;
  int? get size => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RequestGetArModelCopyWith<RequestGetArModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RequestGetArModelCopyWith<$Res> {
  factory $RequestGetArModelCopyWith(
          RequestGetArModel value, $Res Function(RequestGetArModel) then) =
      _$RequestGetArModelCopyWithImpl<$Res>;
  $Res call({int? page, int? size});
}

/// @nodoc
class _$RequestGetArModelCopyWithImpl<$Res>
    implements $RequestGetArModelCopyWith<$Res> {
  _$RequestGetArModelCopyWithImpl(this._value, this._then);

  final RequestGetArModel _value;
  // ignore: unused_field
  final $Res Function(RequestGetArModel) _then;

  @override
  $Res call({
    Object? page = freezed,
    Object? size = freezed,
  }) {
    return _then(_value.copyWith(
      page: page == freezed
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int?,
      size: size == freezed
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
abstract class _$RequestGetArModelCopyWith<$Res>
    implements $RequestGetArModelCopyWith<$Res> {
  factory _$RequestGetArModelCopyWith(
          _RequestGetArModel value, $Res Function(_RequestGetArModel) then) =
      __$RequestGetArModelCopyWithImpl<$Res>;
  @override
  $Res call({int? page, int? size});
}

/// @nodoc
class __$RequestGetArModelCopyWithImpl<$Res>
    extends _$RequestGetArModelCopyWithImpl<$Res>
    implements _$RequestGetArModelCopyWith<$Res> {
  __$RequestGetArModelCopyWithImpl(
      _RequestGetArModel _value, $Res Function(_RequestGetArModel) _then)
      : super(_value, (v) => _then(v as _RequestGetArModel));

  @override
  _RequestGetArModel get _value => super._value as _RequestGetArModel;

  @override
  $Res call({
    Object? page = freezed,
    Object? size = freezed,
  }) {
    return _then(_RequestGetArModel(
      page: page == freezed
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int?,
      size: size == freezed
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_RequestGetArModel implements _RequestGetArModel {
  const _$_RequestGetArModel({this.page, this.size});

  factory _$_RequestGetArModel.fromJson(Map<String, dynamic> json) =>
      _$_$_RequestGetArModelFromJson(json);

  @override
  final int? page;
  @override
  final int? size;

  @override
  String toString() {
    return 'RequestGetArModel(page: $page, size: $size)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _RequestGetArModel &&
            (identical(other.page, page) ||
                const DeepCollectionEquality().equals(other.page, page)) &&
            (identical(other.size, size) ||
                const DeepCollectionEquality().equals(other.size, size)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(page) ^
      const DeepCollectionEquality().hash(size);

  @JsonKey(ignore: true)
  @override
  _$RequestGetArModelCopyWith<_RequestGetArModel> get copyWith =>
      __$RequestGetArModelCopyWithImpl<_RequestGetArModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_RequestGetArModelToJson(this);
  }
}

abstract class _RequestGetArModel implements RequestGetArModel {
  const factory _RequestGetArModel({int? page, int? size}) =
      _$_RequestGetArModel;

  factory _RequestGetArModel.fromJson(Map<String, dynamic> json) =
      _$_RequestGetArModel.fromJson;

  @override
  int? get page => throw _privateConstructorUsedError;
  @override
  int? get size => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$RequestGetArModelCopyWith<_RequestGetArModel> get copyWith =>
      throw _privateConstructorUsedError;
}
