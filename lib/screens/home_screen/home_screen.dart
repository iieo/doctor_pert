import 'package:doctor_pert/screens/home_screen/components/osm_map.dart';
import 'package:doctor_pert/screens/home_screen/components/search_bar.dart';
import 'package:doctor_pert/screens/shells/nav_bar/footer.dart';
import 'package:doctor_pert/translation.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Column(children: [
      SizedBox(
          height: MediaQuery.of(context).size.height * 0.8,
          child: ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 800, minWidth: 300),
            child: SearchBar(),
          )),
      Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Text(t("findOnMap"), style: Theme.of(context).textTheme.titleMedium),
        const SizedBox(height: 20),
        ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: SizedBox(
              width: MediaQuery.of(context).size.width * 0.8,
              height: MediaQuery.of(context).size.height * 0.9,
              child: const OSMMap(),
            ))
      ]),
      SizedBox(height: MediaQuery.of(context).size.height * 0.05),
      const Footer()
    ]));
  }
}
