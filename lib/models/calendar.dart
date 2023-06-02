import 'package:doctor_pert/handler/firestore_handler.dart';
import 'package:doctor_pert/models/calendar_event.dart';
import 'package:doctor_pert/models/person.dart';
import 'package:doctor_pert/models/reservation.dart';

class Calendar {
  String id;
  String name;
  String ownerId;
  List<CalendarEvent>
      calendarEvents; //es werden nicht alle geladen, sondern nur die im Zeitraum x bis y

  Calendar({
    required this.id,
    required this.name,
    required this.ownerId,
    required this.calendarEvents,
  });

  List<CalendarEvent> getEventsForWeek(
      DateTime startOfWeek, DateTime endOfWeek) {
    return calendarEvents
        .where((event) =>
            event.startDate.isAfter(startOfWeek) &&
            event.endDate.isBefore(endOfWeek))
        .toList();
  }

  Future<List<CalendarEvent>> getAvailableEventsForWeek(
      DateTime startOfWeek, DateTime endOfWeek) async {
    //get all Reservations with id of appointment
    List<CalendarEvent> appintments = calendarEvents
        .where((event) =>
            event.startDate.isAfter(startOfWeek) &&
            event.endDate.isBefore(endOfWeek) &&
            event is CalendarAppointmentEvent)
        .toList();
    List<String> eventIds = appintments.map((e) => e.id).toList();
    List<Reservation> reservations =
        await FirestoreHandler.getResrvationsWithId(eventIds);
    //remove all appointments that are reserved
    List<CalendarEvent> availableEvents = appintments
        .where((event) =>
            !reservations.any((reservation) => reservation.eventId == event.id))
        .toList();
    return availableEvents;
  }
}
