import 'dart:math';

import 'package:doctor_pert/screens/home_screen/components/osm_map.dart';
import 'package:doctor_pert/screens/home_screen/components/search_bar.dart';
import 'package:doctor_pert/screens/shells/nav_bar/footer.dart';
import 'package:doctor_pert/translation.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double pageWidth = MediaQuery.of(context).size.width * 0.8;
    double pageHeight = MediaQuery.of(context).size.height;
    return SingleChildScrollView(
        child: Column(children: [
      SizedBox(
          height: pageHeight * 0.8,
          child: ConstrainedBox(
            constraints:
                BoxConstraints(maxWidth: min(800, pageWidth), minWidth: 300),
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
              Text(t("appName"),
                  style: Theme.of(context).textTheme.headlineLarge),
              const SizedBox(height: 20),
              Text(t("appSlogan"),
                  style: Theme.of(context).textTheme.headlineSmall),
              const SizedBox(height: 35),
              SearchBar()
            ]),
          )),
      Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Text(t("findOnMap"), style: Theme.of(context).textTheme.headlineMedium),
        const SizedBox(height: 20),
        ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: SizedBox(
              width: pageWidth,
              height: pageHeight * 0.9,
              child: const OSMMap(),
            ))
      ]),
      SizedBox(height: pageHeight * 0.05),
      const Footer()
    ]));
  }
}
