import 'package:flutter/material.dart';

class LogoutButton extends StatelessWidget {
  const LogoutButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20.0),
      decoration: const BoxDecoration(color: Color(0xFF432c30)),
      width: double.infinity,
      child: const Text(
        'Logout',
        style: TextStyle(color: Color(0xFFd66768), fontSize: 25.0, fontWeight: FontWeight.bold),
        textAlign: TextAlign.center,
      ),
    );
  }
}
