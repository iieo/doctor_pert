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
  Person._();

  String get name => "${titles ?? ""} $firstName $lastName".trim();

  bool isValidPerson() {
    return firstName.isNotEmpty &&
        lastName.isNotEmpty &&
        email.isNotEmpty &&
        phone.isNotEmpty;
  }
}
