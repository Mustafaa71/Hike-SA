import 'package:flutter/material.dart';
import 'package:flutter_project_2/constants.dart';

class OtherSetting extends StatelessWidget {
  final IconData icon;
  final String label;
  const OtherSetting({
    Key? key,
    required this.icon,
    required this.label,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          icon,
          color: kIconsColor,
          size: 40.0,
        ),
        const SizedBox(width: 12.0),
        Text(
          label,
          style: const TextStyle(
            color: kFontsColor,
            fontSize: 20.0,
          ),
        ),
        const Spacer(),
        const Icon(
          Icons.chevron_right_sharp,
          color: kIconsColor,
          size: 35.0,
        ),
      ],
    );
  }
}
