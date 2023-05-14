import 'package:doctor_pert/models/doctor.dart';
import 'package:flutter/material.dart';

class DoctorOverview extends StatelessWidget {
  final Doctor? doctor;
  final Function() onPressed;
  const DoctorOverview(
      {super.key, required this.doctor, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    if (this.doctor == null) {
      return const SizedBox.shrink();
    }
    Doctor doctor = this.doctor!;
    return Column(
      children: [
        AppBar(
          leading: IconButton(
            icon: const Icon(Icons.arrow_back),
            onPressed: onPressed,
          ),
          title: Text(doctor.name),
        ),
        Expanded(
            child: Container(
                color: Colors.white, child: const Center(child: Placeholder())))
      ],
    );
  }
}
