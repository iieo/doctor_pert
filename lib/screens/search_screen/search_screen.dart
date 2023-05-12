import 'package:doctor_pert/models/doctor.dart';
import 'package:doctor_pert/models/dummy_data.dart';
import 'package:doctor_pert/screens/home_screen/components/osm_map.dart';
import 'package:doctor_pert/screens/search_screen/components/doctor_card.dart';
import 'package:doctor_pert/screens/search_screen/components/doctor_overview.dart';
import 'package:flutter/material.dart';
import 'package:latlong2/latlong.dart';
import 'package:local_hero/local_hero.dart';

class SearchScreen extends StatefulWidget {
  final String searchQuery;
  final LatLng location;

  const SearchScreen(
      {super.key, required this.searchQuery, required this.location});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  final List<Doctor> doctors = [doctor1];
  int _selectedIndex = -1;

  @override
  Widget build(BuildContext context) {
    return LocalHeroScope(
        child: Row(
      children: [
        Visibility(
            visible: _selectedIndex < 0,
            child: Expanded(
                child: ListView.builder(
                    itemCount: 40,
                    itemBuilder: (context, index) {
                      //build card
                      return GestureDetector(
                          onTap: () {
                            setState(() {
                              _selectedIndex = index;
                            });
                          },
                          child:
                              LocalHero(tag: "id$index", child: DoctorCard()));
                    }))),
        _selectedIndex >= 0
            ? Expanded(
                flex: 2,
                child: LocalHero(
                    tag: "id$_selectedIndex",
                    child: DoctorOverview(
                        doctor: doctors[_selectedIndex],
                        popOverview: () {
                          setState(() {
                            _selectedIndex = -1;
                          });
                        })))
            : const SizedBox.shrink(),
        const Expanded(
          flex: 2,
          child: OSMMap(),
        )
      ],
    ));
  }
}
