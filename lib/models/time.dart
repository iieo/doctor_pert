import 'package:freezed_annotation/freezed_annotation.dart';

part 'time.freezed.dart';
part 'time.g.dart';

@unfreezed
class OpeningHours with _$OpeningHours {
  factory OpeningHours({
    required List<OpeningHoursDay> days,
  }) = _OpeningHours;

  factory OpeningHours.fromJson(Map<String, dynamic> json) =>
      _$OpeningHoursFromJson(json);
}

@unfreezed
class OpeningHoursDay with _$OpeningHoursDay {
  factory OpeningHoursDay({
    required String open,
    required String close,
  }) = _OpeningHoursDay;

  factory OpeningHoursDay.fromJson(Map<String, dynamic> json) =>
      _$OpeningHoursDayFromJson(json);
/*
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
*/
}
