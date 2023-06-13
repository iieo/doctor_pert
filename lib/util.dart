import 'package:flutter/material.dart';

extension DateTimeToTimeOfDay on DateTime {
  TimeOfDay toTimeOfDay() {
    return TimeOfDay(hour: hour, minute: minute);
  }

  String toMonthDayString() {
    return "${month.toString().padLeft(2, '0')}.${day.toString().padLeft(2, '0')}";
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
