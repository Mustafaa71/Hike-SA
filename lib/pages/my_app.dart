import 'package:flutter/material.dart';
import 'package:flutter_project_2/auth.dart';
import 'package:flutter_project_2/constants.dart';
import 'package:flutter_project_2/pages/login_page.dart';
import 'package:flutter_project_2/pages/main_home.dart';
import 'package:flutter_project_2/pages/sign_up.dart';

class MyApp extends StatelessWidget {
  const MyApp({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        '/': (context) => const Auth(),
        'LoginPage': ((context) => const LoginPage()),
        'SignInPage': ((context) => const SignUp()),
        'MainHome': ((context) => const MainHome()),
      },
      theme: ThemeData(
        scaffoldBackgroundColor: Constants.kBackgroundColor,
        fontFamily: 'Montserrat',
        appBarTheme: const AppBarTheme(
          color: Constants.kBackgroundColor,
          elevation: 0,
        ),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}
