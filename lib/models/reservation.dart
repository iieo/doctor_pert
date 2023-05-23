import 'package:flutter/material.dart';
import 'package:latlong2/latlong.dart';

class Reservation {
  String userId;
  String doctorId;
  String workerId;
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
    required this.date,
    required this.time,
    required this.created,
    required this.location,
    this.note,
    required this.status,
  });
}

enum ReservationStatus {
  pending,
  accepted,
  rejected,
  canceled,
  completed,
}
