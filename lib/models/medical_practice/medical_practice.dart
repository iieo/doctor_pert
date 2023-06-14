import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:doctor_pert/handler/firestore_handler.dart';
import 'package:doctor_pert/models/address/address.dart';
import 'package:doctor_pert/models/employee/employee.dart';
import 'package:doctor_pert/models/medical_practice/doctor_type.dart';
import 'package:doctor_pert/models/medical_practice/rating.dart';
import 'package:doctor_pert/models/person/person.dart';
import 'package:doctor_pert/models/time/time.dart';
import 'package:latlong2/latlong.dart';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'medical_practice.freezed.dart';
part 'medical_practice.g.dart';

@unfreezed
class MedicalPractice with _$MedicalPractice {
  MedicalPractice._();

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
    required List<String> employeeIds,
    required List<String> languages,
    required OpeningHours openingHours,
    required List<Rating> ratings,
    required LatLng location,
    required List<String> services,
    @JsonKey(includeFromJson: false, includeToJson: false)
    List<Employee>? employees,
  }) = _MedicalPractice;

  factory MedicalPractice.fromJson(Map<String, dynamic> json) =>
      _$MedicalPracticeFromJson(json);

  void loadEmployees() async {
    employees = await FirestoreHandler.getEmployeesByIds(employeeIds);
  }
}
