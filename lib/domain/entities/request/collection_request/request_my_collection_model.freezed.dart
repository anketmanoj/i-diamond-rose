// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'request_my_collection_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

RequestMyCollectionModel _$RequestMyCollectionModelFromJson(
    Map<String, dynamic> json) {
  return _RequestMyCollectionModel.fromJson(json);
}

/// @nodoc
class _$RequestMyCollectionModelTearOff {
  const _$RequestMyCollectionModelTearOff();

  _RequestMyCollectionModel call(
      {required int? type,
      dynamic category = "video",
      int? pageSize,
      int? pageNumber}) {
    return _RequestMyCollectionModel(
      type: type,
      category: category,
      pageSize: pageSize,
      pageNumber: pageNumber,
    );
  }

  RequestMyCollectionModel fromJson(Map<String, Object> json) {
    return RequestMyCollectionModel.fromJson(json);
  }
}

/// @nodoc
const $RequestMyCollectionModel = _$RequestMyCollectionModelTearOff();

/// @nodoc
mixin _$RequestMyCollectionModel {
  int? get type => throw _privateConstructorUsedError;
  dynamic get category => throw _privateConstructorUsedError;
  int? get pageSize => throw _privateConstructorUsedError;
  int? get pageNumber => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RequestMyCollectionModelCopyWith<RequestMyCollectionModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RequestMyCollectionModelCopyWith<$Res> {
  factory $RequestMyCollectionModelCopyWith(RequestMyCollectionModel value,
          $Res Function(RequestMyCollectionModel) then) =
      _$RequestMyCollectionModelCopyWithImpl<$Res>;
  $Res call({int? type, dynamic category, int? pageSize, int? pageNumber});
}

/// @nodoc
class _$RequestMyCollectionModelCopyWithImpl<$Res>
    implements $RequestMyCollectionModelCopyWith<$Res> {
  _$RequestMyCollectionModelCopyWithImpl(this._value, this._then);

  final RequestMyCollectionModel _value;
  // ignore: unused_field
  final $Res Function(RequestMyCollectionModel) _then;

  @override
  $Res call({
    Object? type = freezed,
    Object? category = freezed,
    Object? pageSize = freezed,
    Object? pageNumber = freezed,
  }) {
    return _then(_value.copyWith(
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as int?,
      category: category == freezed
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as dynamic,
      pageSize: pageSize == freezed
          ? _value.pageSize
          : pageSize // ignore: cast_nullable_to_non_nullable
              as int?,
      pageNumber: pageNumber == freezed
          ? _value.pageNumber
          : pageNumber // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
abstract class _$RequestMyCollectionModelCopyWith<$Res>
    implements $RequestMyCollectionModelCopyWith<$Res> {
  factory _$RequestMyCollectionModelCopyWith(_RequestMyCollectionModel value,
          $Res Function(_RequestMyCollectionModel) then) =
      __$RequestMyCollectionModelCopyWithImpl<$Res>;
  @override
  $Res call({int? type, dynamic category, int? pageSize, int? pageNumber});
}

/// @nodoc
class __$RequestMyCollectionModelCopyWithImpl<$Res>
    extends _$RequestMyCollectionModelCopyWithImpl<$Res>
    implements _$RequestMyCollectionModelCopyWith<$Res> {
  __$RequestMyCollectionModelCopyWithImpl(_RequestMyCollectionModel _value,
      $Res Function(_RequestMyCollectionModel) _then)
      : super(_value, (v) => _then(v as _RequestMyCollectionModel));

  @override
  _RequestMyCollectionModel get _value =>
      super._value as _RequestMyCollectionModel;

  @override
  $Res call({
    Object? type = freezed,
    Object? category = freezed,
    Object? pageSize = freezed,
    Object? pageNumber = freezed,
  }) {
    return _then(_RequestMyCollectionModel(
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as int?,
      category: category == freezed ? _value.category : category,
      pageSize: pageSize == freezed
          ? _value.pageSize
          : pageSize // ignore: cast_nullable_to_non_nullable
              as int?,
      pageNumber: pageNumber == freezed
          ? _value.pageNumber
          : pageNumber // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_RequestMyCollectionModel implements _RequestMyCollectionModel {
  const _$_RequestMyCollectionModel(
      {required this.type,
      this.category = "video",
      this.pageSize,
      this.pageNumber});

  factory _$_RequestMyCollectionModel.fromJson(Map<String, dynamic> json) =>
      _$_$_RequestMyCollectionModelFromJson(json);

  @override
  final int? type;
  @JsonKey(defaultValue: "video")
  @override
  final dynamic category;
  @override
  final int? pageSize;
  @override
  final int? pageNumber;

  @override
  String toString() {
    return 'RequestMyCollectionModel(type: $type, category: $category, pageSize: $pageSize, pageNumber: $pageNumber)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _RequestMyCollectionModel &&
            (identical(other.type, type) ||
                const DeepCollectionEquality().equals(other.type, type)) &&
            (identical(other.category, category) ||
                const DeepCollectionEquality()
                    .equals(other.category, category)) &&
            (identical(other.pageSize, pageSize) ||
                const DeepCollectionEquality()
                    .equals(other.pageSize, pageSize)) &&
            (identical(other.pageNumber, pageNumber) ||
                const DeepCollectionEquality()
                    .equals(other.pageNumber, pageNumber)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(type) ^
      const DeepCollectionEquality().hash(category) ^
      const DeepCollectionEquality().hash(pageSize) ^
      const DeepCollectionEquality().hash(pageNumber);

  @JsonKey(ignore: true)
  @override
  _$RequestMyCollectionModelCopyWith<_RequestMyCollectionModel> get copyWith =>
      __$RequestMyCollectionModelCopyWithImpl<_RequestMyCollectionModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_RequestMyCollectionModelToJson(this);
  }
}

abstract class _RequestMyCollectionModel implements RequestMyCollectionModel {
  const factory _RequestMyCollectionModel(
      {required int? type,
      dynamic category,
      int? pageSize,
      int? pageNumber}) = _$_RequestMyCollectionModel;

  factory _RequestMyCollectionModel.fromJson(Map<String, dynamic> json) =
      _$_RequestMyCollectionModel.fromJson;

  @override
  int? get type => throw _privateConstructorUsedError;
  @override
  dynamic get category => throw _privateConstructorUsedError;
  @override
  int? get pageSize => throw _privateConstructorUsedError;
  @override
  int? get pageNumber => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$RequestMyCollectionModelCopyWith<_RequestMyCollectionModel> get copyWith =>
      throw _privateConstructorUsedError;
}
