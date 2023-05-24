import 'package:doctor_pert/models/person.dart';
import 'package:flutter/material.dart';

abstract class Employee extends Person {
  String id;
  List<List<TimeOfDay>> availableAppointments;

  Employee(
      {required super.firstName,
      required super.lastName,
      required super.email,
      required super.phone,
      required this.id,
      required this.availableAppointments});
}

class Doctor extends Employee {
  /// nur ein vorschlag
  String? speciality;

  Doctor(
      {required super.firstName,
      required super.lastName,
      required super.email,
      required super.phone,
      required super.id,
      required super.availableAppointments,
      this.speciality});
}

class Assistant extends Employee {
  Assistant(
      {required super.firstName,
      required super.lastName,
      required super.email,
      required super.phone,
      required super.id,
      required super.availableAppointments});
}
