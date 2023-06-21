// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'employee.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Employee _$EmployeeFromJson(Map<String, dynamic> json) {
  return _Employee.fromJson(json);
}

/// @nodoc
mixin _$Employee {
  @JsonKey(includeFromJson: true, includeToJson: false)
  String get id => throw _privateConstructorUsedError;
  @JsonKey(includeFromJson: true, includeToJson: false)
  set id(String value) => throw _privateConstructorUsedError;
  String get firstName => throw _privateConstructorUsedError;
  set firstName(String value) => throw _privateConstructorUsedError;
  String get lastName => throw _privateConstructorUsedError;
  set lastName(String value) => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  set email(String value) => throw _privateConstructorUsedError;
  String get phone => throw _privateConstructorUsedError;
  set phone(String value) => throw _privateConstructorUsedError;
  String get calendarId => throw _privateConstructorUsedError;
  set calendarId(String value) => throw _privateConstructorUsedError;
  @JsonKey(includeFromJson: false, includeToJson: false)
  Calendar? get calendar => throw _privateConstructorUsedError;
  @JsonKey(includeFromJson: false, includeToJson: false)
  set calendar(Calendar? value) => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $EmployeeCopyWith<Employee> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EmployeeCopyWith<$Res> {
  factory $EmployeeCopyWith(Employee value, $Res Function(Employee) then) =
      _$EmployeeCopyWithImpl<$Res, Employee>;
  @useResult
  $Res call(
      {@JsonKey(includeFromJson: true, includeToJson: false)
          String id,
      String firstName,
      String lastName,
      String email,
      String phone,
      String calendarId,
      @JsonKey(includeFromJson: false, includeToJson: false)
          Calendar? calendar});

  $CalendarCopyWith<$Res>? get calendar;
}

/// @nodoc
class _$EmployeeCopyWithImpl<$Res, $Val extends Employee>
    implements $EmployeeCopyWith<$Res> {
  _$EmployeeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? firstName = null,
    Object? lastName = null,
    Object? email = null,
    Object? phone = null,
    Object? calendarId = null,
    Object? calendar = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      firstName: null == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String,
      lastName: null == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      phone: null == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
      calendarId: null == calendarId
          ? _value.calendarId
          : calendarId // ignore: cast_nullable_to_non_nullable
              as String,
      calendar: freezed == calendar
          ? _value.calendar
          : calendar // ignore: cast_nullable_to_non_nullable
              as Calendar?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CalendarCopyWith<$Res>? get calendar {
    if (_value.calendar == null) {
      return null;
    }

    return $CalendarCopyWith<$Res>(_value.calendar!, (value) {
      return _then(_value.copyWith(calendar: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_EmployeeCopyWith<$Res> implements $EmployeeCopyWith<$Res> {
  factory _$$_EmployeeCopyWith(
          _$_Employee value, $Res Function(_$_Employee) then) =
      __$$_EmployeeCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(includeFromJson: true, includeToJson: false)
          String id,
      String firstName,
      String lastName,
      String email,
      String phone,
      String calendarId,
      @JsonKey(includeFromJson: false, includeToJson: false)
          Calendar? calendar});

  @override
  $CalendarCopyWith<$Res>? get calendar;
}

/// @nodoc
class __$$_EmployeeCopyWithImpl<$Res>
    extends _$EmployeeCopyWithImpl<$Res, _$_Employee>
    implements _$$_EmployeeCopyWith<$Res> {
  __$$_EmployeeCopyWithImpl(
      _$_Employee _value, $Res Function(_$_Employee) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? firstName = null,
    Object? lastName = null,
    Object? email = null,
    Object? phone = null,
    Object? calendarId = null,
    Object? calendar = freezed,
  }) {
    return _then(_$_Employee(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      firstName: null == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String,
      lastName: null == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      phone: null == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
      calendarId: null == calendarId
          ? _value.calendarId
          : calendarId // ignore: cast_nullable_to_non_nullable
              as String,
      calendar: freezed == calendar
          ? _value.calendar
          : calendar // ignore: cast_nullable_to_non_nullable
              as Calendar?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Employee extends _Employee {
  _$_Employee(
      {@JsonKey(includeFromJson: true, includeToJson: false) required this.id,
      required this.firstName,
      required this.lastName,
      required this.email,
      required this.phone,
      required this.calendarId,
      @JsonKey(includeFromJson: false, includeToJson: false) this.calendar})
      : super._();

  factory _$_Employee.fromJson(Map<String, dynamic> json) =>
      _$$_EmployeeFromJson(json);

  @override
  @JsonKey(includeFromJson: true, includeToJson: false)
  String id;
  @override
  String firstName;
  @override
  String lastName;
  @override
  String email;
  @override
  String phone;
  @override
  String calendarId;
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  Calendar? calendar;

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_EmployeeCopyWith<_$_Employee> get copyWith =>
      __$$_EmployeeCopyWithImpl<_$_Employee>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_EmployeeToJson(
      this,
    );
  }
}

abstract class _Employee extends Employee {
  factory _Employee(
      {@JsonKey(includeFromJson: true, includeToJson: false)
          required String id,
      required String firstName,
      required String lastName,
      required String email,
      required String phone,
      required String calendarId,
      @JsonKey(includeFromJson: false, includeToJson: false)
          Calendar? calendar}) = _$_Employee;
  _Employee._() : super._();

  factory _Employee.fromJson(Map<String, dynamic> json) = _$_Employee.fromJson;

  @override
  @JsonKey(includeFromJson: true, includeToJson: false)
  String get id;
  @JsonKey(includeFromJson: true, includeToJson: false)
  set id(String value);
  @override
  String get firstName;
  set firstName(String value);
  @override
  String get lastName;
  set lastName(String value);
  @override
  String get email;
  set email(String value);
  @override
  String get phone;
  set phone(String value);
  @override
  String get calendarId;
  set calendarId(String value);
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  Calendar? get calendar;
  @JsonKey(includeFromJson: false, includeToJson: false)
  set calendar(Calendar? value);
  @override
  @JsonKey(ignore: true)
  _$$_EmployeeCopyWith<_$_Employee> get copyWith =>
      throw _privateConstructorUsedError;
}
