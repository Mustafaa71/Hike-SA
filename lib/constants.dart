import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

const kBackgroundColor = Color(0xFF222222);
const kFontsColor = Colors.white;
const kIconsColor = Color(0xFF7dd2ff);
const kBoxColor = Color(0xFF333333);

/// Google Configurations
const double latitude = 24.694969;
const double longitude = 46.724129;

const CameraPosition initialCameraPosition = CameraPosition(
  target: LatLng(latitude, longitude),
  zoom: 15.0,
);
