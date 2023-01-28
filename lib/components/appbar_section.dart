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
            color: kFontsColor,
            fontSize: 40.0,
            fontWeight: FontWeight.bold,
          ),
        ),

        /// Icon Section .....
        InkWell(
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: ((context) => const TicketPage())));
          },
          child: Container(
            padding: const EdgeInsets.all(8.0),
            decoration: BoxDecoration(
              color: kBoxColor,
              borderRadius: BorderRadius.circular(15.0),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.5),
                  spreadRadius: 0.5,
                  blurRadius: 4.0,
                  offset: const Offset(4, 4),
                ),
              ],
            ),
            child: const Icon(
              Icons.notifications_outlined,
              color: kIconsColor,
              size: 50.0,
            ),
          ),
        )
      ],
    );
  }
}
