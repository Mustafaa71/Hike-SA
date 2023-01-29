import 'package:flutter/material.dart';
import 'package:flutter_project_2/constants.dart';

import 'main_home.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const MainHome(),
      theme: ThemeData(
        scaffoldBackgroundColor: Constants.kBackgroundColor,
        fontFamily: 'Montserrat',
        appBarTheme: const AppBarTheme(color: Constants.kBackgroundColor),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}
