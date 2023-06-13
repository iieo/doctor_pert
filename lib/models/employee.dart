import 'package:doctor_pert/models/calendar.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'employee.freezed.dart';
part 'employee.g.dart';

@freezed
class Employee with _$Employee {
  factory Employee({
    required String firstName,
    required String lastName,
    required String email,
    required String phone,
    required String id,
    required Calendar calendar,
  }) = _Employee;

  factory Employee.fromJson(Map<String, dynamic> json) =>
      _$EmployeeFromJson(json);
}
