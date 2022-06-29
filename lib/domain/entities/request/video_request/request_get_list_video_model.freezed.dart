// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'request_get_list_video_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

RequestGetListVideoModel _$RequestGetListVideoModelFromJson(
    Map<String, dynamic> json) {
  return _RequestGetListVideoModel.fromJson(json);
}

/// @nodoc
class _$RequestGetListVideoModelTearOff {
  const _$RequestGetListVideoModelTearOff();

  _RequestGetListVideoModel call(
      {required int? type, required int? userId, int? page, int? size}) {
    return _RequestGetListVideoModel(
      type: type,
      userId: userId,
      page: page,
      size: size,
    );
  }

  RequestGetListVideoModel fromJson(Map<String, Object> json) {
    return RequestGetListVideoModel.fromJson(json);
  }
}

/// @nodoc
const $RequestGetListVideoModel = _$RequestGetListVideoModelTearOff();

/// @nodoc
mixin _$RequestGetListVideoModel {
  int? get type => throw _privateConstructorUsedError;
  int? get userId => throw _privateConstructorUsedError;
  int? get page => throw _privateConstructorUsedError;
  int? get size => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RequestGetListVideoModelCopyWith<RequestGetListVideoModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RequestGetListVideoModelCopyWith<$Res> {
  factory $RequestGetListVideoModelCopyWith(RequestGetListVideoModel value,
          $Res Function(RequestGetListVideoModel) then) =
      _$RequestGetListVideoModelCopyWithImpl<$Res>;
  $Res call({int? type, int? userId, int? page, int? size});
}

/// @nodoc
class _$RequestGetListVideoModelCopyWithImpl<$Res>
    implements $RequestGetListVideoModelCopyWith<$Res> {
  _$RequestGetListVideoModelCopyWithImpl(this._value, this._then);

  final RequestGetListVideoModel _value;
  // ignore: unused_field
  final $Res Function(RequestGetListVideoModel) _then;

  @override
  $Res call({
    Object? type = freezed,
    Object? userId = freezed,
    Object? page = freezed,
    Object? size = freezed,
  }) {
    return _then(_value.copyWith(
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as int?,
      userId: userId == freezed
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
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
abstract class _$RequestGetListVideoModelCopyWith<$Res>
    implements $RequestGetListVideoModelCopyWith<$Res> {
  factory _$RequestGetListVideoModelCopyWith(_RequestGetListVideoModel value,
          $Res Function(_RequestGetListVideoModel) then) =
      __$RequestGetListVideoModelCopyWithImpl<$Res>;
  @override
  $Res call({int? type, int? userId, int? page, int? size});
}

/// @nodoc
class __$RequestGetListVideoModelCopyWithImpl<$Res>
    extends _$RequestGetListVideoModelCopyWithImpl<$Res>
    implements _$RequestGetListVideoModelCopyWith<$Res> {
  __$RequestGetListVideoModelCopyWithImpl(_RequestGetListVideoModel _value,
      $Res Function(_RequestGetListVideoModel) _then)
      : super(_value, (v) => _then(v as _RequestGetListVideoModel));

  @override
  _RequestGetListVideoModel get _value =>
      super._value as _RequestGetListVideoModel;

  @override
  $Res call({
    Object? type = freezed,
    Object? userId = freezed,
    Object? page = freezed,
    Object? size = freezed,
  }) {
    return _then(_RequestGetListVideoModel(
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as int?,
      userId: userId == freezed
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
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
class _$_RequestGetListVideoModel implements _RequestGetListVideoModel {
  const _$_RequestGetListVideoModel(
      {required this.type, required this.userId, this.page, this.size});

  factory _$_RequestGetListVideoModel.fromJson(Map<String, dynamic> json) =>
      _$_$_RequestGetListVideoModelFromJson(json);

  @override
  final int? type;
  @override
  final int? userId;
  @override
  final int? page;
  @override
  final int? size;

  @override
  String toString() {
    return 'RequestGetListVideoModel(type: $type, userId: $userId, page: $page, size: $size)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _RequestGetListVideoModel &&
            (identical(other.type, type) ||
                const DeepCollectionEquality().equals(other.type, type)) &&
            (identical(other.userId, userId) ||
                const DeepCollectionEquality().equals(other.userId, userId)) &&
            (identical(other.page, page) ||
                const DeepCollectionEquality().equals(other.page, page)) &&
            (identical(other.size, size) ||
                const DeepCollectionEquality().equals(other.size, size)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(type) ^
      const DeepCollectionEquality().hash(userId) ^
      const DeepCollectionEquality().hash(page) ^
      const DeepCollectionEquality().hash(size);

  @JsonKey(ignore: true)
  @override
  _$RequestGetListVideoModelCopyWith<_RequestGetListVideoModel> get copyWith =>
      __$RequestGetListVideoModelCopyWithImpl<_RequestGetListVideoModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_RequestGetListVideoModelToJson(this);
  }
}

abstract class _RequestGetListVideoModel implements RequestGetListVideoModel {
  const factory _RequestGetListVideoModel(
      {required int? type,
      required int? userId,
      int? page,
      int? size}) = _$_RequestGetListVideoModel;

  factory _RequestGetListVideoModel.fromJson(Map<String, dynamic> json) =
      _$_RequestGetListVideoModel.fromJson;

  @override
  int? get type => throw _privateConstructorUsedError;
  @override
  int? get userId => throw _privateConstructorUsedError;
  @override
  int? get page => throw _privateConstructorUsedError;
  @override
  int? get size => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$RequestGetListVideoModelCopyWith<_RequestGetListVideoModel> get copyWith =>
      throw _privateConstructorUsedError;
}
