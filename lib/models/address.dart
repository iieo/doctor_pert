class Address {
  String street;
  String city;
  String? state;
  String country;
  String zipCode;

  Address(
      {required this.street,
      required this.city,
      this.state,
      required this.country,
      required this.zipCode});
}
