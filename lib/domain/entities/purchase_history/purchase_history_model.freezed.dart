// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'purchase_history_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PurchaseHistoryModel _$PurchaseHistoryModelFromJson(Map<String, dynamic> json) {
  return _PurchaseHistoryModel.fromJson(json);
}

/// @nodoc
class _$PurchaseHistoryModelTearOff {
  const _$PurchaseHistoryModelTearOff();

  _PurchaseHistoryModel call(
      {PurchaseHistory? purchaseHistory,
      VideoDTOEntity? video,
      VideoSettingEntity? videoSetting}) {
    return _PurchaseHistoryModel(
      purchaseHistory: purchaseHistory,
      video: video,
      videoSetting: videoSetting,
    );
  }

  PurchaseHistoryModel fromJson(Map<String, Object> json) {
    return PurchaseHistoryModel.fromJson(json);
  }
}

/// @nodoc
const $PurchaseHistoryModel = _$PurchaseHistoryModelTearOff();

/// @nodoc
mixin _$PurchaseHistoryModel {
  PurchaseHistory? get purchaseHistory => throw _privateConstructorUsedError;
  VideoDTOEntity? get video => throw _privateConstructorUsedError;
  VideoSettingEntity? get videoSetting => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PurchaseHistoryModelCopyWith<PurchaseHistoryModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PurchaseHistoryModelCopyWith<$Res> {
  factory $PurchaseHistoryModelCopyWith(PurchaseHistoryModel value,
          $Res Function(PurchaseHistoryModel) then) =
      _$PurchaseHistoryModelCopyWithImpl<$Res>;
  $Res call(
      {PurchaseHistory? purchaseHistory,
      VideoDTOEntity? video,
      VideoSettingEntity? videoSetting});

  $PurchaseHistoryCopyWith<$Res>? get purchaseHistory;
  $VideoDTOEntityCopyWith<$Res>? get video;
  $VideoSettingEntityCopyWith<$Res>? get videoSetting;
}

/// @nodoc
class _$PurchaseHistoryModelCopyWithImpl<$Res>
    implements $PurchaseHistoryModelCopyWith<$Res> {
  _$PurchaseHistoryModelCopyWithImpl(this._value, this._then);

  final PurchaseHistoryModel _value;
  // ignore: unused_field
  final $Res Function(PurchaseHistoryModel) _then;

  @override
  $Res call({
    Object? purchaseHistory = freezed,
    Object? video = freezed,
    Object? videoSetting = freezed,
  }) {
    return _then(_value.copyWith(
      purchaseHistory: purchaseHistory == freezed
          ? _value.purchaseHistory
          : purchaseHistory // ignore: cast_nullable_to_non_nullable
              as PurchaseHistory?,
      video: video == freezed
          ? _value.video
          : video // ignore: cast_nullable_to_non_nullable
              as VideoDTOEntity?,
      videoSetting: videoSetting == freezed
          ? _value.videoSetting
          : videoSetting // ignore: cast_nullable_to_non_nullable
              as VideoSettingEntity?,
    ));
  }

  @override
  $PurchaseHistoryCopyWith<$Res>? get purchaseHistory {
    if (_value.purchaseHistory == null) {
      return null;
    }

    return $PurchaseHistoryCopyWith<$Res>(_value.purchaseHistory!, (value) {
      return _then(_value.copyWith(purchaseHistory: value));
    });
  }

  @override
  $VideoDTOEntityCopyWith<$Res>? get video {
    if (_value.video == null) {
      return null;
    }

    return $VideoDTOEntityCopyWith<$Res>(_value.video!, (value) {
      return _then(_value.copyWith(video: value));
    });
  }

  @override
  $VideoSettingEntityCopyWith<$Res>? get videoSetting {
    if (_value.videoSetting == null) {
      return null;
    }

    return $VideoSettingEntityCopyWith<$Res>(_value.videoSetting!, (value) {
      return _then(_value.copyWith(videoSetting: value));
    });
  }
}

/// @nodoc
abstract class _$PurchaseHistoryModelCopyWith<$Res>
    implements $PurchaseHistoryModelCopyWith<$Res> {
  factory _$PurchaseHistoryModelCopyWith(_PurchaseHistoryModel value,
          $Res Function(_PurchaseHistoryModel) then) =
      __$PurchaseHistoryModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {PurchaseHistory? purchaseHistory,
      VideoDTOEntity? video,
      VideoSettingEntity? videoSetting});

  @override
  $PurchaseHistoryCopyWith<$Res>? get purchaseHistory;
  @override
  $VideoDTOEntityCopyWith<$Res>? get video;
  @override
  $VideoSettingEntityCopyWith<$Res>? get videoSetting;
}

