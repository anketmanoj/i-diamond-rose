// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'messaging.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Messaging _$MessagingFromJson(Map<String, dynamic> json) {
  return _Messaging.fromJson(json);
}

/// @nodoc
class _$MessagingTearOff {
  const _$MessagingTearOff();

  _Messaging call(
      {@JsonKey(fromJson: _parseNotification)
          MessagingNotification? notification,
      @JsonKey(fromJson: _parseData)
          MessagingData? data}) {
    return _Messaging(
      notification: notification,
      data: data,
    );
  }

  Messaging fromJson(Map<String, Object> json) {
    return Messaging.fromJson(json);
  }
}

/// @nodoc
const $Messaging = _$MessagingTearOff();

/// @nodoc
mixin _$Messaging {
  @JsonKey(fromJson: _parseNotification)
  MessagingNotification? get notification => throw _privateConstructorUsedError;
  @JsonKey(fromJson: _parseData)
  MessagingData? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MessagingCopyWith<Messaging> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MessagingCopyWith<$Res> {
  factory $MessagingCopyWith(Messaging value, $Res Function(Messaging) then) =
      _$MessagingCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(fromJson: _parseNotification)
          MessagingNotification? notification,
      @JsonKey(fromJson: _parseData)
          MessagingData? data});

  $MessagingNotificationCopyWith<$Res>? get notification;
  $MessagingDataCopyWith<$Res>? get data;
}

/// @nodoc
class _$MessagingCopyWithImpl<$Res> implements $MessagingCopyWith<$Res> {
  _$MessagingCopyWithImpl(this._value, this._then);

  final Messaging _value;
  // ignore: unused_field
  final $Res Function(Messaging) _then;

  @override
  $Res call({
    Object? notification = freezed,
    Object? data = freezed,
  }) {
    return _then(_value.copyWith(
      notification: notification == freezed
          ? _value.notification
          : notification // ignore: cast_nullable_to_non_nullable
              as MessagingNotification?,
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as MessagingData?,
    ));
  }

  @override
  $MessagingNotificationCopyWith<$Res>? get notification {
    if (_value.notification == null) {
      return null;
    }

    return $MessagingNotificationCopyWith<$Res>(_value.notification!, (value) {
      return _then(_value.copyWith(notification: value));
    });
  }

  @override
  $MessagingDataCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $MessagingDataCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value));
    });
  }
}

/// @nodoc
abstract class _$MessagingCopyWith<$Res> implements $MessagingCopyWith<$Res> {
  factory _$MessagingCopyWith(
          _Messaging value, $Res Function(_Messaging) then) =
      __$MessagingCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(fromJson: _parseNotification)
          MessagingNotification? notification,
      @JsonKey(fromJson: _parseData)
          MessagingData? data});

  @override
  $MessagingNotificationCopyWith<$Res>? get notification;
  @override
  $MessagingDataCopyWith<$Res>? get data;
}

/// @nodoc
class __$MessagingCopyWithImpl<$Res> extends _$MessagingCopyWithImpl<$Res>
    implements _$MessagingCopyWith<$Res> {
  __$MessagingCopyWithImpl(_Messaging _value, $Res Function(_Messaging) _then)
      : super(_value, (v) => _then(v as _Messaging));

  @override
  _Messaging get _value => super._value as _Messaging;

  @override
  $Res call({
    Object? notification = freezed,
    Object? data = freezed,
  }) {
    return _then(_Messaging(
      notification: notification == freezed
          ? _value.notification
          : notification // ignore: cast_nullable_to_non_nullable
              as MessagingNotification?,
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as MessagingData?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Messaging implements _Messaging {
  const _$_Messaging(
      {@JsonKey(fromJson: _parseNotification) this.notification,
      @JsonKey(fromJson: _parseData) this.data});

  factory _$_Messaging.fromJson(Map<String, dynamic> json) =>
      _$_$_MessagingFromJson(json);

  @override
  @JsonKey(fromJson: _parseNotification)
  final MessagingNotification? notification;
  @override
  @JsonKey(fromJson: _parseData)
  final MessagingData? data;

  @override
  String toString() {
    return 'Messaging(notification: $notification, data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Messaging &&
            (identical(other.notification, notification) ||
                const DeepCollectionEquality()
                    .equals(other.notification, notification)) &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(notification) ^
      const DeepCollectionEquality().hash(data);

  @JsonKey(ignore: true)
  @override
  _$MessagingCopyWith<_Messaging> get copyWith =>
      __$MessagingCopyWithImpl<_Messaging>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_MessagingToJson(this);
  }
}

abstract class _Messaging implements Messaging {
  const factory _Messaging(
      {@JsonKey(fromJson: _parseNotification)
          MessagingNotification? notification,
      @JsonKey(fromJson: _parseData)
          MessagingData? data}) = _$_Messaging;

  factory _Messaging.fromJson(Map<String, dynamic> json) =
      _$_Messaging.fromJson;

  @override
  @JsonKey(fromJson: _parseNotification)
  MessagingNotification? get notification => throw _privateConstructorUsedError;
  @override
  @JsonKey(fromJson: _parseData)
  MessagingData? get data => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$MessagingCopyWith<_Messaging> get copyWith =>
      throw _privateConstructorUsedError;
}
