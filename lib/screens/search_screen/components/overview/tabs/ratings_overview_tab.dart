import 'package:doctor_pert/models/medical_practice.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class RatingsOverviewTab extends StatelessWidget {
  final MedicalPractice doctor;
  const RatingsOverviewTab({super.key, required this.doctor});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(20),
        child: ListView.builder(
            itemBuilder: (context, index) {
              return RatingsOverviewItem(rating: doctor.ratings[index]);
            },
            itemCount: doctor.ratings.length));
  }
}

class RatingsOverviewItem extends StatelessWidget {
  final Rating rating;
  const RatingsOverviewItem({super.key, required this.rating});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(rating.author),
        const SizedBox(height: 10),
        RatingBar.builder(
          initialRating: rating.rating,
          minRating: 1,
          direction: Axis.horizontal,
          allowHalfRating: true,
          itemCount: 5,
          itemSize: 15,
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
        Text(rating.content),
        const SizedBox(height: 10),

        //like button
        Row(
          children: [
            IconButton(
              icon: const Icon(Icons.thumb_up_outlined),
              onPressed: () {},
            ),
            Text(rating.likes.length.toString(),
                style: Theme.of(context).textTheme.labelMedium),
          ],
        )
      ],
    );
  }
}
