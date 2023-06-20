import 'dart:convert';
import 'dart:io';
import 'package:http/http.dart' as http;

void main() async {
  print("Fetching...");
  List<dynamic> data = await getHealthcareFacilities();
  String currentDirectory = Directory.current.path;
  saveHealthcareFacilities(
      data, '$currentDirectory/healthcare_facilities.json');
  print("Done.");
}

Future<List<dynamic>> getHealthcareFacilities() async {
  // OSM Overpass API-Abfrage für Einrichtungen im Healthcare-Bereich in Deutschland und Österreich
  final overpassUrl = Uri.parse('https://overpass-api.de/api/interpreter');
  final overpassQuery = '''
    [out:json];
    area["ISO3166-1"="DE"]->.de;
    area["ISO3166-1"="AT"]->.at;
    ((
      // Krankenhäuser (hospitals) in Deutschland
      node["amenity"="hospital"](area.de);
      way["amenity"="hospital"](area.de);
      relation["amenity"="hospital"](area.de);
    );(
      // Ärzte (doctors) in Deutschland
      node["amenity"="doctors"](area.de);
      way["amenity"="doctors"](area.de);
      relation["amenity"="doctors"](area.de);
    );(
      // Zahnärzte (dentists) in Deutschland
      node["amenity"="dentist"](area.de);
      way["amenity"="dentist"](area.de);
      relation["amenity"="dentist"](area.de);
    );(
      // Weitere Healthcare-Einrichtungen in Deutschland
      node["amenity"="clinic"](area.de);
      way["amenity"="clinic"](area.de);
      relation["amenity"="clinic"](area.de);
      node["amenity"="pharmacy"](area.de);
      way["amenity"="pharmacy"](area.de);
      relation["amenity"="pharmacy"](area.de);
      node["amenity"="nursing_home"](area.de);
      way["amenity"="nursing_home"](area.de);
      relation["amenity"="nursing_home"](area.de);
    );(
      // Krankenhäuser (hospitals) in Österreich
      node["amenity"="hospital"](area.at);
      way["amenity"="hospital"](area.at);
      relation["amenity"="hospital"](area.at);
    );(
      // Ärzte (doctors) in Österreich
      node["amenity"="doctors"](area.at);
      way["amenity"="doctors"](area.at);
      relation["amenity"="doctors"](area.at);
    );(
      // Zahnärzte (dentists) in Österreich
      node["amenity"="dentist"](area.at);
      way["amenity"="dentist"](area.at);
      relation["amenity"="dentist"](area.at);
    );(
      // Weitere Healthcare-Einrichtungen in Österreich
      node["amenity"="clinic"](area.at);
      way["amenity"="clinic"](area.at);
      relation["amenity"="clinic"](area.at);
      node["amenity"="pharmacy"](area.at);
      way["amenity"="pharmacy"](area.at);
      relation["amenity"="pharmacy"](area.at);
      node["amenity"="nursing_home"](area.at);
      way["amenity"="nursing_home"](area.at);
      relation["amenity"="nursing_home"](area.at);
    ););
    out center;
    ''';

  final response = await http
      .get(overpassUrl.replace(queryParameters: {'data': overpassQuery}));
  final data = json.decode(response.body);

  return data['elements'];
}

void saveHealthcareFacilities(List<dynamic> data, String filename) {
  final jsonString = json.encode(data);
  final file = File(filename);
  print(file.absolute);
  file.createSync();

  file.writeAsString(jsonString);
}
