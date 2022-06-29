// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'messaging_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MessagingData _$MessagingDataFromJson(Map<String, dynamic> json) {
  return _MessagingData.fromJson(json);
}

/// @nodoc
class _$MessagingDataTearOff {
  const _$MessagingDataTearOff();

  _MessagingData call({String? notification_type}) {
    return _MessagingData(
      notification_type: notification_type,
    );
  }

  MessagingData fromJson(Map<String, Object> json) {
    return MessagingData.fromJson(json);
  }
}

/// @nodoc
const $MessagingData = _$MessagingDataTearOff();

/// @nodoc
mixin _$MessagingData {
  String? get notification_type => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MessagingDataCopyWith<MessagingData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MessagingDataCopyWith<$Res> {
  factory $MessagingDataCopyWith(
          MessagingData value, $Res Function(MessagingData) then) =
      _$MessagingDataCopyWithImpl<$Res>;
  $Res call({String? notification_type});
}

/// @nodoc
class _$MessagingDataCopyWithImpl<$Res>
    implements $MessagingDataCopyWith<$Res> {
  _$MessagingDataCopyWithImpl(this._value, this._then);

  final MessagingData _value;
  // ignore: unused_field
  final $Res Function(MessagingData) _then;

  @override
  $Res call({
    Object? notification_type = freezed,
  }) {
    return _then(_value.copyWith(
      notification_type: notification_type == freezed
          ? _value.notification_type
          : notification_type // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$MessagingDataCopyWith<$Res>
    implements $MessagingDataCopyWith<$Res> {
  factory _$MessagingDataCopyWith(
          _MessagingData value, $Res Function(_MessagingData) then) =
      __$MessagingDataCopyWithImpl<$Res>;
  @override
  $Res call({String? notification_type});
}

/// @nodoc
class __$MessagingDataCopyWithImpl<$Res>
    extends _$MessagingDataCopyWithImpl<$Res>
    implements _$MessagingDataCopyWith<$Res> {
  __$MessagingDataCopyWithImpl(
      _MessagingData _value, $Res Function(_MessagingData) _then)
      : super(_value, (v) => _then(v as _MessagingData));

  @override
  _MessagingData get _value => super._value as _MessagingData;

  @override
  $Res call({
    Object? notification_type = freezed,
  }) {
    return _then(_MessagingData(
      notification_type: notification_type == freezed
          ? _value.notification_type
          : notification_type // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_MessagingData implements _MessagingData {
  const _$_MessagingData({this.notification_type});

  factory _$_MessagingData.fromJson(Map<String, dynamic> json) =>
      _$_$_MessagingDataFromJson(json);

  @override
  final String? notification_type;

  @override
  String toString() {
    return 'MessagingData(notification_type: $notification_type)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _MessagingData &&
            (identical(other.notification_type, notification_type) ||
                const DeepCollectionEquality()
                    .equals(other.notification_type, notification_type)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(notification_type);

  @JsonKey(ignore: true)
  @override
  _$MessagingDataCopyWith<_MessagingData> get copyWith =>
      __$MessagingDataCopyWithImpl<_MessagingData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_MessagingDataToJson(this);
  }
}

abstract class _MessagingData implements MessagingData {
  const factory _MessagingData({String? notification_type}) = _$_MessagingData;

  factory _MessagingData.fromJson(Map<String, dynamic> json) =
      _$_MessagingData.fromJson;

  @override
  String? get notification_type => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$MessagingDataCopyWith<_MessagingData> get copyWith =>
      throw _privateConstructorUsedError;
}
