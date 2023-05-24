import 'package:doctor_pert/models/person.dart';

class User {
  String userId;
  String email;
  Person person;
  List<Person> savedPersons;

  User({
    required this.userId,
    required this.email,
    required this.person,
    required this.savedPersons,
  });
}
