import 'package:freezed_annotation/freezed_annotation.dart';

part 'person.freezed.dart';
part 'person.g.dart';

@unfreezed
class Person with _$Person {
  factory Person({
    String? titles,
    required String firstName,
    required String lastName,
    required String email,
    required String phone,
  }) = _Person;

  factory Person.fromJson(Map<String, dynamic> json) => _$PersonFromJson(json);

  //String get name => "${titles ?? ""} $firstName $lastName".trim();
}
