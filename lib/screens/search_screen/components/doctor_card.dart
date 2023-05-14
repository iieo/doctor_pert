import 'package:doctor_pert/models/doctor.dart';
import 'package:flutter/material.dart';

class DoctorCard extends StatelessWidget {
  final Function() onTap;
  final Doctor doctor;
  const DoctorCard({super.key, required this.onTap, required this.doctor});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Card(
          child: ListTile(
        title: Text(doctor.name),
        subtitle: Text(doctor.phone),
      )),
    );
  }
}
