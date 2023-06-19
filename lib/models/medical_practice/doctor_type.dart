import 'package:doctor_pert/translation.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

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
  other;

  IconData get iconData {
    switch (this) {
      case DoctorType.general:
        return FontAwesomeIcons.userDoctor;
      case DoctorType.chiropractor:
        return FontAwesomeIcons.userDoctor;
      case DoctorType.dentist:
        return FontAwesomeIcons.tooth;
      case DoctorType.dermatologist:
        return FontAwesomeIcons.userDoctor;
      case DoctorType.dietitian:
        return FontAwesomeIcons.userDoctor;
      case DoctorType.gynecologist:
        return FontAwesomeIcons.userDoctor;
      case DoctorType.neurologist:
        return FontAwesomeIcons.userDoctor;
      case DoctorType.ophthalmologist:
        return FontAwesomeIcons.userDoctor;
      case DoctorType.orthopedist:
        return FontAwesomeIcons.userDoctor;
      case DoctorType.pediatrician:
        return FontAwesomeIcons.userDoctor;
      case DoctorType.psychiatrist:
        return FontAwesomeIcons.userDoctor;
      case DoctorType.urologist:
        return FontAwesomeIcons.userDoctor;
      case DoctorType.veterinarian:
        return FontAwesomeIcons.userDoctor;
      case DoctorType.other:
        return FontAwesomeIcons.userDoctor;
    }
  }

  static List<DoctorType> get list {
    return [
      DoctorType.general,
      DoctorType.chiropractor,
      DoctorType.dentist,
      DoctorType.dermatologist,
      DoctorType.dietitian,
      DoctorType.gynecologist,
      DoctorType.neurologist,
      DoctorType.ophthalmologist,
      DoctorType.orthopedist,
      DoctorType.pediatrician,
      DoctorType.psychiatrist,
      DoctorType.urologist,
      DoctorType.veterinarian,
      DoctorType.other
    ];
  }

  @override
  String toString() {
    return t(this.name);
  }

  PhraseKey get name {
    switch (this) {
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
}
