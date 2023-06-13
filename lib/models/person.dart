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
  Person.empty()
      : titles = "",
        firstName = "",
        lastName = "",
        email = "",
        phone = "";

  Person.fromMap(Map<String, dynamic> map)
      : titles = map['titles'],
        firstName = map['firstName'],
        lastName = map['lastName'],
        email = map['email'],
        phone = map['phone'];

  String get name => "${titles ?? ""} $firstName $lastName".trim();
}
