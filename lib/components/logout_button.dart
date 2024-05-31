import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class LogoutButton extends StatelessWidget {
  const LogoutButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        FirebaseAuth.instance.signOut();
        //
        //ignore: avoid-ignoring-return-values
        Navigator.popAndPushNamed(context, '/');
      },
      child: Container(
        padding: const EdgeInsets.all(20.0),
        decoration: const BoxDecoration(color: Color(0xFF432c30)),
        width: double.infinity,
        child: const Text(
          'Logout',
          style: TextStyle(color: Color(0xFFd66768), fontSize: 25.0, fontWeight: FontWeight.bold),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
