import 'package:doctor_pert/models/doctor.dart';
import 'package:flutter/material.dart';

class DoctorOverview extends StatelessWidget {
  final Doctor doctor;
  final Function() popOverview;
  const DoctorOverview(
      {super.key, required this.doctor, required this.popOverview});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AppBar(
          leading: IconButton(
            icon: const Icon(Icons.arrow_back),
            onPressed: popOverview,
          ),
          title: Text("test"),
        ),
        Expanded(
            child: Container(
                color: Colors.amber, child: const Center(child: Placeholder())))
      ],
    );
  }
}
