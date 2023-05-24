import 'package:doctor_pert/models/medical_practice.dart';
import 'package:doctor_pert/translation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_svg/flutter_svg.dart';

class OverviewHeader extends StatelessWidget {
  final MedicalPractice doctor;
  const OverviewHeader({super.key, required this.doctor});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 20),
            ConstrainedBox(
                constraints: const BoxConstraints(
                  maxHeight: 150,
                ),
                child: SvgPicture.asset("assets/images/doctor.svg")),
            const SizedBox(height: 20),
            Text(doctor.name,
                style: Theme.of(context).textTheme.headlineMedium),
            const SizedBox(height: 10),
            //DoctorRatingBar(rating: doctorRating),
            const SizedBox(height: 10),
            Text(t(fromDoctorType(doctor.type[0])),
                style: Theme.of(context).textTheme.labelSmall),
            const SizedBox(height: 10),
          ],
        ));
  }
}
