import 'dart:math';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:doctor_pert/models/calendar/calendar.dart';
import 'package:doctor_pert/models/calendar_event/calendar_event.dart';
import 'package:doctor_pert/models/employee/employee.dart';
import 'package:doctor_pert/models/medical_practice/medical_practice.dart';
import 'package:doctor_pert/models/reservation/reservation.dart';
import 'package:doctor_pert/models/userinfo/userinfo.dart';

class FirestoreHandler {
  static Future<List<Reservation>> getReservationsByIds(
      List<String> ids) async {
    QuerySnapshot snapshot = await FirebaseFirestore.instance
        .collection('reservations')
        .where('id', whereIn: ids)
        .get();
    return snapshot.docs
        .map((e) => Reservation.fromJson(e.data() as Map<String, dynamic>))
        .toList();
  }

  static Future<Calendar> getCalendarById(String calendarId) async {
    QuerySnapshot snapshot = await FirebaseFirestore.instance
        .collection('calendars')
        .where('id', isEqualTo: calendarId)
        .get();
    return Calendar.fromJson(
        snapshot.docs.first.data() as Map<String, dynamic>);
  }

  static Future<MedicalPractice> getMedicalPracticeById(
      String medicalPracticeId) async {
    QuerySnapshot snapshot = await FirebaseFirestore.instance
        .collection('medical_practices')
        .where('id', isEqualTo: medicalPracticeId)
        .get();
    return MedicalPractice.fromJson(
        snapshot.docs.first.data() as Map<String, dynamic>);
  }

  static Future<List<MedicalPractice>> getMedicalPracticesNearby(
      double latitude, double longitude, int radiusKM) async {
    double minLat = latitude - radiusKM / 110.574;
    double maxLat = latitude + radiusKM / 110.574;
    double minLong = longitude - radiusKM / (111.320 * cos(latitude));
    double maxLong = longitude + radiusKM / (111.320 * cos(latitude));

    QuerySnapshot snapshot = await FirebaseFirestore.instance
        .collection('medical_practices')
        .where('location', isGreaterThanOrEqualTo: GeoPoint(minLat, minLong))
        .where('location', isLessThanOrEqualTo: GeoPoint(maxLat, maxLong))
        .get();
    return snapshot.docs.map((e) {
      return MedicalPractice.fromJson(e.data() as Map<String, dynamic>);
    }).toList();
  }

  static Future<UserInfo> getUserById(String id) async {
    QuerySnapshot snapshot = await FirebaseFirestore.instance
        .collection('users')
        .where('id', isEqualTo: id)
        .get();

    return UserInfo.fromJson(
        snapshot.docs.first.data() as Map<String, dynamic>);
  }

  static Future<List<Employee>> getEmployeesByIds(
      List<String> employeeIds) async {
    QuerySnapshot snapshot = await FirebaseFirestore.instance
        .collection('employees')
        .where('id', whereIn: employeeIds)
        .get();
    return snapshot.docs.map((e) {
      return Employee.fromJson(e.data() as Map<String, dynamic>);
    }).toList();
  }

  static Future<List<CalendarEvent>> getCalendarEventsByIds(
      List<String> calendarEventIds, DateTime from, DateTime to) async {
    QuerySnapshot snapshot = await FirebaseFirestore.instance
        .collection('calendar_events')
        .where('id', whereIn: calendarEventIds)
        .where('start', isGreaterThanOrEqualTo: from)
        .where('end', isLessThanOrEqualTo: to)
        .get();
    return snapshot.docs.map((e) {
      return CalendarEvent.fromJson(e.data() as Map<String, dynamic>);
    }).toList();
  }

  static Future<List<Reservation>> getReservationsWithEventId(
      List<String> eventIds) async {
    QuerySnapshot snapshot = await FirebaseFirestore.instance
        .collection('reservations')
        .where('eventId', whereIn: eventIds)
        .get();
    return snapshot.docs.map((e) {
      return Reservation.fromJson(e.data() as Map<String, dynamic>);
    }).toList();
  }
}
