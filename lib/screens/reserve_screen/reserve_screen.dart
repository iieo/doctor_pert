import 'package:doctor_pert/models/doctor.dart';
import 'package:doctor_pert/models/dummy_data.dart';
import 'package:doctor_pert/models/reservation.dart';
import 'package:doctor_pert/screens/reserve_screen/stepper_content/time_table.dart';
import 'package:flutter/material.dart';

class ReserveScreen extends StatelessWidget {
  final String doctorId;
  const ReserveScreen({super.key, required this.doctorId});

  @override
  Widget build(BuildContext context) {
    Doctor doctor = doctor1;
    return TimeTable(
        reservations: reservations1,
        availableAppointments: doctor.availableAppointments);
  }
}
