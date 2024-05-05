import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class MapScreen extends StatefulWidget {
  const MapScreen({super.key});

  @override
  State<MapScreen> createState() => _MapScreenState();
}

class _MapScreenState extends State<MapScreen> {
  List<Marker> markers = [
    const Marker(
        markerId: MarkerId("1"), position: LatLng(24.713552, 46.675297))
  ];

  final Completer<GoogleMapController> _controller =
      Completer<GoogleMapController>();

  CameraPosition cameraPosition = const CameraPosition(
    target: LatLng(24.713552, 46.675297),
    zoom: 14.4746,
  );
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 200,
          child: GoogleMap(
            mapType: MapType.normal,
            markers: markers.toSet(),
            initialCameraPosition: cameraPosition,
            onMapCreated: (GoogleMapController controller) {
              _controller.complete(controller);
            },
          ),
        )
      ],
    );
  }
}
