// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'time.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

OpeningHours _$OpeningHoursFromJson(Map<String, dynamic> json) {
  return _OpeningHours.fromJson(json);
}

/// @nodoc
mixin _$OpeningHours {
  List<OpeningHoursDay> get days => throw _privateConstructorUsedError;
  set days(List<OpeningHoursDay> value) => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OpeningHoursCopyWith<OpeningHours> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OpeningHoursCopyWith<$Res> {
  factory $OpeningHoursCopyWith(
          OpeningHours value, $Res Function(OpeningHours) then) =
      _$OpeningHoursCopyWithImpl<$Res, OpeningHours>;
  @useResult
  $Res call({List<OpeningHoursDay> days});
}

/// @nodoc
class _$OpeningHoursCopyWithImpl<$Res, $Val extends OpeningHours>
    implements $OpeningHoursCopyWith<$Res> {
  _$OpeningHoursCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? days = null,
  }) {
    return _then(_value.copyWith(
      days: null == days
          ? _value.days
          : days // ignore: cast_nullable_to_non_nullable
              as List<OpeningHoursDay>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_OpeningHoursCopyWith<$Res>
    implements $OpeningHoursCopyWith<$Res> {
  factory _$$_OpeningHoursCopyWith(
          _$_OpeningHours value, $Res Function(_$_OpeningHours) then) =
      __$$_OpeningHoursCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<OpeningHoursDay> days});
}

/// @nodoc
class __$$_OpeningHoursCopyWithImpl<$Res>
    extends _$OpeningHoursCopyWithImpl<$Res, _$_OpeningHours>
    implements _$$_OpeningHoursCopyWith<$Res> {
  __$$_OpeningHoursCopyWithImpl(
      _$_OpeningHours _value, $Res Function(_$_OpeningHours) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? days = null,
  }) {
    return _then(_$_OpeningHours(
      days: null == days
          ? _value.days
          : days // ignore: cast_nullable_to_non_nullable
              as List<OpeningHoursDay>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_OpeningHours extends _OpeningHours {
  _$_OpeningHours({required this.days}) : super._();

  factory _$_OpeningHours.fromJson(Map<String, dynamic> json) =>
      _$$_OpeningHoursFromJson(json);

  @override
  List<OpeningHoursDay> days;

  @override
  String toString() {
    return 'OpeningHours(days: $days)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_OpeningHoursCopyWith<_$_OpeningHours> get copyWith =>
      __$$_OpeningHoursCopyWithImpl<_$_OpeningHours>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_OpeningHoursToJson(
      this,
    );
  }
}

abstract class _OpeningHours extends OpeningHours {
  factory _OpeningHours({required List<OpeningHoursDay> days}) =
      _$_OpeningHours;
  _OpeningHours._() : super._();

  factory _OpeningHours.fromJson(Map<String, dynamic> json) =
      _$_OpeningHours.fromJson;

  @override
  List<OpeningHoursDay> get days;
  set days(List<OpeningHoursDay> value);
  @override
  @JsonKey(ignore: true)
  _$$_OpeningHoursCopyWith<_$_OpeningHours> get copyWith =>
      throw _privateConstructorUsedError;
}

OpeningHoursDay _$OpeningHoursDayFromJson(Map<String, dynamic> json) {
  return _OpeningHoursDay.fromJson(json);
}

/// @nodoc
mixin _$OpeningHoursDay {
  String get open => throw _privateConstructorUsedError;
  set open(String value) => throw _privateConstructorUsedError;
  String get close => throw _privateConstructorUsedError;
  set close(String value) => throw _privateConstructorUsedError;
  int get day => throw _privateConstructorUsedError;
  set day(int value) => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OpeningHoursDayCopyWith<OpeningHoursDay> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OpeningHoursDayCopyWith<$Res> {
  factory $OpeningHoursDayCopyWith(
          OpeningHoursDay value, $Res Function(OpeningHoursDay) then) =
      _$OpeningHoursDayCopyWithImpl<$Res, OpeningHoursDay>;
  @useResult
  $Res call({String open, String close, int day});
}

/// @nodoc
class _$OpeningHoursDayCopyWithImpl<$Res, $Val extends OpeningHoursDay>
    implements $OpeningHoursDayCopyWith<$Res> {
  _$OpeningHoursDayCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? open = null,
    Object? close = null,
    Object? day = null,
  }) {
    return _then(_value.copyWith(
      open: null == open
          ? _value.open
          : open // ignore: cast_nullable_to_non_nullable
              as String,
      close: null == close
          ? _value.close
          : close // ignore: cast_nullable_to_non_nullable
              as String,
      day: null == day
          ? _value.day
          : day // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_OpeningHoursDayCopyWith<$Res>
    implements $OpeningHoursDayCopyWith<$Res> {
  factory _$$_OpeningHoursDayCopyWith(
          _$_OpeningHoursDay value, $Res Function(_$_OpeningHoursDay) then) =
      __$$_OpeningHoursDayCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String open, String close, int day});
}

/// @nodoc
class __$$_OpeningHoursDayCopyWithImpl<$Res>
    extends _$OpeningHoursDayCopyWithImpl<$Res, _$_OpeningHoursDay>
    implements _$$_OpeningHoursDayCopyWith<$Res> {
  __$$_OpeningHoursDayCopyWithImpl(
      _$_OpeningHoursDay _value, $Res Function(_$_OpeningHoursDay) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? open = null,
    Object? close = null,
    Object? day = null,
  }) {
    return _then(_$_OpeningHoursDay(
      open: null == open
          ? _value.open
          : open // ignore: cast_nullable_to_non_nullable
              as String,
      close: null == close
          ? _value.close
          : close // ignore: cast_nullable_to_non_nullable
              as String,
      day: null == day
          ? _value.day
          : day // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_OpeningHoursDay extends _OpeningHoursDay {
  _$_OpeningHoursDay(
      {required this.open, required this.close, required this.day})
      : super._();

  factory _$_OpeningHoursDay.fromJson(Map<String, dynamic> json) =>
      _$$_OpeningHoursDayFromJson(json);

  @override
  String open;
  @override
  String close;
  @override
  int day;

  @override
  String toString() {
    return 'OpeningHoursDay(open: $open, close: $close, day: $day)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_OpeningHoursDayCopyWith<_$_OpeningHoursDay> get copyWith =>
      __$$_OpeningHoursDayCopyWithImpl<_$_OpeningHoursDay>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_OpeningHoursDayToJson(
      this,
    );
  }
}

abstract class _OpeningHoursDay extends OpeningHoursDay {
  factory _OpeningHoursDay(
      {required String open,
      required String close,
      required int day}) = _$_OpeningHoursDay;
  _OpeningHoursDay._() : super._();

  factory _OpeningHoursDay.fromJson(Map<String, dynamic> json) =
      _$_OpeningHoursDay.fromJson;

  @override
  String get open;
  set open(String value);
  @override
  String get close;
  set close(String value);
  @override
  int get day;
  set day(int value);
  @override
  @JsonKey(ignore: true)
  _$$_OpeningHoursDayCopyWith<_$_OpeningHoursDay> get copyWith =>
      throw _privateConstructorUsedError;
}
