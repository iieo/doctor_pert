import 'package:doctor_pert/translation.dart';
import 'package:flutter/material.dart';

class Footer extends StatelessWidget {
  const Footer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Theme.of(context).colorScheme.primary,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextButton(
              onPressed: () {},
              child: Text(t(PhraseKey.imprint),
                  style: Theme.of(context).textTheme.labelMedium)),
          TextButton(
              onPressed: () {},
              child: Text(t(PhraseKey.contact),
                  style: Theme.of(context).textTheme.labelMedium)),
          TextButton(
              onPressed: () {},
              child: Text(t(PhraseKey.privacy_policy),
                  style: Theme.of(context).textTheme.labelMedium)),
        ],
      ),
    );
  }
}
