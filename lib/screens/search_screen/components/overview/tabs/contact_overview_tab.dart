import 'package:doctor_pert/models/doctor.dart';
import 'package:doctor_pert/translation.dart';
import 'package:flutter/material.dart';

class ContactOverviewTab extends StatelessWidget {
  final Doctor doctor;
  const ContactOverviewTab({super.key, required this.doctor});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(20),
        child: SingleChildScrollView(
            child: Column(
          children: [
            ListTile(
              title: Text(t("phone")),
              subtitle: Text(doctor.phone),
            ),
            ListTile(
              title: Text(t("email")),
              subtitle: Text(doctor.email),
            ),
            for (int i = 0; i < 30; i++)
              ListTile(
                title: Text(t("address")),
                subtitle: Text(doctor.address.fullAddress),
              ),
          ],
        )));
  }
}
