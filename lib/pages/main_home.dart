import 'package:flutter/material.dart';
import 'package:flutter_project_2/components/appbar_section.dart';
import 'package:flutter_project_2/components/category_section.dart';
import 'package:flutter_project_2/components/navigation_section.dart';
import 'package:flutter_project_2/components/search_section.dart';
import 'package:flutter_project_2/constants.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class MainHome extends StatefulWidget {
  const MainHome({super.key});

  @override
  State<MainHome> createState() => _MainPageState();
}

class _MainPageState extends State<MainHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 25.0, top: 70.0, right: 25.0),
        child: Column(
          children: const [
            /// Appbar Section .....
            AppbarSection(),
            SizedBox(height: 12.0),

            /// Search field section .....
            SearchSection(),
            SizedBox(height: 12.0),

            /// Map section .....
            SizedBox(
              width: double.infinity,
              height: 355.0,
              child: GoogleMap(initialCameraPosition: Constants.initialCameraPosition, mapType: MapType.hybrid),
            ),
            SizedBox(height: 20.0),

            /// Services Section or category.....
            CategorySection(),
            SizedBox(height: 20.0),

            /// Navigation bar section ...
            NavigationSection(),
          ],
        ),
      ),
    );
  }
}
