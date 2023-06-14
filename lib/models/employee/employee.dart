import 'package:doctor_pert/handler/firestore_handler.dart';
import 'package:doctor_pert/models/calendar/calendar.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'employee.freezed.dart';
part 'employee.g.dart';

@unfreezed
class Employee with _$Employee {
  Employee._();
  factory Employee(
      {required String firstName,
      required String lastName,
      required String email,
      required String phone,
      required String id,
      required String calendarId,
      @JsonKey(includeFromJson: false, includeToJson: false)
      Calendar? calendar}) = _Employee;

  factory Employee.fromJson(Map<String, dynamic> json) =>
      _$EmployeeFromJson(json);

  void loadCalendar() async {
    calendar = await FirestoreHandler.getCalendarById(calendarId);
  }
}
