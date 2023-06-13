import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:doctor_pert/models/dummy_data.dart';
import 'package:doctor_pert/models/reservation.dart';

class FirestoreHandler {
  static Future<List<Reservation>> getResrvationsWithId(
      List<String> ids) async {
    return reservations1;

    QuerySnapshot snapshot = await FirebaseFirestore.instance
        .collection('reservations')
        .where('id', whereIn: ids)
        .get();
    List<Reservation> reservations = snapshot.docs
        .map((e) => Reservation.fromMap(e.data() as Map<String, dynamic>))
        .toList();
    return reservations;
  }
}
