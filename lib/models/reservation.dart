import 'package:doctor_pert/models/person.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'reservation.freezed.dart';
part 'reservation.g.dart';

@unfreezed
class Reservation with _$Reservation {
  factory Reservation({
    required String id,
    required String userId,
    required String eventId,
    required String doctorId,
    required String workerId,
    required String note,
    required Person patient,
    required ReservationStatus status,
  }) = _Reservation;

  factory Reservation.fromJson(Map<String, dynamic> json) =>
      _$ReservationFromJson(json);
}

/*

class Reservation {
  String userId;
  String doctorId;
  String workerId;
  Person patient;
  DateTime date;
  TimeOfDay time;
  DateTime created;
  String? note;
  ReservationStatus status;
  LatLng location;

  Reservation({
    required this.userId,
    required this.doctorId,
    required this.workerId,
    required this.patient,
    required this.date,
    required this.time,
    required this.created,
    required this.location,
    this.note,
    required this.status,
  });
}*/

enum ReservationStatus {
  pending,
  accepted,
  rejected,
  canceled,
  completed,
}
