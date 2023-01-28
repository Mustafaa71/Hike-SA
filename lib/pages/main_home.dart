import 'package:flutter/material.dart';
import 'package:flutter_project_2/components/appbar_section.dart';
import 'package:flutter_project_2/components/category_section.dart';
import 'package:flutter_project_2/components/navigation_section.dart';
import 'package:flutter_project_2/components/search_section.dart';
import 'package:flutter_project_2/constants.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
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
            SearchField(),
            SizedBox(height: 12.0),

            /// Map section .....
            SizedBox(
              height: 355.0,
              width: double.infinity,
              child: GoogleMap(
                initialCameraPosition: initialCameraPosition,
                mapType: MapType.hybrid,
              ),
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
