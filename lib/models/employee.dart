import 'package:doctor_pert/models/calendar.dart';
import 'package:doctor_pert/models/person.dart';
import 'package:flutter/material.dart';

abstract class Employee extends Person {
  String id;
  Calendar calendar;

  Employee(
      {required super.firstName,
      required super.lastName,
      required super.email,
      required super.phone,
      required this.id,
      required this.calendar});

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
      required super.calendar,
      this.speciality});
}

class Assistant extends Employee {
  Assistant(
      {required super.firstName,
      required super.lastName,
      required super.email,
      required super.phone,
      required super.id,
      required super.calendar});
}
