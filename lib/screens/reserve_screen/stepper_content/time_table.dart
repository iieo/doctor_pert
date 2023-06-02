import 'package:doctor_pert/models/calendar_event.dart';
import 'package:doctor_pert/models/medical_practice.dart';
import 'package:doctor_pert/models/reservation.dart';
import 'package:doctor_pert/translation.dart';
import 'package:doctor_pert/util.dart';
import 'package:flutter/material.dart';
import 'package:collection/collection.dart';

/// This is a TimeTable widget.
/// It is used to display the available times for a doctor.
/// It is for the user to select a date and time for a reservation.

class TimeTable extends StatelessWidget {
  final MedicalPractice practice;
  final Function(CalendarAppointmentEvent) onSelected;
  const TimeTable(
      {super.key, required this.practice, required this.onSelected});

  DateTime get startOfCurrentWeek {
    DateTime monday = DateTime.now();
    monday.subtract(Duration(days: monday.weekday - 1));
    return DateTime(monday.year, monday.month, monday.day);
  }

  Set<TimeOfDay> _getAllTimesFromEvents(List<CalendarAppointmentEvent> events) {
    Set<TimeOfDay> times = {};
    for (CalendarAppointmentEvent event in events) {
      times.add(event.startDate.toTimeOfDay());
      times.add(event.endDate.toTimeOfDay());
    }
    return times;
  }

  List<TimeOfDay> _sortByTime(List<TimeOfDay> times) {
    times.sort((a, b) => a.compareTo(b));
    return times;
  }

  Widget _buildTimeTable(
      BuildContext context, List<CalendarAppointmentEvent> events) {
    if (events.isEmpty) {
      return Container(
          alignment: Alignment.centerLeft,
          padding: const EdgeInsets.symmetric(vertical: 50, horizontal: 20),
          child: Text(t(PhraseKey.no_appointments_available_this_week),
              style: Theme.of(context).textTheme.labelLarge));
    }

    List<Column> columns = [];

    Set<TimeOfDay> allTimes = _getAllTimesFromEvents(events);

    List<TimeOfDay> sortedTimes = _sortByTime(allTimes.toList());

    DateTime currentDate = startOfCurrentWeek;
    for (int i = 0; i < 7; i++) {
      List<TimeTableItem> items = [];
      for (TimeOfDay time in sortedTimes) {
        //find event on currentDate with time as start time
        CalendarAppointmentEvent? event = events.firstWhereOrNull((event) =>
            event.startDate.toTimeOfDay() == time &&
            event.startDate.year == currentDate.year &&
            event.startDate.month == currentDate.month &&
            event.startDate.day == currentDate.day);
        items.add(TimeTableItem(event: event));
      }
      currentDate = currentDate.add(const Duration(days: 1));
      columns.add(Column(children: items));
    }

    return Row(
      children: columns,
    );
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: practice.availableAppointments(
          startOfCurrentWeek, startOfCurrentWeek.add(const Duration(days: 7))),
      builder: (context, snapshot) {
        if (snapshot.hasData &&
            snapshot.data is List<CalendarAppointmentEvent>) {
          return _buildTimeTable(
              context, snapshot.data as List<CalendarAppointmentEvent>);
        } else {
          return const CircularProgressIndicator();
        }
      },
    );
  }
}

class TimeTableItem extends StatelessWidget {
  final CalendarAppointmentEvent? event;
  const TimeTableItem({super.key, required this.event});

  @override
  Widget build(BuildContext context) {
    if (event != null) {
      return Container(
          width: 100,
          height: 50,
          color: Colors.green,
          alignment: Alignment.center,
          child: Text(event!.startDate.toTimeOfDay().format(context)));
    } else {
      return Container(
        width: 100,
        height: 50,
        color: Colors.red,
        alignment: Alignment.center,
        child: const Text("-"),
      );
    }
  }
}