/// @nodoc
class __$PurchaseHistoryModelCopyWithImpl<$Res>
    extends _$PurchaseHistoryModelCopyWithImpl<$Res>
    implements _$PurchaseHistoryModelCopyWith<$Res> {
  __$PurchaseHistoryModelCopyWithImpl(
      _PurchaseHistoryModel _value, $Res Function(_PurchaseHistoryModel) _then)
      : super(_value, (v) => _then(v as _PurchaseHistoryModel));

  @override
  _PurchaseHistoryModel get _value => super._value as _PurchaseHistoryModel;

  @override
  $Res call({
    Object? purchaseHistory = freezed,
    Object? video = freezed,
    Object? videoSetting = freezed,
  }) {
    return _then(_PurchaseHistoryModel(
      purchaseHistory: purchaseHistory == freezed
          ? _value.purchaseHistory
          : purchaseHistory // ignore: cast_nullable_to_non_nullable
              as PurchaseHistory?,
      video: video == freezed
          ? _value.video
          : video // ignore: cast_nullable_to_non_nullable
              as VideoDTOEntity?,
      videoSetting: videoSetting == freezed
          ? _value.videoSetting
          : videoSetting // ignore: cast_nullable_to_non_nullable
              as VideoSettingEntity?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PurchaseHistoryModel implements _PurchaseHistoryModel {
  const _$_PurchaseHistoryModel(
      {this.purchaseHistory, this.video, this.videoSetting});

  factory _$_PurchaseHistoryModel.fromJson(Map<String, dynamic> json) =>
      _$_$_PurchaseHistoryModelFromJson(json);

  @override
  final PurchaseHistory? purchaseHistory;
  @override
  final VideoDTOEntity? video;
  @override
  final VideoSettingEntity? videoSetting;

  @override
  String toString() {
    return 'PurchaseHistoryModel(purchaseHistory: $purchaseHistory, video: $video, videoSetting: $videoSetting)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _PurchaseHistoryModel &&
            (identical(other.purchaseHistory, purchaseHistory) ||
                const DeepCollectionEquality()
                    .equals(other.purchaseHistory, purchaseHistory)) &&
            (identical(other.video, video) ||
                const DeepCollectionEquality().equals(other.video, video)) &&
            (identical(other.videoSetting, videoSetting) ||
                const DeepCollectionEquality()
                    .equals(other.videoSetting, videoSetting)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(purchaseHistory) ^
      const DeepCollectionEquality().hash(video) ^
      const DeepCollectionEquality().hash(videoSetting);

  @JsonKey(ignore: true)
  @override
  _$PurchaseHistoryModelCopyWith<_PurchaseHistoryModel> get copyWith =>
      __$PurchaseHistoryModelCopyWithImpl<_PurchaseHistoryModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_PurchaseHistoryModelToJson(this);
  }
}

abstract class _PurchaseHistoryModel implements PurchaseHistoryModel {
  const factory _PurchaseHistoryModel(
      {PurchaseHistory? purchaseHistory,
      VideoDTOEntity? video,
      VideoSettingEntity? videoSetting}) = _$_PurchaseHistoryModel;

  factory _PurchaseHistoryModel.fromJson(Map<String, dynamic> json) =
      _$_PurchaseHistoryModel.fromJson;

  @override
  PurchaseHistory? get purchaseHistory => throw _privateConstructorUsedError;
  @override
  VideoDTOEntity? get video => throw _privateConstructorUsedError;
  @override
  VideoSettingEntity? get videoSetting => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$PurchaseHistoryModelCopyWith<_PurchaseHistoryModel> get copyWith =>
      throw _privateConstructorUsedError;
}
