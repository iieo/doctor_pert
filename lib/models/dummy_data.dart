import 'package:doctor_pert/models/doctor.dart';
import 'package:latlong2/latlong.dart';

Doctor doctor1 = Doctor(
  name: "Dr. med. Max Mustermann",
  address: Address(
      street: "Musterstraße 1",
      city: "Musterstadt",
      state: "Musterland",
      country: "Musterland",
      postalCode: "12345"),
  phone: "0123456789",
  email: "test@test.de",
  openingHours: [
    OpeningHours(day: 1, open: "08:00", close: "12:00"),
    OpeningHours(day: 1, open: "13:00", close: "17:00"),
    OpeningHours(day: 2, open: "08:00", close: "12:00"),
    OpeningHours(day: 2, open: "13:00", close: "17:00"),
    OpeningHours(day: 3, open: "08:00", close: "12:00"),
    OpeningHours(day: 3, open: "13:00", close: "17:00"),
    OpeningHours(day: 4, open: "08:00", close: "12:00"),
    OpeningHours(day: 4, open: "13:00", close: "17:00"),
    OpeningHours(day: 5, open: "08:00", close: "12:00"),
    OpeningHours(day: 5, open: "13:00", close: "17:00"),
  ],
  location: LatLng(50.0, 8.0),
  specialities: ["general"],
  website: "https://www.musterpraxis.de",
  description:
      "Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut.",
  imageUrl: "https://www.musterpraxis.de/images/doctor.jpg",
  languages: ["german"],
  rating: 4.5,
);
