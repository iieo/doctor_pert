import 'package:doctor_pert/translation.dart';
import 'package:flutter/material.dart';

class StepperControls extends StatelessWidget {
  final int currentStep;
  final int maxStep;
  final ControlsDetails details;
  const StepperControls(
      {super.key,
      required this.currentStep,
      required this.maxStep,
      required this.details});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        if (currentStep == 0)
          TextButton(
              onPressed: () {},
              child: Text(t(PhraseKey.cancel).toUpperCase(),
                  style: Theme.of(context).textTheme.labelMedium)),
        if (currentStep > 0)
          TextButton(
              onPressed: details.onStepCancel,
              child: Text(t(PhraseKey.no_entry).toUpperCase(),
                  style: Theme.of(context).textTheme.labelMedium)),
        if (currentStep < maxStep)
          TextButton(
              onPressed: details.onStepContinue,
              child: Text(t(PhraseKey.no_entry).toUpperCase(),
                  style: Theme.of(context).textTheme.labelMedium)),
        if (currentStep == maxStep)
          TextButton(
              onPressed: () {},
              child: Text(t(PhraseKey.no_entry).toUpperCase(),
                  style: Theme.of(context).textTheme.labelMedium)),
      ],
    );
  }
}
