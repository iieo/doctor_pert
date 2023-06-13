import 'package:doctor_pert/translation.dart';

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
