import 'package:flutter/material.dart';

class ReusableButton extends StatelessWidget {
  final VoidCallback onPressed;
  const ReusableButton({
    Key? key,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Container(
        padding: const EdgeInsets.all(30.0),
        decoration: const BoxDecoration(color: Colors.blue, borderRadius: BorderRadius.all(Radius.circular(30.0))),
        width: double.infinity,
        margin: const EdgeInsets.symmetric(vertical: 20.0),
        child: const Align(
          alignment: Alignment.center,
          child: Text(
            'Book Now',
            style: TextStyle(color: Colors.white, fontSize: 25.0),
          ),
        ),
      ),
    );
  }
}
