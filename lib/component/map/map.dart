import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:mobile_store/assets/colors/my_colors.dart';

class MapScreen extends StatefulWidget {
  const MapScreen({super.key});

  @override
  _MapScreenState createState() => _MapScreenState();
}

late final GoogleMapController geoPosition;

class _MapScreenState extends State<MapScreen> {
  static const _initialCameraPosition = CameraPosition(
    target: LatLng(55.755864, 37.617698),
    zoom: 10.0,
  );

  final List<Marker> _origin = [];
  final List<Marker> _list = const [
    Marker(
        markerId: MarkerId('1'),
        position: LatLng(55.7611, 37.8575),
        infoWindow: InfoWindow(title: 'Реутов')),
    Marker(
        markerId: MarkerId('2'),
        position: LatLng(55.651171, 37.430372),
        infoWindow: InfoWindow(title: 'Говорово')),
    Marker(
        markerId: MarkerId('3'),
        position: LatLng(55.9116, 37.7308),
        infoWindow: InfoWindow(title: 'Мытищи')),
    Marker(
        markerId: MarkerId('4'),
        position: LatLng(55.9017, 37.4375),
        infoWindow: InfoWindow(title: 'Химки')),
    Marker(
        markerId: MarkerId('5'),
        position: LatLng(55.5524, 37.7097),
        infoWindow: InfoWindow(title: 'Видное')),
    Marker(
        markerId: MarkerId('6'),
        position: LatLng(55.602445, 37.473374),
        infoWindow: InfoWindow(title: 'Мамыри')),
    Marker(
        markerId: MarkerId('7'),
        position: LatLng(55.545241, 37.589982),
        infoWindow: InfoWindow(title: 'Бутово')),
    Marker(
        markerId: MarkerId('8'),
        position: LatLng(55.625648, 37.849243),
        infoWindow: InfoWindow(title: 'Держинский')),
    Marker(
        markerId: MarkerId('9'),
        position: LatLng(55.845970, 37.362517),
        infoWindow: InfoWindow(title: 'Митино')),
    Marker(
        markerId: MarkerId('10'),
        position: LatLng(55.821401, 37.840100),
        infoWindow: InfoWindow(title: 'Сокольники')),
  ];

  @override
  void initState() {
    super.initState();
    _origin.addAll(
      _list,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        title: const Text('Google Maps'),
      ),
      body: Stack(
        alignment: Alignment.center,
        children: [
          GoogleMap(
            zoomControlsEnabled: true,
            myLocationEnabled: true,
            myLocationButtonEnabled: false,
            initialCameraPosition: _initialCameraPosition,
            onMapCreated: (GoogleMapController controller) {
              geoPosition = controller;
            },
            markers: Set<Marker>.of(_origin),
          ),
          Positioned(
            bottom: 90,
            right: 0,
            child: ElevatedButton(
              style: const ButtonStyle(
                  backgroundColor: MaterialStatePropertyAll(colorWhite)),
              onPressed: () {
                locatePosition();
              },

              child: const Icon(
                Icons.pin_drop,
                color: Colors.blueGrey,
              ),
            ),
          ),
        ],
      ),
    );
  }

  _animateToUser() async {
    await Geolocator.checkPermission();
    await Geolocator.requestPermission();
    return await Geolocator.getCurrentPosition(
        desiredAccuracy: LocationAccuracy.best);
  }

  void locatePosition() async {
    Position position = await _animateToUser();
    LatLng latLatPosition = LatLng(position.latitude, position.longitude);
    CameraPosition cameraPosition =
        CameraPosition(target: latLatPosition, zoom: 14);
    geoPosition
        .animateCamera(CameraUpdate.newCameraPosition(cameraPosition));
      print(position);
    }
  }


const CameraPosition _initialCameraPosition = CameraPosition(
  bearing: 192.8334901395799,
  target: LatLng(37.43296265331129, -122.08832357078792),
  tilt: 59.440717697143555,
  zoom: 19.151926040649414,
);