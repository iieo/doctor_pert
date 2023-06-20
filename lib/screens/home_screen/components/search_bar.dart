import 'dart:convert';

import 'package:doctor_pert/models/medical_practice/doctor_type.dart';
import 'package:doctor_pert/translation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_typeahead/flutter_typeahead.dart';
import 'package:go_router/go_router.dart';
import 'package:http/http.dart' as http;
import 'package:latlong2/latlong.dart';

class DoctorSearchBar extends StatelessWidget {
  DoctorSearchBar({super.key});

  final TextEditingController _searchController = TextEditingController();
  final TextEditingController _locationController = TextEditingController();

  void _navigateToSearch(BuildContext context) {
    String searchQuery = _searchController.text;
    String location = "0,0";
    GoRouter.of(context).go(
      "/search?searchQuery=$searchQuery&location=$location",
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        //add shadow
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 0,
              blurRadius: 5,
              offset: const Offset(0, 3), // changes position of shadow
            ),
          ],
        ),
        child: Row(
          children: [
            Expanded(
              child: DoctorTypeAhead(),
            ),
            const VerticalDivider(
              color: Colors.black,
              thickness: 1,
              width: 1,
            ),
            Expanded(child: GeoTypeAhead()),
            ElevatedButton.icon(
                onPressed: () => _navigateToSearch(context),
                style: TextButton.styleFrom(
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(10),
                      topRight: Radius.circular(10),
                    ),
                  ),
                ),
                icon: const Icon(
                  Icons.search,
                  color: Colors.black,
                ),
                label: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 16),
                    child: Text(
                      t(PhraseKey.search),
                      style: Theme.of(context).textTheme.labelMedium,
                    )))
          ],
        ));
  }
}

class DoctorTypeAhead extends StatefulWidget {
  const DoctorTypeAhead({super.key});

  @override
  State<DoctorTypeAhead> createState() => DoctorTypeAheadState();
}

class DoctorTypeAheadState extends State<DoctorTypeAhead> {
  Future<List<DoctorType>> _getSuggestions(String query) async {
    return DoctorType.list
        .where((element) =>
            element.toString().toLowerCase().contains(query.toLowerCase()))
        .toList();
  }

  @override
  Widget build(BuildContext context) {
    final TextEditingController _controller = TextEditingController();

    return TypeAheadField(
      textFieldConfiguration: TextFieldConfiguration(
        controller: _controller,
        decoration: InputDecoration(
          fillColor: Colors.white,
          hintText: t(PhraseKey.searchDoctor),
          prefixIcon: const Icon(Icons.search),
          border: const OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(10),
              topLeft: Radius.circular(10),
            ),
          ),
        ),
      ),
      suggestionsCallback: _getSuggestions,
      itemBuilder: (BuildContext context, Object? suggestion) {
        if (suggestion == null) {
          return const SizedBox.shrink();
        }
        return ListTile(
            leading: Icon((suggestion as DoctorType).iconData),
            title: Text(suggestion.toString()));
      },
      onSuggestionSelected: (Object? suggestion) {
        if (suggestion == null) {
          return;
        }
        _controller.text = suggestion.toString();
      },
    );
  }
}

class GeoTypeAhead extends StatefulWidget {
  final String apiKey = "a84268c387aa4c4291eed3af2d421ea7";
  const GeoTypeAhead({super.key});

  @override
  State<GeoTypeAhead> createState() => _GeoTypeAheadState();
}

class _GeoTypeAheadState extends State<GeoTypeAhead> {
  final TextEditingController _controller = TextEditingController();
  LatLng? _location;

  @override
  Widget build(BuildContext context) {
    return TypeAheadField(
      textFieldConfiguration: TextFieldConfiguration(
        controller: _controller,
        decoration: InputDecoration(
          fillColor: Colors.white,
          hintText: t(PhraseKey.searchZip),
          prefixIcon: const Icon(Icons.location_pin),
          border: const OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.zero,
          ),
        ),
      ),
      suggestionsCallback: (pattern) async {
        //final response = await http.get(Uri.parse(
        //    'https://api.geoapify.com/v1/geocode/autocomplete?text=$pattern&limit=5&apiKey=${widget.apiKey}'));
        final response = await http.get(Uri.parse(
            'https://api.geoapify.com/v2/places?categories=healthcare&text=$pattern&limit=5&apiKey=${widget.apiKey}'));
        if (response.statusCode == 200) {
          final data = jsonDecode(response.body);
          return data['features'];
        } else {
          return [];
        }
      },
      itemBuilder: (BuildContext context, Object? suggestion) {
        if (suggestion == null) {
          return const SizedBox.shrink();
        }
        return ListTile(
          title: Text(
              (suggestion as Map<String, dynamic>)['properties']['formatted']),
        );
      },
      onSuggestionSelected: (Object? suggestion) {
        if (suggestion == null) {
          return;
        }
        final suggestionMap = suggestion as Map<String, dynamic>;
        final lat = suggestionMap['properties']['lat'];
        final lon = suggestionMap['properties']['lon'];
        _location = LatLng(lat, lon);
        _controller.text = suggestionMap['properties']['formatted'];
      },
    );
  }
}
