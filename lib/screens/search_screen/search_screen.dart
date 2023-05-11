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
          child: Container(
            color: Colors.red,
            child: Text("Search Screen"),
          ),
        )
      ],
    );
  }
}
