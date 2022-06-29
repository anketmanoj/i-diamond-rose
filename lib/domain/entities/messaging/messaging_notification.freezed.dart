// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'messaging_notification.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MessagingNotification _$MessagingNotificationFromJson(
    Map<String, dynamic> json) {
  return _MessagingNotification.fromJson(json);
}

/// @nodoc
class _$MessagingNotificationTearOff {
  const _$MessagingNotificationTearOff();

  _MessagingNotification call({String? title, String? body}) {
    return _MessagingNotification(
      title: title,
      body: body,
    );
  }

  MessagingNotification fromJson(Map<String, Object> json) {
    return MessagingNotification.fromJson(json);
  }
}

/// @nodoc
const $MessagingNotification = _$MessagingNotificationTearOff();

/// @nodoc
mixin _$MessagingNotification {
  String? get title => throw _privateConstructorUsedError;
  String? get body => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MessagingNotificationCopyWith<MessagingNotification> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MessagingNotificationCopyWith<$Res> {
  factory $MessagingNotificationCopyWith(MessagingNotification value,
          $Res Function(MessagingNotification) then) =
      _$MessagingNotificationCopyWithImpl<$Res>;
  $Res call({String? title, String? body});
}

/// @nodoc
class _$MessagingNotificationCopyWithImpl<$Res>
    implements $MessagingNotificationCopyWith<$Res> {
  _$MessagingNotificationCopyWithImpl(this._value, this._then);

  final MessagingNotification _value;
  // ignore: unused_field
  final $Res Function(MessagingNotification) _then;

  @override
  $Res call({
    Object? title = freezed,
    Object? body = freezed,
  }) {
    return _then(_value.copyWith(
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      body: body == freezed
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$MessagingNotificationCopyWith<$Res>
    implements $MessagingNotificationCopyWith<$Res> {
  factory _$MessagingNotificationCopyWith(_MessagingNotification value,
          $Res Function(_MessagingNotification) then) =
      __$MessagingNotificationCopyWithImpl<$Res>;
  @override
  $Res call({String? title, String? body});
}

/// @nodoc
class __$MessagingNotificationCopyWithImpl<$Res>
    extends _$MessagingNotificationCopyWithImpl<$Res>
    implements _$MessagingNotificationCopyWith<$Res> {
  __$MessagingNotificationCopyWithImpl(_MessagingNotification _value,
      $Res Function(_MessagingNotification) _then)
      : super(_value, (v) => _then(v as _MessagingNotification));

  @override
  _MessagingNotification get _value => super._value as _MessagingNotification;

  @override
  $Res call({
    Object? title = freezed,
    Object? body = freezed,
  }) {
    return _then(_MessagingNotification(
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      body: body == freezed
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_MessagingNotification
    with DiagnosticableTreeMixin
    implements _MessagingNotification {
  const _$_MessagingNotification({this.title, this.body});

  factory _$_MessagingNotification.fromJson(Map<String, dynamic> json) =>
      _$_$_MessagingNotificationFromJson(json);

  @override
  final String? title;
  @override
  final String? body;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'MessagingNotification(title: $title, body: $body)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'MessagingNotification'))
      ..add(DiagnosticsProperty('title', title))
      ..add(DiagnosticsProperty('body', body));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _MessagingNotification &&
            (identical(other.title, title) ||
                const DeepCollectionEquality().equals(other.title, title)) &&
            (identical(other.body, body) ||
                const DeepCollectionEquality().equals(other.body, body)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(title) ^
      const DeepCollectionEquality().hash(body);

  @JsonKey(ignore: true)
  @override
  _$MessagingNotificationCopyWith<_MessagingNotification> get copyWith =>
      __$MessagingNotificationCopyWithImpl<_MessagingNotification>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_MessagingNotificationToJson(this);
  }
}

abstract class _MessagingNotification implements MessagingNotification {
  const factory _MessagingNotification({String? title, String? body}) =
      _$_MessagingNotification;

  factory _MessagingNotification.fromJson(Map<String, dynamic> json) =
      _$_MessagingNotification.fromJson;

  @override
  String? get title => throw _privateConstructorUsedError;
  @override
  String? get body => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$MessagingNotificationCopyWith<_MessagingNotification> get copyWith =>
      throw _privateConstructorUsedError;
}
