import 'package:freezed_annotation/freezed_annotation.dart';

part 'speciality.freezed.dart';
part 'speciality.g.dart';

@unfreezed
class Speciality with _$Speciality {
  factory Speciality({
    required String name,
    required String description,
  }) = _Speciality;

  factory Speciality.fromJson(Map<String, dynamic> json) =>
      _$SpecialityFromJson(json);
}
