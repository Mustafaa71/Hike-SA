import 'package:flutter/material.dart';
import 'package:flutter_project_2/constants.dart';

class CartTextDetails extends StatelessWidget {
  final String eventLabel;
  final String eventDetail;
  const CartTextDetails({
    Key? key,
    required this.eventLabel,
    required this.eventDetail,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Align(
        alignment: Alignment.topLeft,
        child: Column(
          children: [
            Row(
              children: [
                Text(
                  eventLabel,
                  style: const TextStyle(
                    color: Constants.kIconsColor,
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(width: 8.0),
                Text(
                  eventDetail,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
