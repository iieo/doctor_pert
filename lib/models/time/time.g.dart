// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'time.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_OpeningHours _$$_OpeningHoursFromJson(Map<String, dynamic> json) =>
    _$_OpeningHours(
      days: (json['days'] as List<dynamic>)
          .map((e) => OpeningHoursDay.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_OpeningHoursToJson(_$_OpeningHours instance) =>
    <String, dynamic>{
      'days': instance.days,
    };

_$_OpeningHoursDay _$$_OpeningHoursDayFromJson(Map<String, dynamic> json) =>
    _$_OpeningHoursDay(
      open: json['open'] as String,
      close: json['close'] as String,
      day: json['day'] as int,
    );

Map<String, dynamic> _$$_OpeningHoursDayToJson(_$_OpeningHoursDay instance) =>
    <String, dynamic>{
      'open': instance.open,
      'close': instance.close,
      'day': instance.day,
    };
