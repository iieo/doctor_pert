import 'package:doctor_pert/screens/home_screen/components/map_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_map/plugin_api.dart';
import 'package:geolocator/geolocator.dart';
import 'package:latlong2/latlong.dart';

class OSMMap extends StatefulWidget {
  const OSMMap({super.key});

  @override
  State<OSMMap> createState() => _OSMMapState();
}

class _OSMMapState extends State<OSMMap> {
  double _zoom = 15.0;
  late MapController _mapController;

  @override
  void initState() {
    super.initState();
    _mapController = MapController();
    _moveToLocation();
  }

  void _zoomIn() {
    setState(() {
      _zoom++;
    });
    _mapController.move(_mapController.center, _zoom);
  }

  void _zoomOut() {
    setState(() {
      _zoom--;
    });
    _mapController.move(_mapController.center, _zoom);
  }

  void _moveToLocation() async {
    await Geolocator.requestPermission();

    if (!await Geolocator.isLocationServiceEnabled()) {
      return;
    }

    Position position = await Geolocator.getCurrentPosition(
        desiredAccuracy: LocationAccuracy.high);
    _mapController.move(LatLng(position.latitude, position.longitude), _zoom);
  }

  @override
  Widget build(BuildContext context) {
    return FlutterMap(
      //add zoom buttons
      //osm credits
      nonRotatedChildren: [
        Positioned(
          bottom: 10,
          right: 10,
          child: Column(
            children: [
              MapButton(onPressed: _zoomIn, icon: Icons.add),
              const SizedBox(height: 5),
              MapButton(onPressed: _zoomOut, icon: Icons.remove)
            ],
          ),
        ),
        Positioned(
          bottom: 10,
          left: 10,
          child: TextButton(
              onPressed: () {},
              child: Text(
                '© OpenStreetMap contributors',
                style: Theme.of(context).textTheme.labelSmall,
              )),
        )
      ],
      mapController: _mapController,
      options: MapOptions(
          center: LatLng(51.5, -0.09), zoom: _zoom, enableScrollWheel: false),
      children: [
        TileLayer(
          urlTemplate:
              'https://api.maptiler.com/maps/basic/{z}/{x}/{y}.png?key=hQaBTBuPKEQ3xuoB1MZf',
        ),
      ],
    );
  }
}
