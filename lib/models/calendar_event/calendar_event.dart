import 'package:doctor_pert/models/person/person.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:latlong2/latlong.dart';

abstract class CalendarEvent {
  String id;
  String title;
  DateTime startDate;
  DateTime endDate;
  CalendarEvent(
      {required this.id,
      required this.title,
      required this.startDate,
      required this.endDate});
}

class CalendarAppointmentEvent extends CalendarEvent {
  String note; //damit der arzt notizen machen kann
  LatLng location;

  CalendarAppointmentEvent({
    required this.note,
    required this.location,
    required id,
    required title,
    required startDate,
    required endDate,
  }) : super(id: id, title: title, startDate: startDate, endDate: endDate);
}

class CalendarHolidayEvent extends CalendarEvent {
  String description;
  CalendarHolidayEvent(
      {required this.description,
      required id,
      required title,
      required startDate,
      required endDate})
      : super(id: id, title: title, startDate: startDate, endDate: endDate);
}

class CalendarBirthdayEvent extends CalendarEvent {
  Person person;
  CalendarBirthdayEvent(
      {required this.person,
      required id,
      required title,
      required startDate,
      required endDate})
      : super(id: id, title: title, startDate: startDate, endDate: endDate);
}
