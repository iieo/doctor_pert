import 'package:flutter_osm_plugin/flutter_osm_plugin.dart';
import 'package:latlong2/latlong.dart';

class Doctor {
  String name;
  Address address;
  String phone;
  String email;
  String? website;
  String? description;
  String? imageUrl;
  List<String> specialities;
  List<String> languages;
  List<OpeningHours> openingHours;
  List<Review> reviews;
  double rating;
  LatLng location;
  List<String> services;

  Doctor({
    required this.name,
    required this.address,
    required this.phone,
    required this.email,
    required this.openingHours,
    required this.location,
    this.specialities = const ["general"],
    this.website,
    this.description,
    this.imageUrl,
    this.languages = const ["german"],
    this.reviews = const [],
    this.rating = 0.0,
    this.services = const ["general"],
  });
}

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
}

class OpeningHours {
  int day;
  String open;
  String close;

  OpeningHours({required this.day, required this.open, required this.close});
}

class Review {
  String author;
  String content;
  double rating;

  Review({required this.author, required this.content, required this.rating});
}

class Speciality {
  String name;
  String description;

  Speciality({required this.name, required this.description});
}

class Language {
  String name;
  String description;

  Language({required this.name, required this.description});
}
