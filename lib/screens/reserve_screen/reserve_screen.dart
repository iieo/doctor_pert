import 'package:doctor_pert/screens/reserve_screen/stepper_content/time_table.dart';
import 'package:flutter/material.dart';

class ReserveScreen extends StatelessWidget {
  final String doctorId;
  const ReserveScreen({super.key, required this.doctorId});

  @override
  Widget build(BuildContext context) {
    return const TimeTable();
  }
}
