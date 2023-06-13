import 'package:doctor_pert/models/employee.dart';
import 'package:doctor_pert/models/medical_practice/doctor_type.dart';
import 'package:doctor_pert/models/medical_practice/rating.dart';
import 'package:doctor_pert/models/person.dart';
import 'package:latlong2/latlong.dart';

import '../address.dart';
import '../time.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'medical_practice.freezed.dart';
part 'medical_practice.g.dart';

@unfreezed
class MedicalPractice with _$MedicalPractice {
  factory MedicalPractice({
    required String id,
    required String name,
    required List<Person> owner,
    required List<DoctorType> type,
    required Address address,
    required String phone,
    required String email,
    required String? website,
    required String? description,
    required String? imageUrl,
    required List<String> languages,
    required List<Employee> employees,
    required OpeningHours openingHours,
    required List<Rating> ratings,
    required List<LatLng> locations,
    required List<String> services,
  }) = _MedicalPractice;

  factory MedicalPractice.fromJson(Map<String, dynamic> json) =>
      _$MedicalPracticeFromJson(json);
}
