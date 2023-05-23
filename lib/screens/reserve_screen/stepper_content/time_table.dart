import 'package:doctor_pert/models/reservation.dart';
import 'package:flutter/material.dart';

/// This is a TimeTable widget.
/// It is used to display the available times for a doctor.
/// It is for the user to select a date and time for a reservation.

class TimeTable extends StatelessWidget {
  final List<List<TimeOfDay>> availableAppointments;
  final List<Reservation> reservations;
  const TimeTable(
      {super.key,
      required this.availableAppointments,
      required this.reservations});

  List<List<Map<TimeOfDay, bool>>>
      _combineAvailableAppointmentsAndReservations() {
    List<List<Map<TimeOfDay, bool>>> result = [];
    //set every appointment entry to true
    for (int i = 0; i < availableAppointments.length; i++) {
      List<Map<TimeOfDay, bool>> day = [];
      for (int j = 0; j < availableAppointments[i].length; j++) {
        day.add({availableAppointments[i][j]: true});
      }
      result.add(day);
    }
    //set every entry to false, if it is reserved
    //first list is for monday, second for tuesday, ...
    //compare with reservation date.weekday
    for (int i = 0; i < reservations.length; i++) {
      for (int j = 0; j < result.length; j++) {
        if (reservations[i].date.weekday == j + 1) {
          for (int k = 0; k < result[j].length; k++) {
            if (result[j][k].keys.first == reservations[i].time) {
              result[j][k] = {reservations[i].time: false};
            }
          }
        }
      }
    }
    //collect all available times
    Set<TimeOfDay> allTimes = {};
    for (int i = 0; i < availableAppointments.length; i++) {
      for (int j = 0; j < availableAppointments[i].length; j++) {
        allTimes.add(availableAppointments[i][j]);
      }
    }
    //add every time to every list, if it is not already in there
    for (int i = 0; i < result.length; i++) {
      for (TimeOfDay time in allTimes) {
        bool isAlreadyInList = false;
        for (int j = 0; j < result[i].length; j++) {
          if (result[i][j].keys.first == time) {
            isAlreadyInList = true;
          }
        }
        if (!isAlreadyInList) {
          result[i].add({time: false});
        }
      }
    }

    return result;
  }

  List<List<Map<TimeOfDay, bool>>> _sortTimeTableByTime(
      List<List<Map<TimeOfDay, bool>>> timeTable) {
    for (int i = 0; i < timeTable.length; i++) {
      timeTable[i].sort((a, b) => a.keys.first.compareTo(b.keys.first));
    }
    return timeTable;
  }

  @override
  Widget build(BuildContext context) {
    List<List<Map<TimeOfDay, bool>>> timeTable =
        _combineAvailableAppointmentsAndReservations();
    timeTable = _sortTimeTableByTime(timeTable);
    //build a column for every day
    List<Widget> rows = [];

    for (int i = 0; i < timeTable.length; i++) {
      List<Widget> columns = [];
      //build a row for every time
      for (int j = 0; j < timeTable[i].length; j++) {
        columns.add(
          Container(
            width: 100,
            decoration: BoxDecoration(
              color: timeTable[i][j].values.first
                  ? Colors.green
                  : Colors.red.withOpacity(0.5),
              border: Border.all(
                color: Colors.grey,
              ),
            ),
            child: Text(timeTable[i][j].keys.first.format(context)),
          ),
        );
      }
      rows.add(
        Column(
          children: columns,
        ),
      );
    }

    return Row(
      children: rows,
    );
  }
}

extension TimeOfDayExtension on TimeOfDay {
  int compareTo(TimeOfDay other) {
    if (hour > other.hour) {
      return 1;
    } else if (hour < other.hour) {
      return -1;
    } else {
      if (minute > other.minute) {
        return 1;
      } else if (minute < other.minute) {
        return -1;
      } else {
        return 0;
      }
    }
  }
}
