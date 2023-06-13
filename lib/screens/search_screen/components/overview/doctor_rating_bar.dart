import 'package:doctor_pert/models/medical_practice/medical_practice.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class DoctorRatingBar extends StatelessWidget {
  final List<Rating> ratings;
  const DoctorRatingBar({super.key, required this.ratings});

  @override
  Widget build(BuildContext context) {
    double doctorRating = 0;
    if (ratings.isNotEmpty) {
      doctorRating = ratings
              .map((rating) => rating.rating)
              .reduce((value, element) => value + element) /
          ratings.length;
    }
    return Row(children: [
      Text(doctorRating.toString(),
          style: Theme.of(context).textTheme.labelMedium),
      RatingBar.builder(
        initialRating: doctorRating,
        minRating: 0,
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
      Text("(${ratings.length})",
          style: Theme.of(context).textTheme.labelMedium)
    ]);
  }
}
