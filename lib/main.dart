import 'package:flutter/material.dart';
import 'package:flutter_project_2/constants.dart';
import 'package:flutter_project_2/pages/main_home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        appBarTheme: const AppBarTheme(color: kBackgroundColor),
        scaffoldBackgroundColor: kBackgroundColor,
        fontFamily: 'Montserrat',
      ),
      debugShowCheckedModeBanner: false,
      home: const MainPage(),
    );
  }
}
