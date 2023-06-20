import 'package:doctor_pert/handler/firestore_handler.dart';
import 'package:doctor_pert/models/calendar/calendar.dart';
import 'package:doctor_pert/models/calendar_event/calendar_event.dart';
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

  Future<void> loadCalendar() async {
    calendar = await FirestoreHandler.getCalendarById(calendarId);
  }

  Future<List<CalendarEvent>> getAvailableAppointments(DateTime from,
      {DateTime? to = null}) async {
    if (calendar == null) {
      await loadCalendar();
    }
    if (calendar != null) {
      return calendar!.getAvailableAppointments(from, to: to);
    } else {
      return [];
    }
  }

  String get name => "$firstName $lastName".trim();
}
