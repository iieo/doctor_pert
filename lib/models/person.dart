class Person {
  String? titles;
  String firstName;
  String lastName;
  String email;
  String phone;
  Person({
    this.titles,
    required this.firstName,
    required this.lastName,
    required this.email,
    required this.phone,
  });

  String get name => "${titles ?? ""} $firstName $lastName".trim();
}
