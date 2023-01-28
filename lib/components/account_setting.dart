import 'package:flutter/material.dart';
import 'package:flutter_project_2/constants.dart';

class AccountSetting extends StatelessWidget {
  const AccountSetting({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(15.0),
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.5),
            spreadRadius: 1.5,
            blurRadius: 7.0,
            offset: const Offset(1, 5),
          ),
        ],
        color: kBoxColor,
        borderRadius: BorderRadius.circular(20.0),
      ),
      child: Row(
        children: [
          Container(
            padding: const EdgeInsets.all(20.0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50.0),
              color: kIconsColor,
            ),
            child: const Text(
              'M',
              style: TextStyle(
                color: kFontsColor,
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          const SizedBox(width: 20.0),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Text(
                'Mustafa Yassin',
                style: TextStyle(
                  color: kFontsColor,
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                '@Mustafa71',
                style: TextStyle(
                  fontSize: 16.0,
                  color: Colors.grey,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
