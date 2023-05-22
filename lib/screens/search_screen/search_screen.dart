import 'package:animations/animations.dart';
import 'package:doctor_pert/models/doctor.dart';
import 'package:doctor_pert/models/dummy_data.dart';
import 'package:doctor_pert/screens/home_screen/components/osm_map.dart';
import 'package:doctor_pert/screens/search_screen/components/doctor_card.dart';
import 'package:doctor_pert/screens/search_screen/components/overview/animated_overview.dart';
import 'package:doctor_pert/screens/search_screen/components/overview/overview.dart';
import 'package:flutter/material.dart';
import 'package:flutter_map/plugin_api.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
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
  final List<Doctor> doctors = List.generate(40, (index) => doctor1);
  int _selectedIndex = -1;

  List<Marker> _getMarkersOfDoctors() {
    List<Marker> markers = [];
    for (int i = 0; i < doctors.length; i++) {
      for (LatLng location in doctors[i].locations) {
        Marker marker = Marker(
            width: 55.0,
            height: 55.0,
            point: LatLng(location.latitude, location.longitude),
            builder: (ctx) => GestureDetector(
                onTap: () {
                  setState(() {
                    _selectedIndex = i;
                  });
                },
                child: Container(
                  decoration: BoxDecoration(
                      color: _selectedIndex == i
                          ? Theme.of(context)
                              .colorScheme
                              .primary
                              .withOpacity(0.5)
                          : Colors.white,
                      borderRadius: BorderRadius.circular(100),
                      border: Border.all(
                          color: _selectedIndex == i
                              ? Theme.of(context).colorScheme.onPrimary
                              : Theme.of(context).colorScheme.primary,
                          width: 3)),
                  child: Center(
                      child: FaIcon(
                    Doctor.getIconData(doctors[i].type),
                    color: _selectedIndex == i
                        ? Theme.of(context).colorScheme.onPrimary
                        : Theme.of(context).colorScheme.primary,
                  )),
                )));
        markers.add(marker);
      }
    }
    return markers;
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
            flex: 2,
            child: AnimatedOverview(
              doctors: doctors,
              setIndex: (index) {
                setState(() {
                  _selectedIndex = index;
                });
              },
              selectedIndex: _selectedIndex,
            )),
        Expanded(
          flex: 3,
          child: OSMMap(
            markers: _getMarkersOfDoctors(),
          ),
        )
      ],
    );
  }
}
