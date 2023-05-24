import 'package:doctor_pert/models/person.dart';
import 'package:flutter/material.dart';

class Worker {
  String id;
  Person person;
  WorkerType type;
  List<List<TimeOfDay>> availableAppointments;

  Worker({
    required this.id,
    required this.person,
    required this.type,
    required this.availableAppointments,
  });

  String get name => person.name;
}

enum WorkerType {
  doctor,
  assistant,
}
