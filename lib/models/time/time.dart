import 'package:freezed_annotation/freezed_annotation.dart';

part 'time.freezed.dart';
part 'time.g.dart';

@unfreezed
class OpeningHours with _$OpeningHours {
  factory OpeningHours({
    required List<OpeningHoursDay> days,
  }) = _OpeningHours;

  OpeningHours._();

  factory OpeningHours.fromJson(Map<String, dynamic> json) =>
      _$OpeningHoursFromJson(json);

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
}

@unfreezed
class OpeningHoursDay with _$OpeningHoursDay {
  factory OpeningHoursDay({
    required String open,
    required String close,
    required int day,
  }) = _OpeningHoursDay;

  factory OpeningHoursDay.fromJson(Map<String, dynamic> json) =>
      _$OpeningHoursDayFromJson(json);

  OpeningHoursDay._();

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
}
