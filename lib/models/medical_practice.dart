import 'package:doctor_pert/models/employee.dart';
import 'package:doctor_pert/models/person.dart';
import 'package:doctor_pert/translation.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:latlong2/latlong.dart';

import 'address.dart';
import 'time.dart';

class MedicalPractice {
  String id;
  String name;
  List<Person> owner;
  List<DoctorType> type;
  Address address;
  String phone;
  String email;
  String? website;
  String? description;
  String? imageUrl;
  List<String> specialities;
  List<String> languages;
  List<Employee> employees;
  OpeningHours openingHours;
  List<Rating> ratings;
  List<LatLng> locations;
  List<String> services;
  MedicalPractice({
    required this.id,
    required this.name,
    required this.owner,
    required this.type,
    required this.address,
    required this.phone,
    required this.email,
    required this.openingHours,
    required this.locations,
    required this.employees,
    this.specialities = const ["general"],
    this.website,
    this.description,
    this.imageUrl,
    this.languages = const ["german"],
    this.ratings = const [],
    this.services = const ["general"],
  });

  List<Doctor> get doctors {
    return employees.whereType<Doctor>().toList();
  }

  List<Assistant> get assistants {
    return employees.whereType<Assistant>().toList();
  }

  List<List<TimeOfDay>> get availableAppointments {
    List<List<TimeOfDay>> availableAppointments = [[], [], [], [], [], [], []];
    for (Doctor doctor in doctors) {
      for (int i = 0; i < doctor.availableAppointments.length && i < 7; i++) {
        availableAppointments[i].addAll(doctor.availableAppointments[i]);
      }
    }
    return availableAppointments;
  }

  static IconData getIconData(DoctorType type) {
    IconData icon;
    switch (type) {
      case DoctorType.general:
        icon = FontAwesomeIcons.userDoctor;
        break;
      case DoctorType.chiropractor:
        icon = FontAwesomeIcons.userDoctor;
        break;
      case DoctorType.dentist:
        icon = FontAwesomeIcons.tooth;
        break;
      case DoctorType.dermatologist:
        icon = FontAwesomeIcons.userDoctor;
        break;
      case DoctorType.dietitian:
        icon = FontAwesomeIcons.userDoctor;
        break;
      case DoctorType.gynecologist:
        icon = FontAwesomeIcons.userDoctor;
        break;
      case DoctorType.neurologist:
        icon = FontAwesomeIcons.userDoctor;
        break;
      case DoctorType.ophthalmologist:
        icon = FontAwesomeIcons.userDoctor;
        break;
      case DoctorType.orthopedist:
        icon = FontAwesomeIcons.userDoctor;
        break;
      case DoctorType.pediatrician:
        icon = FontAwesomeIcons.userDoctor;
        break;
      case DoctorType.psychiatrist:
        icon = FontAwesomeIcons.userDoctor;
        break;
      case DoctorType.urologist:
        icon = FontAwesomeIcons.userDoctor;
        break;
      case DoctorType.veterinarian:
        icon = FontAwesomeIcons.userDoctor;
        break;
      case DoctorType.other:
        icon = FontAwesomeIcons.userDoctor;
        break;
    }
    return icon;
  }
}

enum DoctorType {
  general,
  chiropractor,
  dentist,
  dermatologist,
  dietitian,
  gynecologist,
  neurologist,
  ophthalmologist,
  orthopedist,
  pediatrician,
  psychiatrist,
  urologist,
  veterinarian,
  other,
}

PhraseKey fromDoctorType(DoctorType type) {
  switch (type) {
    case DoctorType.general:
      return PhraseKey.general;
    case DoctorType.chiropractor:
      return PhraseKey.chiropractor;
    case DoctorType.dentist:
      return PhraseKey.dentist;
    case DoctorType.dermatologist:
      return PhraseKey.dermatologist;
    case DoctorType.dietitian:
      return PhraseKey.dietitian;
    case DoctorType.gynecologist:
      return PhraseKey.gynecologist;
    case DoctorType.neurologist:
      return PhraseKey.neurologist;
    case DoctorType.ophthalmologist:
      return PhraseKey.ophthalmologist;
    case DoctorType.orthopedist:
      return PhraseKey.orthopedist;
    case DoctorType.pediatrician:
      return PhraseKey.pediatrician;
    case DoctorType.psychiatrist:
      return PhraseKey.psychiatrist;
    case DoctorType.urologist:
      return PhraseKey.urologist;
    case DoctorType.veterinarian:
      return PhraseKey.veterinarian;
    case DoctorType.other:
      return PhraseKey.other;
    default:
      return PhraseKey.other;
  }
}

class Rating {
  String author;
  String content;
  double rating;
  List<String> likes;
  DateTime created;
  DateTime updated;

  Rating(
      {required this.author,
      required this.content,
      required this.rating,
      this.likes = const [],
      required this.created,
      required this.updated});
}

class Speciality {
  String name;
  String description;

  Speciality({required this.name, required this.description});
}

class Language {
  String name;
  String description;

  Language({required this.name, required this.description});
}