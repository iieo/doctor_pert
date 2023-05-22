import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_osm_plugin/flutter_osm_plugin.dart';
import 'package:latlong2/latlong.dart';

class Doctor {
  String name;
  DoctorType type;
  Address address;
  String phone;
  String email;
  String? website;
  String? description;
  String? imageUrl;
  List<String> specialities;
  List<String> languages;
  OpeningHours openingHours;
  List<Rating> ratings;
  List<LatLng> locations;
  List<String> services;

  Doctor({
    required this.name,
    required this.type,
    required this.address,
    required this.phone,
    required this.email,
    required this.openingHours,
    required this.locations,
    this.specialities = const ["general"],
    this.website,
    this.description,
    this.imageUrl,
    this.languages = const ["german"],
    this.ratings = const [],
    this.services = const ["general"],
  });
}

enum DoctorType {
  genral,
  chiropractor,
  dentist,
  dermatologist,
  dietitian,
  gynecologist,
  neurologist,
  ophthalmologist,
  orthopedist,
  pediatrician,
  psychiatrist,
  urologist,
  veterinarian,
  other,
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

  String get fullAddress {
    return "$street, $postalCode $city, $country";
  }
}

class OpeningHours {
  List<OpeningHoursDay> days;

  OpeningHoursDay get monday {
    return days.firstWhere((element) => element.day == 1);
  }

  OpeningHoursDay get tuesday {
    return days.firstWhere((element) => element.day == 2);
  }

  OpeningHoursDay get wednesday {
    return days.firstWhere((element) => element.day == 3);
  }

  OpeningHoursDay get thursday {
    return days.firstWhere((element) => element.day == 4);
  }

  OpeningHoursDay get friday {
    return days.firstWhere((element) => element.day == 5);
  }

  OpeningHoursDay get saturday {
    return days.firstWhere((element) => element.day == 6);
  }

  OpeningHoursDay get sunday {
    return days.firstWhere((element) => element.day == 7);
  }

  OpeningHours({required this.days});
}

class OpeningHoursDay {
  int day;
  String open;
  String close;

  String get weekdayName {
    switch (day) {
      case 1:
        return "monday";
      case 2:
        return "tuesday";
      case 3:
        return "wednesday";
      case 4:
        return "thursday";
      case 5:
        return "friday";
      case 6:
        return "saturday";
      case 7:
        return "sunday";
      default:
        return "monday";
    }
  }

  OpeningHoursDay({required this.day, required this.open, required this.close});
}

class Rating {
  String author;
  String content;
  double rating;
  List<String> likes;
  DateTime created;
  DateTime updated;

  Rating(
      {required this.author,
      required this.content,
      required this.rating,
      this.likes = const [],
      required this.created,
      required this.updated});
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
