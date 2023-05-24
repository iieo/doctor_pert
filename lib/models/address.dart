class Address {
  String street;
  String city;
  String state;
  String country;
  String postalCode;

  Address(
      {required this.street,
      required this.city,
      required this.state,
      required this.country,
      required this.postalCode});

  String get fullAddress {
    return "$street, $postalCode $city, $country";
  }
}
