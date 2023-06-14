// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'reservation.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Reservation _$$_ReservationFromJson(Map<String, dynamic> json) =>
    _$_Reservation(
      id: json['id'] as String,
      userId: json['userId'] as String,
      eventId: json['eventId'] as String,
      doctorId: json['doctorId'] as String,
      workerId: json['workerId'] as String,
      note: json['note'] as String,
      patient: Person.fromJson(json['patient'] as Map<String, dynamic>),
      status: $enumDecode(_$ReservationStatusEnumMap, json['status']),
    );

Map<String, dynamic> _$$_ReservationToJson(_$_Reservation instance) =>
    <String, dynamic>{
      'id': instance.id,
      'userId': instance.userId,
      'eventId': instance.eventId,
      'doctorId': instance.doctorId,
      'workerId': instance.workerId,
      'note': instance.note,
      'patient': instance.patient,
      'status': _$ReservationStatusEnumMap[instance.status]!,
    };

const _$ReservationStatusEnumMap = {
  ReservationStatus.pending: 'pending',
  ReservationStatus.accepted: 'accepted',
  ReservationStatus.rejected: 'rejected',
  ReservationStatus.canceled: 'canceled',
  ReservationStatus.completed: 'completed',
};
