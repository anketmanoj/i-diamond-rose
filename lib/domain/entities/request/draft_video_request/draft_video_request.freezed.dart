// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'draft_video_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

DraftVideoRequest _$DraftVideoRequestFromJson(Map<String, dynamic> json) {
  return _DraftVideoRequest.fromJson(json);
}

/// @nodoc
class _$DraftVideoRequestTearOff {
  const _$DraftVideoRequestTearOff();

  _DraftVideoRequest call({required int page, required int size}) {
    return _DraftVideoRequest(
      page: page,
      size: size,
    );
  }

  DraftVideoRequest fromJson(Map<String, Object> json) {
    return DraftVideoRequest.fromJson(json);
  }
}

/// @nodoc
const $DraftVideoRequest = _$DraftVideoRequestTearOff();

/// @nodoc
mixin _$DraftVideoRequest {
  int get page => throw _privateConstructorUsedError;
  int get size => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DraftVideoRequestCopyWith<DraftVideoRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DraftVideoRequestCopyWith<$Res> {
  factory $DraftVideoRequestCopyWith(
          DraftVideoRequest value, $Res Function(DraftVideoRequest) then) =
      _$DraftVideoRequestCopyWithImpl<$Res>;
  $Res call({int page, int size});
}

/// @nodoc
class _$DraftVideoRequestCopyWithImpl<$Res>
    implements $DraftVideoRequestCopyWith<$Res> {
  _$DraftVideoRequestCopyWithImpl(this._value, this._then);

  final DraftVideoRequest _value;
  // ignore: unused_field
  final $Res Function(DraftVideoRequest) _then;

  @override
  $Res call({
    Object? page = freezed,
    Object? size = freezed,
  }) {
    return _then(_value.copyWith(
      page: page == freezed
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      size: size == freezed
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$DraftVideoRequestCopyWith<$Res>
    implements $DraftVideoRequestCopyWith<$Res> {
  factory _$DraftVideoRequestCopyWith(
          _DraftVideoRequest value, $Res Function(_DraftVideoRequest) then) =
      __$DraftVideoRequestCopyWithImpl<$Res>;
  @override
  $Res call({int page, int size});
}

/// @nodoc
class __$DraftVideoRequestCopyWithImpl<$Res>
    extends _$DraftVideoRequestCopyWithImpl<$Res>
    implements _$DraftVideoRequestCopyWith<$Res> {
  __$DraftVideoRequestCopyWithImpl(
      _DraftVideoRequest _value, $Res Function(_DraftVideoRequest) _then)
      : super(_value, (v) => _then(v as _DraftVideoRequest));

  @override
  _DraftVideoRequest get _value => super._value as _DraftVideoRequest;

  @override
  $Res call({
    Object? page = freezed,
    Object? size = freezed,
  }) {
    return _then(_DraftVideoRequest(
      page: page == freezed
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      size: size == freezed
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_DraftVideoRequest implements _DraftVideoRequest {
  const _$_DraftVideoRequest({required this.page, required this.size});

  factory _$_DraftVideoRequest.fromJson(Map<String, dynamic> json) =>
      _$_$_DraftVideoRequestFromJson(json);

  @override
  final int page;
  @override
  final int size;

  @override
  String toString() {
    return 'DraftVideoRequest(page: $page, size: $size)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _DraftVideoRequest &&
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
  _$DraftVideoRequestCopyWith<_DraftVideoRequest> get copyWith =>
      __$DraftVideoRequestCopyWithImpl<_DraftVideoRequest>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_DraftVideoRequestToJson(this);
  }
}

abstract class _DraftVideoRequest implements DraftVideoRequest {
  const factory _DraftVideoRequest({required int page, required int size}) =
      _$_DraftVideoRequest;

  factory _DraftVideoRequest.fromJson(Map<String, dynamic> json) =
      _$_DraftVideoRequest.fromJson;

  @override
  int get page => throw _privateConstructorUsedError;
  @override
  int get size => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$DraftVideoRequestCopyWith<_DraftVideoRequest> get copyWith =>
      throw _privateConstructorUsedError;
}
