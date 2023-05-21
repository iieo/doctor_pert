import 'package:doctor_pert/models/doctor.dart';
import 'package:doctor_pert/screens/search_screen/components/overview/overview_body.dart';
import 'package:doctor_pert/translation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_svg/flutter_svg.dart';

class OverviewHeader extends StatelessWidget {
  final Doctor doctor;
  const OverviewHeader({super.key, required this.doctor});

  @override
  Widget build(BuildContext context) {
    double doctorRating = 0;
    if (doctor.ratings.isNotEmpty) {
      doctorRating = doctor.ratings
              .map((rating) => rating.rating)
              .reduce((value, element) => value + element) /
          doctor.ratings.length;
    }
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
            Text(doctor.name, style: Theme.of(context).textTheme.headlineSmall),
            const SizedBox(height: 10),
            Row(children: [
              Text(doctorRating.toString(),
                  style: Theme.of(context).textTheme.labelMedium),
              RatingBar.builder(
                initialRating: doctorRating,
                minRating: 1,
                direction: Axis.horizontal,
                allowHalfRating: true,
                itemCount: 5,
                itemSize: 25,
                itemPadding: const EdgeInsets.symmetric(horizontal: 4.0),
                itemBuilder: (context, _) => const Icon(
                  Icons.star,
                  color: Colors.amber,
                ),
                onRatingUpdate: (rating) {
                  print(rating);
                },
                ignoreGestures: true,
              ),
              Text("(${doctor.ratings.length})",
                  style: Theme.of(context).textTheme.labelMedium)
            ]),
            const SizedBox(height: 10),
            Text(t(doctor.type.toString()),
                style: Theme.of(context).textTheme.labelSmall),
            const SizedBox(height: 10),
          ],
        ));
  }
}
