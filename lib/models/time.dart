class OpeningHours {
  List<OpeningHoursDay> days;

  OpeningHoursDay get monday {
    return days.firstWhere((element) => element.day == 1);
  }

  OpeningHoursDay get tuesday {
    return days.firstWhere((element) => element.day == 2);
  }

  OpeningHoursDay get wednesday {
    return days.firstWhere((element) => element.day == 3);
  }

  OpeningHoursDay get thursday {
    return days.firstWhere((element) => element.day == 4);
  }

  OpeningHoursDay get friday {
    return days.firstWhere((element) => element.day == 5);
  }

  OpeningHoursDay get saturday {
    return days.firstWhere((element) => element.day == 6);
  }

  OpeningHoursDay get sunday {
    return days.firstWhere((element) => element.day == 7);
  }

  OpeningHours({required this.days});
}

class OpeningHoursDay {
  int day;
  String open;
  String close;

  String get weekdayName {
    switch (day) {
      case 1:
        return "monday";
      case 2:
        return "tuesday";
      case 3:
        return "wednesday";
      case 4:
        return "thursday";
      case 5:
        return "friday";
      case 6:
        return "saturday";
      case 7:
        return "sunday";
      default:
        return "monday";
    }
  }

  OpeningHoursDay({required this.day, required this.open, required this.close});
}
