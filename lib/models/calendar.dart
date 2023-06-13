import 'package:doctor_pert/handler/firestore_handler.dart';
import 'package:doctor_pert/models/calendar_event.dart';
import 'package:doctor_pert/models/reservation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'calendar.freezed.dart';
part 'calendar.g.dart';

@unfreezed
class Calendar with _$Calendar {
  factory Calendar({
    required String id,
    required String name,
    required String ownerId,
    required List<String> calendarEvents,
  }) = _Calendar;

  factory Calendar.fromJson(Map<String, dynamic> json) =>
      _$CalendarFromJson(json);
/*
  List<CalendarEvent> getEventsForWeek(
      DateTime startOfWeek, DateTime endOfWeek) {
    return calendarEvents
        .where((event) =>
            event.startDate.isAfter(startOfWeek) &&
            event.endDate.isBefore(endOfWeek))
        .toList();
  }

  Future<List<CalendarAppointmentEvent>> getAvailableEventsForWeek(
      DateTime startOfWeek, DateTime endOfWeek) async {
    //get all Reservations with id of appointment
    List<CalendarAppointmentEvent> appintments = calendarEvents
        .where((event) =>
            event.startDate.isAfter(startOfWeek) &&
            event.endDate.isBefore(endOfWeek) &&
            event is CalendarAppointmentEvent)
        .map((e) => e as CalendarAppointmentEvent)
        .toList();
    List<String> eventIds = appintments.map((e) => e.id).toList();

    List<Reservation> reservations =
        await FirestoreHandler.getResrvationsWithId(eventIds);
    //remove all appointments that are reserved
    List<CalendarAppointmentEvent> availableEvents = appintments
        .where((event) =>
            !reservations.any((reservation) => reservation.eventId == event.id))
        .toList();
    return availableEvents;
  }*/
}
