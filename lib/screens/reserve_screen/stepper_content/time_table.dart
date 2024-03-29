import 'package:doctor_pert/models/calendar_event/calendar_event.dart';
import 'package:doctor_pert/models/medical_practice/medical_practice.dart';
import 'package:doctor_pert/translation.dart';
import 'package:doctor_pert/util.dart';
import 'package:flutter/material.dart';
import 'package:collection/collection.dart';

/// This is a TimeTable widget.
/// It is used to display the available times for a doctor.
/// It is for the user to select a date and time for a reservation.

class TimeTable extends StatefulWidget {
  final MedicalPractice practice;
  final Function(DateTime) onSelected;
  const TimeTable(
      {super.key, required this.practice, required this.onSelected});

  DateTime get startOfCurrentWeek {
    DateTime monday = DateTime.now();
    monday.subtract(Duration(days: monday.weekday - 1));
    return DateTime(monday.year, monday.month, monday.day);
  }

  @override
  State<TimeTable> createState() => _TimeTableState();
}

class _TimeTableState extends State<TimeTable> {
  CalendarEvent? _selected;

  void onSelected(CalendarEvent event) {
    setState(() {
      _selected = event;
    });
    widget.onSelected(event.startDate);
  }

  Set<TimeOfDay> _getAllTimesFromEvents(List<CalendarEvent> events) {
    Set<TimeOfDay> times = {};
    for (CalendarEvent event in events) {
      times.add(event.startDate.toTimeOfDay());
      times.add(event.endDate.toTimeOfDay());
    }
    return times;
  }

  List<TimeOfDay> _sortByTime(List<TimeOfDay> times) {
    times.sort((a, b) => a.compareTo(b));
    return times;
  }

  Widget _buildTimeTable(BuildContext context, List<CalendarEvent> events) {
    if (events.isEmpty) {
      return Container(
          alignment: Alignment.centerLeft,
          padding: const EdgeInsets.symmetric(vertical: 50, horizontal: 20),
          child: Text(t(PhraseKey.no_appointments_available_this_week),
              style: Theme.of(context).textTheme.labelLarge));
    }

    Set<TimeOfDay> allTimes = _getAllTimesFromEvents(events);

    List<TimeOfDay> sortedTimes = _sortByTime(allTimes.toList());

    List<Column> columns = [];

    DateTime currentDate = widget.startOfCurrentWeek;
    for (int i = 0; i < 7; i++) {
      List<TimeTableItem> items = [];
      for (TimeOfDay time in sortedTimes) {
        //find event on currentDate with time as start time
        CalendarEvent? event = events.firstWhereOrNull((event) =>
            event.startDate.toTimeOfDay() == time &&
            event.startDate.year == currentDate.year &&
            event.startDate.month == currentDate.month &&
            event.startDate.day == currentDate.day);
        items.add(TimeTableItem(
          event: event,
          onSelected: onSelected,
          active: _selected == event,
        ));
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
      future: widget.practice.getAvailableAppointments(
          widget.startOfCurrentWeek,
          to: widget.startOfCurrentWeek.add(const Duration(days: 7))),
      builder: (context, snapshot) {
        if (snapshot.hasData && snapshot.data is List<CalendarEvent>) {
          return _buildTimeTable(context, snapshot.data as List<CalendarEvent>);
        } else {
          return const CircularProgressIndicator();
        }
      },
    );
  }
}

class TimeTableItem extends StatelessWidget {
  final CalendarEvent? event;
  final bool active;
  final Function(CalendarEvent) onSelected;
  const TimeTableItem(
      {super.key,
      required this.event,
      required this.onSelected,
      required this.active});

  @override
  Widget build(BuildContext context) {
    if (event != null) {
      return Container(
          width: 120,
          height: 50,
          color: active ? Colors.amber : Colors.green,
          alignment: Alignment.center,
          child: TextButton(
              onPressed: () => onSelected(event!),
              child: Text(
                event!.startDate.toTimeOfDay().format(context),
                style: Theme.of(context).textTheme.labelMedium,
              )));
    } else {
      return Container(
        width: 120,
        height: 50,
        color: Colors.red,
        alignment: Alignment.center,
        child: const Text("-"),
      );
    }
  }
}
