import 'package:doctor_pert/models/medical_practice.dart';
import 'package:doctor_pert/models/time.dart';
import 'package:doctor_pert/translation.dart';
import 'package:flutter/material.dart';

class AboutOverviewTab extends StatelessWidget {
  final MedicalPractice doctor;
  const AboutOverviewTab({super.key, required this.doctor});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(20),
        child: SingleChildScrollView(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ElevatedButton(
                onPressed: () {},
                child: Text(t(PhraseKey.reservate),
                    style: Theme.of(context).textTheme.labelMedium)),
            const Divider(
              height: 40,
            ),
            ListTile(
              leading: const Icon(Icons.location_on_outlined),
              title: Text(t(PhraseKey.address),
                  style: Theme.of(context).textTheme.labelMedium),
              subtitle: Text(doctor.address.fullAddress,
                  style: Theme.of(context).textTheme.labelMedium),
            ),
            ListTile(
              leading: const Icon(Icons.phone_outlined),
              title: Text(t(PhraseKey.phone),
                  style: Theme.of(context).textTheme.labelMedium),
              subtitle: Text(doctor.phone,
                  style: Theme.of(context).textTheme.labelMedium),
            ),
            ListTile(
              leading: const Icon(Icons.email_outlined),
              title: Text(t(PhraseKey.email),
                  style: Theme.of(context).textTheme.labelMedium),
              subtitle: Text(doctor.email,
                  style: Theme.of(context).textTheme.labelMedium),
            ),
            doctor.website != null
                ? ListTile(
                    leading: const Icon(Icons.language_outlined),
                    title: Text(t(PhraseKey.website),
                        style: Theme.of(context).textTheme.labelMedium),
                    subtitle: Text(doctor.website!,
                        style: Theme.of(context).textTheme.labelMedium),
                  )
                : const SizedBox.shrink(),
            //öffnungszeiten
            const Divider(
              height: 40,
            ),
            Text(t(PhraseKey.openingHours),
                style: Theme.of(context).textTheme.labelMedium),
            const SizedBox(height: 10),
            for (OpeningHoursDay day in doctor.openingHours.days)
              OpeningHoursDayView(
                  openingHours: doctor.openingHours, day: day.weekdayName),
          ],
        )));
  }
}

class OpeningHoursDayView extends StatelessWidget {
  final OpeningHours openingHours;
  final String day;
  const OpeningHoursDayView(
      {super.key, required this.openingHours, required this.day});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(t(PhraseKey.monday),
            style: Theme.of(context).textTheme.labelMedium),
        Text(openingHours.monday.open,
            style: Theme.of(context).textTheme.labelMedium),
        Text(openingHours.monday.close,
            style: Theme.of(context).textTheme.labelMedium),
      ],
    );
  }
}
