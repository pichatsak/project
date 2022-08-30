import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get_storage/get_storage.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:location/location.dart';

class MapChoosePin extends StatefulWidget {
  // ignore: prefer_const_constructors_in_immutables
  MapChoosePin({Key? key}) : super(key: key);

  @override
  State<MapChoosePin> createState() => _MapChoosePinState();
}

class _MapChoosePinState extends State<MapChoosePin> {
  // Completer<GoogleMapController> controllerMap = Completer();
  late GoogleMapController controllerMap;
  Location location = Location();

  final box = GetStorage();
  bool isComLoad = false;
  late LatLng curChoose;
  @override
  void initState() {
    super.initState();
  }

  Map<MarkerId, Marker> markers = <MarkerId, Marker>{};

  Future<LocationData?> _currentLocation() async {
    bool serviceEnabled;
    PermissionStatus permissionGranted;

    Location location = Location();

    serviceEnabled = await location.serviceEnabled();
    if (!serviceEnabled) {
      serviceEnabled = await location.requestService();
      if (!serviceEnabled) {
        return null;
      }
    }

    permissionGranted = await location.hasPermission();
    if (permissionGranted == PermissionStatus.denied) {
      permissionGranted = await location.requestPermission();
      if (permissionGranted != PermissionStatus.granted) {
        return null;
      }
    }
    return await location.getLocation();
  }

  final Completer<GoogleMapController> _controllerMap = Completer();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          FutureBuilder<LocationData?>(
            future: _currentLocation(),
            builder: (BuildContext context, AsyncSnapshot<dynamic> snapchat) {
              if (snapchat.hasData) {
                final LocationData currentLocation = snapchat.data;
                return GoogleMap(
                  mapType: MapType.normal,
                  initialCameraPosition: CameraPosition(
                      target: LatLng(currentLocation.latitude!,
                          currentLocation.longitude!),
                      zoom: 15),
                  myLocationEnabled: true,
                  onMapCreated: (GoogleMapController controller) {
                    _controllerMap.complete(controller);
                  },
                  onTap: (latlang) {
                    markers.clear();
                    addMaker(latlang);
                  },
                  markers: markers.values.toSet(),
                );
              }
              return Center(
                  child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  CircularProgressIndicator(),
                  Padding(
                    padding: EdgeInsets.only(top: 15),
                    child: Text("กำลังโหลดแผนที่"),
                  )
                ],
              ));
            },
          ),
          isComLoad ? getBtnChoose() : const Center()
        ],
      ),
    );
  }

  Widget getBtnChoose() {
    return Positioned.fill(
      child: Align(
          alignment: Alignment.bottomCenter,
          child: InkWell(
            onTap: () {
              Navigator.pop(context, 'yes');
            },
            child: Padding(
              padding: const EdgeInsets.only(bottom: 10, left: 10, right: 10),
              child: Container(
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 1, 72, 82),
                  borderRadius: BorderRadius.circular(90),
                ),
                height: 60,
                child: const Center(
                  child: Text("ยืนยันตำแหน่งนี้",
                      style: TextStyle(
                          fontSize: 17,
                          color: Colors.white,
                          fontFamily: "Prompt-Medium")),
                ),
              ),
            ),
          )),
    );
  }

  void addMaker(LatLng latlang) {
    MarkerId markerId = const MarkerId("current");

    // creating a new MARKER
    final Marker marker = Marker(
      markerId: markerId,
      position: latlang,
      infoWindow: const InfoWindow(title: "ตำแหน่งนี้", snippet: '*'),
      onTap: () {},
    );
    box.write("tempLat", latlang.latitude);
    box.write("tempLong", latlang.longitude);
    setState(() {
      markers[const MarkerId('place_name')] = marker;
      isComLoad = true;
      curChoose = latlang;
    });
  }
}
