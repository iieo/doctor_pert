import 'dart:convert';
import 'dart:io';

void main(List<String> args) {
  print("Parsing...");
  List<dynamic> data = getHealthcareFacilities();
  String currentDirectory = Directory.current.path;
  data = parseData(data);
  save(data, '$currentDirectory/parsed.json');
  print("Done.");
}

List<dynamic> getHealthcareFacilities() {
  final jsonString = readFile('healthcare_facilities.json');
  final data = json.decode(jsonString);
  return data;
}

List<dynamic> parseData(List<dynamic> dataList) {
  List<dynamic> parsedData = [];
  for (dynamic data in dataList) {
    dynamic parsedDataEntry = {};
    parsedDataEntry['name'] = data['tags']['name'];
    parsedDataEntry['amenity'] = data['tags']['amenity'];
    parsedDataEntry['lat'] = data['lat'];
    parsedDataEntry['lon'] = data['lon'];
    parsedDataEntry['opening_hours'] = data['tags']['opening_hours'];
    parsedDataEntry['phone'] = data['tags']['phone'];
    parsedDataEntry['website'] = data['tags']['website'];
    parsedDataEntry['wheelchair'] = data['tags']['wheelchair'];
    parsedDataEntry['addr:street'] = data['tags']['addr:street'];
    parsedDataEntry['addr:housenumber'] = data['tags']['addr:housenumber'];
    parsedDataEntry['addr:postcode'] = data['tags']['addr:postcode'];
    parsedDataEntry['addr:city'] = data['tags']['addr:city'];
    parsedDataEntry['addr:country'] = data['tags']['addr:country'];
    parsedData.add(parsedDataEntry);
  }
  return parsedData;
}

String readFile(String filename) {
  final file = File(filename);
  print("reading file: ${file.absolute}");
  return file.readAsStringSync();
}

void save(List<dynamic> data, String filename) {
  String jsonString = json.encode(data);
  //convert to (UTF-8)
  jsonString = utf8.decode(jsonString.runes.toList());

  final file = File(filename);
  print("writing file: ${file.absolute}");
  file.createSync();

  file.writeAsStringSync(jsonString, encoding: Encoding.getByName('utf-8')!);
}
