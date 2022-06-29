// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'request_trigger_rvm_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

RequestTriggerRVMModel _$RequestTriggerRVMModelFromJson(
    Map<String, dynamic> json) {
  return _RequestTriggerRVMModel.fromJson(json);
}

/// @nodoc
class _$RequestTriggerRVMModelTearOff {
  const _$RequestTriggerRVMModelTearOff();

  _RequestTriggerRVMModel call(
      {required String? inputFileS3Key, required String? outputFilename}) {
    return _RequestTriggerRVMModel(
      inputFileS3Key: inputFileS3Key,
      outputFilename: outputFilename,
    );
  }

  RequestTriggerRVMModel fromJson(Map<String, Object> json) {
    return RequestTriggerRVMModel.fromJson(json);
  }
}

/// @nodoc
const $RequestTriggerRVMModel = _$RequestTriggerRVMModelTearOff();

/// @nodoc
mixin _$RequestTriggerRVMModel {
  String? get inputFileS3Key => throw _privateConstructorUsedError;
  String? get outputFilename => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RequestTriggerRVMModelCopyWith<RequestTriggerRVMModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RequestTriggerRVMModelCopyWith<$Res> {
  factory $RequestTriggerRVMModelCopyWith(RequestTriggerRVMModel value,
          $Res Function(RequestTriggerRVMModel) then) =
      _$RequestTriggerRVMModelCopyWithImpl<$Res>;
  $Res call({String? inputFileS3Key, String? outputFilename});
}

/// @nodoc
class _$RequestTriggerRVMModelCopyWithImpl<$Res>
    implements $RequestTriggerRVMModelCopyWith<$Res> {
  _$RequestTriggerRVMModelCopyWithImpl(this._value, this._then);

  final RequestTriggerRVMModel _value;
  // ignore: unused_field
  final $Res Function(RequestTriggerRVMModel) _then;

  @override
  $Res call({
    Object? inputFileS3Key = freezed,
    Object? outputFilename = freezed,
  }) {
    return _then(_value.copyWith(
      inputFileS3Key: inputFileS3Key == freezed
          ? _value.inputFileS3Key
          : inputFileS3Key // ignore: cast_nullable_to_non_nullable
              as String?,
      outputFilename: outputFilename == freezed
          ? _value.outputFilename
          : outputFilename // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$RequestTriggerRVMModelCopyWith<$Res>
    implements $RequestTriggerRVMModelCopyWith<$Res> {
  factory _$RequestTriggerRVMModelCopyWith(_RequestTriggerRVMModel value,
          $Res Function(_RequestTriggerRVMModel) then) =
      __$RequestTriggerRVMModelCopyWithImpl<$Res>;
  @override
  $Res call({String? inputFileS3Key, String? outputFilename});
}

/// @nodoc
class __$RequestTriggerRVMModelCopyWithImpl<$Res>
    extends _$RequestTriggerRVMModelCopyWithImpl<$Res>
    implements _$RequestTriggerRVMModelCopyWith<$Res> {
  __$RequestTriggerRVMModelCopyWithImpl(_RequestTriggerRVMModel _value,
      $Res Function(_RequestTriggerRVMModel) _then)
      : super(_value, (v) => _then(v as _RequestTriggerRVMModel));

  @override
  _RequestTriggerRVMModel get _value => super._value as _RequestTriggerRVMModel;

  @override
  $Res call({
    Object? inputFileS3Key = freezed,
    Object? outputFilename = freezed,
  }) {
    return _then(_RequestTriggerRVMModel(
      inputFileS3Key: inputFileS3Key == freezed
          ? _value.inputFileS3Key
          : inputFileS3Key // ignore: cast_nullable_to_non_nullable
              as String?,
      outputFilename: outputFilename == freezed
          ? _value.outputFilename
          : outputFilename // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_RequestTriggerRVMModel implements _RequestTriggerRVMModel {
  const _$_RequestTriggerRVMModel(
      {required this.inputFileS3Key, required this.outputFilename});

  factory _$_RequestTriggerRVMModel.fromJson(Map<String, dynamic> json) =>
      _$_$_RequestTriggerRVMModelFromJson(json);

  @override
  final String? inputFileS3Key;
  @override
  final String? outputFilename;

  @override
  String toString() {
    return 'RequestTriggerRVMModel(inputFileS3Key: $inputFileS3Key, outputFilename: $outputFilename)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _RequestTriggerRVMModel &&
            (identical(other.inputFileS3Key, inputFileS3Key) ||
                const DeepCollectionEquality()
                    .equals(other.inputFileS3Key, inputFileS3Key)) &&
            (identical(other.outputFilename, outputFilename) ||
                const DeepCollectionEquality()
                    .equals(other.outputFilename, outputFilename)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(inputFileS3Key) ^
      const DeepCollectionEquality().hash(outputFilename);

  @JsonKey(ignore: true)
  @override
  _$RequestTriggerRVMModelCopyWith<_RequestTriggerRVMModel> get copyWith =>
      __$RequestTriggerRVMModelCopyWithImpl<_RequestTriggerRVMModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_RequestTriggerRVMModelToJson(this);
  }
}

abstract class _RequestTriggerRVMModel implements RequestTriggerRVMModel {
  const factory _RequestTriggerRVMModel(
      {required String? inputFileS3Key,
      required String? outputFilename}) = _$_RequestTriggerRVMModel;

  factory _RequestTriggerRVMModel.fromJson(Map<String, dynamic> json) =
      _$_RequestTriggerRVMModel.fromJson;

  @override
  String? get inputFileS3Key => throw _privateConstructorUsedError;
  @override
  String? get outputFilename => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$RequestTriggerRVMModelCopyWith<_RequestTriggerRVMModel> get copyWith =>
      throw _privateConstructorUsedError;
}
