import 'package:flutter/material.dart';
import 'package:flutter_project_2/constants.dart';
import 'package:flutter_project_2/pages/ticket_page.dart';

class AppbarSection extends StatelessWidget {
  const AppbarSection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        /// Welcome Section .....
        const Text(
          'Welcome\nMustafa',
          style: TextStyle(
            color: Constants.kFontsColor,
            fontSize: 40.0,
            fontWeight: FontWeight.bold,
          ),
        ),

        /// Icon Section .....
        InkWell(
          onTap: () {
            Navigator.push<void>(
              context,
              MaterialPageRoute(
                builder: ((context) => const TicketPage()),
              ),
            );
          },
          child: Container(
            padding: const EdgeInsets.all(8.0),
            decoration: BoxDecoration(
              color: Constants.kBoxColor,
              borderRadius: const BorderRadius.all(Radius.circular(15.0)),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(Constants.opacity),
                  offset: const Offset(4, 4),
                  blurRadius: Constants.bluradius,
                  spreadRadius: Constants.spreadradius,
                ),
              ],
            ),
            child: const Icon(Icons.notifications_outlined, size: 50.0, color: Constants.kIconsColor),
          ),
        ),
      ],
    );
  }
}
