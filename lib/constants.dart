import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class Constants {
  static const kBackgroundColor = Color(0xFF222222);
  static const kFontsColor = Colors.white;
  static const kIconsColor = Color(0xFF7dd2ff);
  static const kBoxColor = Color(0xFF333333);
  static const double latitude = 24.694969;
  static const double longitude = 46.724129;

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
  static const settingiconsize = 150.0;
  static const qrimagesize = 300.0;
  static const sizingticketpadd = 30.0;
  static const sizingticketmar = 30.0;
}
