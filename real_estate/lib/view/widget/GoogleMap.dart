import 'dart:async';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class MapSample extends StatelessWidget {
  final LatLng latLng;
  const MapSample({Key? key, required this.latLng}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final Completer<GoogleMapController> _controller =
    Completer<GoogleMapController>();
      CameraPosition kGooglePlex = CameraPosition(
      target: latLng,
      zoom: 14.4746,
    );
    return  GoogleMap(
      indoorViewEnabled: true,
      liteModeEnabled: true,
      mapType: MapType.normal,
      initialCameraPosition: kGooglePlex,
      onMapCreated: (GoogleMapController controller) {
        _controller.complete(controller);
      },

    );
  }
}
