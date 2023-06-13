import 'package:doctor_pert/translation.dart';
import 'package:flutter/material.dart';

class StepperPersonDetails extends StatefulWidget {
  final void Function(String) onFirstNameChanged;
  final void Function(String) onLastNameChanged;
  final void Function(String) onEmailChanged;
  final void Function(String) onPhoneChanged;
  const StepperPersonDetails(
      {super.key,
      required this.onFirstNameChanged,
      required this.onLastNameChanged,
      required this.onEmailChanged,
      required this.onPhoneChanged});

  @override
  State<StepperPersonDetails> createState() => _StepperPersonDetailsState();
}

class _StepperPersonDetailsState extends State<StepperPersonDetails> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextFormField(
          onChanged: widget.onFirstNameChanged,
          decoration: InputDecoration(
              labelText: t(PhraseKey.first_name),
              hintText: t(PhraseKey.first_name_hint)),
        ),
        TextFormField(
          onChanged: widget.onLastNameChanged,
          decoration: InputDecoration(
              labelText: t(PhraseKey.last_name),
              hintText: t(PhraseKey.last_name_hint)),
        ),
        TextFormField(
          onChanged: widget.onEmailChanged,
          decoration: InputDecoration(
              labelText: t(PhraseKey.phone), hintText: t(PhraseKey.phone_hint)),
        ),
        TextFormField(
          onChanged: widget.onPhoneChanged,
          decoration: InputDecoration(
              labelText: t(PhraseKey.email), hintText: t(PhraseKey.email_hint)),
        ),
      ],
    );
  }
}
