import 'package:doctor_pert/translation.dart';
import 'package:flutter/material.dart';

class StepperPersonDetails extends StatefulWidget {
  const StepperPersonDetails({super.key});

  @override
  State<StepperPersonDetails> createState() => _StepperPersonDetailsState();
}

class _StepperPersonDetailsState extends State<StepperPersonDetails> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextFormField(
          decoration: InputDecoration(
              labelText: t(PhraseKey.first_name),
              hintText: t(PhraseKey.first_name_hint)),
        ),
        TextFormField(
          decoration: InputDecoration(
              labelText: t(PhraseKey.last_name),
              hintText: t(PhraseKey.last_name_hint)),
        ),
        TextFormField(
          decoration: InputDecoration(
              labelText: t(PhraseKey.phone), hintText: t(PhraseKey.phone_hint)),
        ),
        TextFormField(
          decoration: InputDecoration(
              labelText: t(PhraseKey.email), hintText: t(PhraseKey.email_hint)),
        ),
      ],
    );
  }
}
