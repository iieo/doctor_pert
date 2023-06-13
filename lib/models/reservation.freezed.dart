// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'reservation.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Reservation _$ReservationFromJson(Map<String, dynamic> json) {
  return _Reservation.fromJson(json);
}

/// @nodoc
mixin _$Reservation {
  String get id => throw _privateConstructorUsedError;
  set id(String value) => throw _privateConstructorUsedError;
  String get userId => throw _privateConstructorUsedError;
  set userId(String value) => throw _privateConstructorUsedError;
  String get eventId => throw _privateConstructorUsedError;
  set eventId(String value) => throw _privateConstructorUsedError;
  String get doctorId => throw _privateConstructorUsedError;
  set doctorId(String value) => throw _privateConstructorUsedError;
  String get workerId => throw _privateConstructorUsedError;
  set workerId(String value) => throw _privateConstructorUsedError;
  String get note => throw _privateConstructorUsedError;
  set note(String value) => throw _privateConstructorUsedError;
  Person get patient => throw _privateConstructorUsedError;
  set patient(Person value) => throw _privateConstructorUsedError;
  ReservationStatus get status => throw _privateConstructorUsedError;
  set status(ReservationStatus value) => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ReservationCopyWith<Reservation> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReservationCopyWith<$Res> {
  factory $ReservationCopyWith(
          Reservation value, $Res Function(Reservation) then) =
      _$ReservationCopyWithImpl<$Res, Reservation>;
  @useResult
  $Res call(
      {String id,
      String userId,
      String eventId,
      String doctorId,
      String workerId,
      String note,
      Person patient,
      ReservationStatus status});

  $PersonCopyWith<$Res> get patient;
}

/// @nodoc
class _$ReservationCopyWithImpl<$Res, $Val extends Reservation>
    implements $ReservationCopyWith<$Res> {
  _$ReservationCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? userId = null,
    Object? eventId = null,
    Object? doctorId = null,
    Object? workerId = null,
    Object? note = null,
    Object? patient = null,
    Object? status = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      eventId: null == eventId
          ? _value.eventId
          : eventId // ignore: cast_nullable_to_non_nullable
              as String,
      doctorId: null == doctorId
          ? _value.doctorId
          : doctorId // ignore: cast_nullable_to_non_nullable
              as String,
      workerId: null == workerId
          ? _value.workerId
          : workerId // ignore: cast_nullable_to_non_nullable
              as String,
      note: null == note
          ? _value.note
          : note // ignore: cast_nullable_to_non_nullable
              as String,
      patient: null == patient
          ? _value.patient
          : patient // ignore: cast_nullable_to_non_nullable
              as Person,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as ReservationStatus,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $PersonCopyWith<$Res> get patient {
    return $PersonCopyWith<$Res>(_value.patient, (value) {
      return _then(_value.copyWith(patient: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_ReservationCopyWith<$Res>
    implements $ReservationCopyWith<$Res> {
  factory _$$_ReservationCopyWith(
          _$_Reservation value, $Res Function(_$_Reservation) then) =
      __$$_ReservationCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String userId,
      String eventId,
      String doctorId,
      String workerId,
      String note,
      Person patient,
      ReservationStatus status});

  @override
  $PersonCopyWith<$Res> get patient;
}

/// @nodoc
class __$$_ReservationCopyWithImpl<$Res>
    extends _$ReservationCopyWithImpl<$Res, _$_Reservation>
    implements _$$_ReservationCopyWith<$Res> {
  __$$_ReservationCopyWithImpl(
      _$_Reservation _value, $Res Function(_$_Reservation) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? userId = null,
    Object? eventId = null,
    Object? doctorId = null,
    Object? workerId = null,
    Object? note = null,
    Object? patient = null,
    Object? status = null,
  }) {
    return _then(_$_Reservation(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      eventId: null == eventId
          ? _value.eventId
          : eventId // ignore: cast_nullable_to_non_nullable
              as String,
      doctorId: null == doctorId
          ? _value.doctorId
          : doctorId // ignore: cast_nullable_to_non_nullable
              as String,
      workerId: null == workerId
          ? _value.workerId
          : workerId // ignore: cast_nullable_to_non_nullable
              as String,
      note: null == note
          ? _value.note
          : note // ignore: cast_nullable_to_non_nullable
              as String,
      patient: null == patient
          ? _value.patient
          : patient // ignore: cast_nullable_to_non_nullable
              as Person,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as ReservationStatus,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Reservation implements _Reservation {
  _$_Reservation(
      {required this.id,
      required this.userId,
      required this.eventId,
      required this.doctorId,
      required this.workerId,
      required this.note,
      required this.patient,
      required this.status});

  factory _$_Reservation.fromJson(Map<String, dynamic> json) =>
      _$$_ReservationFromJson(json);

  @override
  String id;
  @override
  String userId;
  @override
  String eventId;
  @override
  String doctorId;
  @override
  String workerId;
  @override
  String note;
  @override
  Person patient;
  @override
  ReservationStatus status;

  @override
  String toString() {
    return 'Reservation(id: $id, userId: $userId, eventId: $eventId, doctorId: $doctorId, workerId: $workerId, note: $note, patient: $patient, status: $status)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ReservationCopyWith<_$_Reservation> get copyWith =>
      __$$_ReservationCopyWithImpl<_$_Reservation>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ReservationToJson(
      this,
    );
  }
}

abstract class _Reservation implements Reservation {
  factory _Reservation(
      {required String id,
      required String userId,
      required String eventId,
      required String doctorId,
      required String workerId,
      required String note,
      required Person patient,
      required ReservationStatus status}) = _$_Reservation;

  factory _Reservation.fromJson(Map<String, dynamic> json) =
      _$_Reservation.fromJson;

  @override
  String get id;
  set id(String value);
  @override
  String get userId;
  set userId(String value);
  @override
  String get eventId;
  set eventId(String value);
  @override
  String get doctorId;
  set doctorId(String value);
  @override
  String get workerId;
  set workerId(String value);
  @override
  String get note;
  set note(String value);
  @override
  Person get patient;
  set patient(Person value);
  @override
  ReservationStatus get status;
  set status(ReservationStatus value);
  @override
  @JsonKey(ignore: true)
  _$$_ReservationCopyWith<_$_Reservation> get copyWith =>
      throw _privateConstructorUsedError;
}
