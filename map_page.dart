import 'dart:async';
import 'dart:html';

import 'package:flutter/material.dart';
import 'package:flutter_geocoder/geocoder.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class MapPage extends StatefulWidget {
  const MapPage({super.key});

  @override
  State<MapPage> createState() => _MapPageState();
}

class _MapPageState extends State<MapPage> {
  @override
    Completer<GoogleMapController>_controller = Completer();
     final CameraPosition _kGooglePlex = const CameraPosition(
      target: LatLng(26.2124, 78.1772),
      zoom: 14.4746,
    );

    List<Marker> marker = [];
      final List<Marker>list = const[
        Marker(
          markerId: MarkerId('1'),
          position: LatLng(26.198023, 78.218544),
          infoWindow: InfoWindow(
            title: 'My current location'
          )
        ),
        Marker(
          markerId: MarkerId('2'),
          position: LatLng(26.204594, 78.22210),
          infoWindow: InfoWindow(
            title: 'Hurawali'
          )
        ),
        Marker(
          markerId: MarkerId('3'),
          position: LatLng(26.20536, 78.19957),
          infoWindow: InfoWindow(
            title: 'Govindpuri'
          )
        ),
        Marker(
          markerId: MarkerId('4'),
          position: LatLng(26.1872696, 78.21557),
          infoWindow: InfoWindow(
            title: 'Collectrate Road'
          )
        ),
      ];

      void initState(){
        super.initState();
        marker.addAll(list);
      }
      Widget build(BuildContext context){
        return Scaffold(
      body: GoogleMap(initialCameraPosition: _kGooglePlex,
      markers: Set<Marker>.of(marker),
      mapType: MapType.hybrid,
      onMapCreated: (GoogleMapController controller){
        _controller.complete(controller);
      }
      
      ),
    );
  }
}