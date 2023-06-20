// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'calendar.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Calendar _$CalendarFromJson(Map<String, dynamic> json) {
  return _Calendar.fromJson(json);
}

/// @nodoc
mixin _$Calendar {
  String get id => throw _privateConstructorUsedError;
  set id(String value) => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  set name(String value) => throw _privateConstructorUsedError;
  String get ownerId => throw _privateConstructorUsedError;
  set ownerId(String value) => throw _privateConstructorUsedError;
  List<String> get calendarEventIds => throw _privateConstructorUsedError;
  set calendarEventIds(List<String> value) =>
      throw _privateConstructorUsedError;
  @JsonKey(includeFromJson: false, includeToJson: false)
  List<CalendarEvent> get calendarEvents => throw _privateConstructorUsedError;
  @JsonKey(includeFromJson: false, includeToJson: false)
  set calendarEvents(List<CalendarEvent> value) =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CalendarCopyWith<Calendar> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CalendarCopyWith<$Res> {
  factory $CalendarCopyWith(Calendar value, $Res Function(Calendar) then) =
      _$CalendarCopyWithImpl<$Res, Calendar>;
  @useResult
  $Res call(
      {String id,
      String name,
      String ownerId,
      List<String> calendarEventIds,
      @JsonKey(includeFromJson: false, includeToJson: false)
          List<CalendarEvent> calendarEvents});
}

/// @nodoc
class _$CalendarCopyWithImpl<$Res, $Val extends Calendar>
    implements $CalendarCopyWith<$Res> {
  _$CalendarCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? ownerId = null,
    Object? calendarEventIds = null,
    Object? calendarEvents = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      ownerId: null == ownerId
          ? _value.ownerId
          : ownerId // ignore: cast_nullable_to_non_nullable
              as String,
      calendarEventIds: null == calendarEventIds
          ? _value.calendarEventIds
          : calendarEventIds // ignore: cast_nullable_to_non_nullable
              as List<String>,
      calendarEvents: null == calendarEvents
          ? _value.calendarEvents
          : calendarEvents // ignore: cast_nullable_to_non_nullable
              as List<CalendarEvent>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CalendarCopyWith<$Res> implements $CalendarCopyWith<$Res> {
  factory _$$_CalendarCopyWith(
          _$_Calendar value, $Res Function(_$_Calendar) then) =
      __$$_CalendarCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String name,
      String ownerId,
      List<String> calendarEventIds,
      @JsonKey(includeFromJson: false, includeToJson: false)
          List<CalendarEvent> calendarEvents});
}

/// @nodoc
class __$$_CalendarCopyWithImpl<$Res>
    extends _$CalendarCopyWithImpl<$Res, _$_Calendar>
    implements _$$_CalendarCopyWith<$Res> {
  __$$_CalendarCopyWithImpl(
      _$_Calendar _value, $Res Function(_$_Calendar) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? ownerId = null,
    Object? calendarEventIds = null,
    Object? calendarEvents = null,
  }) {
    return _then(_$_Calendar(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      ownerId: null == ownerId
          ? _value.ownerId
          : ownerId // ignore: cast_nullable_to_non_nullable
              as String,
      calendarEventIds: null == calendarEventIds
          ? _value.calendarEventIds
          : calendarEventIds // ignore: cast_nullable_to_non_nullable
              as List<String>,
      calendarEvents: null == calendarEvents
          ? _value.calendarEvents
          : calendarEvents // ignore: cast_nullable_to_non_nullable
              as List<CalendarEvent>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Calendar extends _Calendar {
  _$_Calendar(
      {required this.id,
      required this.name,
      required this.ownerId,
      required this.calendarEventIds,
      @JsonKey(includeFromJson: false, includeToJson: false)
          this.calendarEvents = const []})
      : super._();

  factory _$_Calendar.fromJson(Map<String, dynamic> json) =>
      _$$_CalendarFromJson(json);

  @override
  String id;
  @override
  String name;
  @override
  String ownerId;
  @override
  List<String> calendarEventIds;
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  List<CalendarEvent> calendarEvents;

  @override
  String toString() {
    return 'Calendar(id: $id, name: $name, ownerId: $ownerId, calendarEventIds: $calendarEventIds, calendarEvents: $calendarEvents)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CalendarCopyWith<_$_Calendar> get copyWith =>
      __$$_CalendarCopyWithImpl<_$_Calendar>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CalendarToJson(
      this,
    );
  }
}

abstract class _Calendar extends Calendar {
  factory _Calendar(
      {required String id,
      required String name,
      required String ownerId,
      required List<String> calendarEventIds,
      @JsonKey(includeFromJson: false, includeToJson: false)
          List<CalendarEvent> calendarEvents}) = _$_Calendar;
  _Calendar._() : super._();

  factory _Calendar.fromJson(Map<String, dynamic> json) = _$_Calendar.fromJson;

  @override
  String get id;
  set id(String value);
  @override
  String get name;
  set name(String value);
  @override
  String get ownerId;
  set ownerId(String value);
  @override
  List<String> get calendarEventIds;
  set calendarEventIds(List<String> value);
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  List<CalendarEvent> get calendarEvents;
  @JsonKey(includeFromJson: false, includeToJson: false)
  set calendarEvents(List<CalendarEvent> value);
  @override
  @JsonKey(ignore: true)
  _$$_CalendarCopyWith<_$_Calendar> get copyWith =>
      throw _privateConstructorUsedError;
}
