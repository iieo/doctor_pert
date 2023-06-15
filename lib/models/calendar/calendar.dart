import 'package:doctor_pert/handler/firestore_handler.dart';
import 'package:doctor_pert/models/calendar_event/calendar_event.dart';
import 'package:doctor_pert/models/reservation/reservation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'calendar.freezed.dart';
part 'calendar.g.dart';

@unfreezed
class Calendar with _$Calendar {
  factory Calendar(
      {required String id,
      required String name,
      required String ownerId,
      required List<String> calendarEventIds,
      @Default([])
      @JsonKey(includeFromJson: false, includeToJson: false)
      List<CalendarEvent> calendarEvents}) = _Calendar;
  Calendar._();

  factory Calendar.fromJson(Map<String, dynamic> json) =>
      _$CalendarFromJson(json);

  Future<List<CalendarEvent>> loadCalendarEvents(
      DateTime from, DateTime to) async {
    return await FirestoreHandler.getCalendarEventsByIds(
        calendarEventIds, from, to);
  }

  Future<List<CalendarEvent>> getAvailableAppointments(
      DateTime from, DateTime to) async {
    List<CalendarEvent> availableAppointments =
        await loadCalendarEvents(from, to);
    List<String> eventIds = availableAppointments.map((e) => e.id).toList();
    List<Reservation> reservations =
        await FirestoreHandler.getReservationsWithEventId(eventIds);
    //remove all appointments that are reserved
    List<CalendarEvent> availableEvents = availableAppointments
        .where((event) =>
            !reservations.any((reservation) => reservation.eventId == event.id))
        .toList();
    return availableEvents;
  }
}
