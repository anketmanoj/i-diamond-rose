// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'request_other_content_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

RequestOtherContentModel _$RequestOtherContentModelFromJson(
    Map<String, dynamic> json) {
  return _RequestOtherContentModel.fromJson(json);
}

/// @nodoc
class _$RequestOtherContentModelTearOff {
  const _$RequestOtherContentModelTearOff();

  _RequestOtherContentModel call(
      {required int? type, required int? ownerId, int? page, int? size}) {
    return _RequestOtherContentModel(
      type: type,
      ownerId: ownerId,
      page: page,
      size: size,
    );
  }

  RequestOtherContentModel fromJson(Map<String, Object> json) {
    return RequestOtherContentModel.fromJson(json);
  }
}

/// @nodoc
const $RequestOtherContentModel = _$RequestOtherContentModelTearOff();

/// @nodoc
mixin _$RequestOtherContentModel {
  int? get type => throw _privateConstructorUsedError;
  int? get ownerId => throw _privateConstructorUsedError;
  int? get page => throw _privateConstructorUsedError;
  int? get size => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RequestOtherContentModelCopyWith<RequestOtherContentModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RequestOtherContentModelCopyWith<$Res> {
  factory $RequestOtherContentModelCopyWith(RequestOtherContentModel value,
          $Res Function(RequestOtherContentModel) then) =
      _$RequestOtherContentModelCopyWithImpl<$Res>;
  $Res call({int? type, int? ownerId, int? page, int? size});
}

/// @nodoc
class _$RequestOtherContentModelCopyWithImpl<$Res>
    implements $RequestOtherContentModelCopyWith<$Res> {
  _$RequestOtherContentModelCopyWithImpl(this._value, this._then);

  final RequestOtherContentModel _value;
  // ignore: unused_field
  final $Res Function(RequestOtherContentModel) _then;

  @override
  $Res call({
    Object? type = freezed,
    Object? ownerId = freezed,
    Object? page = freezed,
    Object? size = freezed,
  }) {
    return _then(_value.copyWith(
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as int?,
      ownerId: ownerId == freezed
          ? _value.ownerId
          : ownerId // ignore: cast_nullable_to_non_nullable
              as int?,
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
abstract class _$RequestOtherContentModelCopyWith<$Res>
    implements $RequestOtherContentModelCopyWith<$Res> {
  factory _$RequestOtherContentModelCopyWith(_RequestOtherContentModel value,
          $Res Function(_RequestOtherContentModel) then) =
      __$RequestOtherContentModelCopyWithImpl<$Res>;
  @override
  $Res call({int? type, int? ownerId, int? page, int? size});
}

/// @nodoc
class __$RequestOtherContentModelCopyWithImpl<$Res>
    extends _$RequestOtherContentModelCopyWithImpl<$Res>
    implements _$RequestOtherContentModelCopyWith<$Res> {
  __$RequestOtherContentModelCopyWithImpl(_RequestOtherContentModel _value,
      $Res Function(_RequestOtherContentModel) _then)
      : super(_value, (v) => _then(v as _RequestOtherContentModel));

  @override
  _RequestOtherContentModel get _value =>
      super._value as _RequestOtherContentModel;

  @override
  $Res call({
    Object? type = freezed,
    Object? ownerId = freezed,
    Object? page = freezed,
    Object? size = freezed,
  }) {
    return _then(_RequestOtherContentModel(
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as int?,
      ownerId: ownerId == freezed
          ? _value.ownerId
          : ownerId // ignore: cast_nullable_to_non_nullable
              as int?,
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
class _$_RequestOtherContentModel implements _RequestOtherContentModel {
  const _$_RequestOtherContentModel(
      {required this.type, required this.ownerId, this.page, this.size});

  factory _$_RequestOtherContentModel.fromJson(Map<String, dynamic> json) =>
      _$_$_RequestOtherContentModelFromJson(json);

  @override
  final int? type;
  @override
  final int? ownerId;
  @override
  final int? page;
  @override
  final int? size;

  @override
  String toString() {
    return 'RequestOtherContentModel(type: $type, ownerId: $ownerId, page: $page, size: $size)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _RequestOtherContentModel &&
            (identical(other.type, type) ||
                const DeepCollectionEquality().equals(other.type, type)) &&
            (identical(other.ownerId, ownerId) ||
                const DeepCollectionEquality()
                    .equals(other.ownerId, ownerId)) &&
            (identical(other.page, page) ||
                const DeepCollectionEquality().equals(other.page, page)) &&
            (identical(other.size, size) ||
                const DeepCollectionEquality().equals(other.size, size)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(type) ^
      const DeepCollectionEquality().hash(ownerId) ^
      const DeepCollectionEquality().hash(page) ^
      const DeepCollectionEquality().hash(size);

  @JsonKey(ignore: true)
  @override
  _$RequestOtherContentModelCopyWith<_RequestOtherContentModel> get copyWith =>
      __$RequestOtherContentModelCopyWithImpl<_RequestOtherContentModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_RequestOtherContentModelToJson(this);
  }
}

abstract class _RequestOtherContentModel implements RequestOtherContentModel {
  const factory _RequestOtherContentModel(
      {required int? type,
      required int? ownerId,
      int? page,
      int? size}) = _$_RequestOtherContentModel;

  factory _RequestOtherContentModel.fromJson(Map<String, dynamic> json) =
      _$_RequestOtherContentModel.fromJson;

  @override
  int? get type => throw _privateConstructorUsedError;
  @override
  int? get ownerId => throw _privateConstructorUsedError;
  @override
  int? get page => throw _privateConstructorUsedError;
  @override
  int? get size => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$RequestOtherContentModelCopyWith<_RequestOtherContentModel> get copyWith =>
      throw _privateConstructorUsedError;
}
