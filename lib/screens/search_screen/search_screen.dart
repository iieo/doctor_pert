import 'package:doctor_pert/screens/home_screen/components/osm_map.dart';
import 'package:flutter/material.dart';
import 'package:latlong2/latlong.dart';

class SearchScreen extends StatelessWidget {
  final String searchQuery;
  final LatLng location;

  const SearchScreen(
      {super.key, required this.searchQuery, required this.location});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
            flex: 1,
            child: ListView.builder(
                itemCount: 40,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text("Test $index"),
                  );
                })),
        const Expanded(
          flex: 2,
          child: OSMMap(),
        )
      ],
    );
  }
}
