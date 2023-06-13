import 'package:doctor_pert/models/person.dart';

class Reservation {
  String id;
  String userId;
  String eventId;
  String doctorId;
  String workerId;
  String note; //damit der Patient bemerkungen machen kann
  Person patient;
  ReservationStatus status;

  Reservation({
    required this.id,
    required this.userId,
    required this.eventId,
    required this.doctorId,
    required this.workerId,
    required this.note,
    required this.patient,
    required this.status,
  });

  Reservation.fromMap(Map<String, dynamic> map)
      : id = map['id'],
        userId = map['userId'],
        eventId = map['eventId'],
        doctorId = map['doctorId'],
        workerId = map['workerId'],
        note = map['note'],
        patient = Person.fromMap(map['patient']),
        status = ReservationStatus.values[map['status']];

  
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
