import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_project_2/pages/sign_up.dart';

class LoadingPage extends StatefulWidget {
  const LoadingPage({super.key});

  @override
  State<LoadingPage> createState() => _LoadingPageState();
}

class _LoadingPageState extends State<LoadingPage> {
  @override
  void initState() {
    super.initState();
    loadingDuration();
  }

  Future loadingDuration() async {
    return Timer(const Duration(seconds: 4), route);
  }

  route() {
    Navigator.push<void>(context, MaterialPageRoute(builder: ((context) => const SignUp())));
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Image(
          image: AssetImage('images/hike-sa-low-resolution-logo-black-on-transparent-background.png'),
          color: Colors.green,
        ),
      ),
    );
  }
}
