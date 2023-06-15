import 'package:doctor_pert/models/person/person.dart';
import 'package:doctor_pert/translation.dart';
import 'package:flutter/material.dart';

class StepperPersonDetails extends StatefulWidget {
  final Person patient;
  const StepperPersonDetails({super.key, required this.patient});

  @override
  State<StepperPersonDetails> createState() => _StepperPersonDetailsState();
}

class _StepperPersonDetailsState extends State<StepperPersonDetails> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextFormField(
          onChanged: (value) => widget.patient.firstName = value,
          decoration: InputDecoration(
              labelText: t(PhraseKey.first_name),
              hintText: t(PhraseKey.first_name_hint)),
        ),
        TextFormField(
          onChanged: (value) => widget.patient.lastName = value,
          decoration: InputDecoration(
              labelText: t(PhraseKey.last_name),
              hintText: t(PhraseKey.last_name_hint)),
        ),
        TextFormField(
          onChanged: (value) => widget.patient.phone = value,
          decoration: InputDecoration(
              labelText: t(PhraseKey.phone), hintText: t(PhraseKey.phone_hint)),
        ),
        TextFormField(
          onChanged: (value) => widget.patient.email = value,
          decoration: InputDecoration(
              labelText: t(PhraseKey.email), hintText: t(PhraseKey.email_hint)),
        ),
      ],
    );
  }
}
