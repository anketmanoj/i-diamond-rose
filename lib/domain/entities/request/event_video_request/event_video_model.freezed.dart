// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'event_video_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

EventVideoModel _$EventVideoModelFromJson(Map<String, dynamic> json) {
  return _EventVideoModel.fromJson(json);
}

/// @nodoc
class _$EventVideoModelTearOff {
  const _$EventVideoModelTearOff();

  _EventVideoModel call({int id = 0, int videoId = 0, int count = 0}) {
    return _EventVideoModel(
      id: id,
      videoId: videoId,
      count: count,
    );
  }

  EventVideoModel fromJson(Map<String, Object> json) {
    return EventVideoModel.fromJson(json);
  }
}

/// @nodoc
const $EventVideoModel = _$EventVideoModelTearOff();

/// @nodoc
mixin _$EventVideoModel {
  int get id => throw _privateConstructorUsedError;
  int get videoId => throw _privateConstructorUsedError;
  int get count => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $EventVideoModelCopyWith<EventVideoModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EventVideoModelCopyWith<$Res> {
  factory $EventVideoModelCopyWith(
          EventVideoModel value, $Res Function(EventVideoModel) then) =
      _$EventVideoModelCopyWithImpl<$Res>;
  $Res call({int id, int videoId, int count});
}

/// @nodoc
class _$EventVideoModelCopyWithImpl<$Res>
    implements $EventVideoModelCopyWith<$Res> {
  _$EventVideoModelCopyWithImpl(this._value, this._then);

  final EventVideoModel _value;
  // ignore: unused_field
  final $Res Function(EventVideoModel) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? videoId = freezed,
    Object? count = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      videoId: videoId == freezed
          ? _value.videoId
          : videoId // ignore: cast_nullable_to_non_nullable
              as int,
      count: count == freezed
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$EventVideoModelCopyWith<$Res>
    implements $EventVideoModelCopyWith<$Res> {
  factory _$EventVideoModelCopyWith(
          _EventVideoModel value, $Res Function(_EventVideoModel) then) =
      __$EventVideoModelCopyWithImpl<$Res>;
  @override
  $Res call({int id, int videoId, int count});
}

/// @nodoc
class __$EventVideoModelCopyWithImpl<$Res>
    extends _$EventVideoModelCopyWithImpl<$Res>
    implements _$EventVideoModelCopyWith<$Res> {
  __$EventVideoModelCopyWithImpl(
      _EventVideoModel _value, $Res Function(_EventVideoModel) _then)
      : super(_value, (v) => _then(v as _EventVideoModel));

  @override
  _EventVideoModel get _value => super._value as _EventVideoModel;

  @override
  $Res call({
    Object? id = freezed,
    Object? videoId = freezed,
    Object? count = freezed,
  }) {
    return _then(_EventVideoModel(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      videoId: videoId == freezed
          ? _value.videoId
          : videoId // ignore: cast_nullable_to_non_nullable
              as int,
      count: count == freezed
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_EventVideoModel implements _EventVideoModel {
  const _$_EventVideoModel({this.id = 0, this.videoId = 0, this.count = 0});

  factory _$_EventVideoModel.fromJson(Map<String, dynamic> json) =>
      _$_$_EventVideoModelFromJson(json);

  @JsonKey(defaultValue: 0)
  @override
  final int id;
  @JsonKey(defaultValue: 0)
  @override
  final int videoId;
  @JsonKey(defaultValue: 0)
  @override
  final int count;

  @override
  String toString() {
    return 'EventVideoModel(id: $id, videoId: $videoId, count: $count)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _EventVideoModel &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.videoId, videoId) ||
                const DeepCollectionEquality()
                    .equals(other.videoId, videoId)) &&
            (identical(other.count, count) ||
                const DeepCollectionEquality().equals(other.count, count)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(videoId) ^
      const DeepCollectionEquality().hash(count);

  @JsonKey(ignore: true)
  @override
  _$EventVideoModelCopyWith<_EventVideoModel> get copyWith =>
      __$EventVideoModelCopyWithImpl<_EventVideoModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_EventVideoModelToJson(this);
  }
}

abstract class _EventVideoModel implements EventVideoModel {
  const factory _EventVideoModel({int id, int videoId, int count}) =
      _$_EventVideoModel;

  factory _EventVideoModel.fromJson(Map<String, dynamic> json) =
      _$_EventVideoModel.fromJson;

  @override
  int get id => throw _privateConstructorUsedError;
  @override
  int get videoId => throw _privateConstructorUsedError;
  @override
  int get count => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$EventVideoModelCopyWith<_EventVideoModel> get copyWith =>
      throw _privateConstructorUsedError;
}
