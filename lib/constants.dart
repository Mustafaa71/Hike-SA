import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class Constants {
  static const kBackgroundColor = Color(0xFF222222);
  static const kFontsColor = Colors.white;
  static const kIconsColor = Color(0xFF7DD1FE);
  static const kBoxColor = Color(0xFF333333);
  static const double latitude = 24.774265;
  static const double longitude = 46.738586;

  static const CameraPosition initialCameraPosition = CameraPosition(
    target: LatLng(latitude, longitude),
    zoom: 15.0,
  );

  static const opacity = 0.5;
  static const bluradius = 7.0;
  static const spreadradius = 1.5;
  static const categorycontainer = 90.0;
  static const categorycontainerpositioned = 40.0;
  static const eventscardhight = 200.0;
  static const imagenetworkheight = 150.0;
  static const settingiconsize = 40.0;
  static const qrimagesize = 300.0;
  static const sizingticketpadd = 30.0;
  static const sizingticketmar = 30.0;
  static const kImageheader = 500.0;
  static const kTwinheight = 200.0;
  static const kFifthheight = 200.0;
  static const kSizedBoxH = 100.0;
  static const kSizedBoxF = 100.0;
  static const kPositionedL = 20.0;
  static const kPositionedR = 50.0;

  static getLocation() async {
    await Geolocator.checkPermission();
    await Geolocator.requestPermission();

    Position position = await Geolocator.getCurrentPosition(
      desiredAccuracy: LocationAccuracy.best,
    );
    print('this lat: ${position.latitude}');
    print(position.longitude);
  }
}
