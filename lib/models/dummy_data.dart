import 'package:doctor_pert/models/address.dart';
import 'package:doctor_pert/models/calendar.dart';
import 'package:doctor_pert/models/calendar_event.dart';
import 'package:doctor_pert/models/medical_practice/medical_practice.dart';
import 'package:doctor_pert/models/person.dart';
import 'package:doctor_pert/models/reservation.dart';
import 'package:doctor_pert/models/employee.dart';
import 'package:doctor_pert/models/time.dart';
import 'package:flutter/material.dart';
import 'package:latlong2/latlong.dart';

Person person1 = Person(
  firstName: "Max",
  lastName: "Mustermann",
  email: "tet@test.de",
  phone: "0123456789",
);

MedicalPractice practice1 = MedicalPractice(
    id: "1",
    name: "Musterpraxis",
    owner: [
      Person(
          firstName: "Max",
          lastName: "Mustermann",
          phone: "0123456789",
          email: "test@test.de")
    ],
    type: [DoctorType.general],
    address: Address(
        street: "Musterstraße 1",
        city: "Musterstadt",
        state: "Musterland",
        country: "Musterland",
        postalCode: "12345"),
    phone: "0123456789",
    email: "test@test.de",
    openingHours: OpeningHours(days: [
      OpeningHoursDay(day: 1, open: "08:00", close: "12:00"),
      OpeningHoursDay(day: 1, open: "13:00", close: "17:00"),
      OpeningHoursDay(day: 2, open: "08:00", close: "12:00"),
      OpeningHoursDay(day: 2, open: "13:00", close: "17:00"),
      OpeningHoursDay(day: 3, open: "08:00", close: "12:00"),
      OpeningHoursDay(day: 3, open: "13:00", close: "17:00"),
      OpeningHoursDay(day: 4, open: "08:00", close: "12:00"),
      OpeningHoursDay(day: 4, open: "13:00", close: "17:00"),
      OpeningHoursDay(day: 5, open: "08:00", close: "12:00"),
      OpeningHoursDay(day: 5, open: "13:00", close: "17:00"),
    ]),
    locations: [LatLng(48.2475327, 12.1612037)],
    website: "https://www.musterpraxis.de",
    description:
        "Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut.",
    imageUrl: "https://www.musterpraxis.de/images/doctor.jpg",
    languages: ["german"],
    ratings: [
      Rating(
        author: "Max Mustermann",
        content:
            "Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut.",
        rating: 5,
        created: DateTime.now().subtract(const Duration(days: 1)),
        updated: DateTime.now().subtract(const Duration(days: 1)),
      ),
      Rating(
        author: "Max Mustermann",
        content:
            "Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut.",
        rating: 2,
        created: DateTime.now().subtract(const Duration(days: 2)),
        updated: DateTime.now().subtract(const Duration(days: 2)),
      )
    ],
    employees: [
      Doctor(
          id: "1",
          firstName: "Max",
          lastName: "Mustermann",
          phone: "0123456789",
          email: "test@tes.de",
          calendar: calendar1)
    ]);

Calendar calendar1 = Calendar(calendarEvents: [
  CalendarAppointmentEvent(
      note: "Test",
      startDate: DateTime.now(),
      endDate: DateTime.now().add(const Duration(hours: 1)),
      id: "1",
      title: "Test",
      location: LatLng(48.2475327, 12.1612037)),
  CalendarAppointmentEvent(
      note: "Test",
      startDate: DateTime.now().add(const Duration(days: 1)),
      endDate: DateTime.now().add(const Duration(days: 1, hours: 1)),
      id: "2",
      title: "Test",
      location: LatLng(48.2475327, 12.1612037)),
  CalendarAppointmentEvent(
      note: "Test",
      startDate: DateTime.now().add(const Duration(days: 2, hours: 2)),
      endDate: DateTime.now().add(const Duration(days: 2, hours: 3)),
      id: "3",
      title: "Test",
      location: LatLng(48.2475327, 12.1612037)),
], id: "1", name: "Kalender", ownerId: "1");

List<Reservation> reservations1 = [
  Reservation(
    eventId: "1",
    id: "1",
    note: "Test",
    doctorId: practice1.id,
    workerId: practice1.id,
    patient: person1,
    status: ReservationStatus.accepted,
    userId: "1",
  ),
];
