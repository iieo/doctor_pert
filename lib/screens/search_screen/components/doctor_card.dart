import 'package:flutter/material.dart';

class DoctorCard extends StatelessWidget {
  const DoctorCard({super.key});

  @override
  Widget build(BuildContext context) {
    return const Card(
        child: ListTile(
      title: Text("test"),
      subtitle: Text("test"),
    ));
  }
}
