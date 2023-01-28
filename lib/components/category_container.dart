import 'package:flutter/material.dart';
import 'package:flutter_project_2/constants.dart';

class CategoryContainer extends StatelessWidget {
  final IconData icon;
  final String label;
  final VoidCallback? onTap;
  const CategoryContainer({
    Key? key,
    required this.icon,
    required this.label,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: InkWell(
        onTap: onTap,
        child: Container(
          height: 90.0,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15.0),
            color: kBoxColor,
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Stack(
              children: [
                Text(
                  label,
                  style: const TextStyle(
                    fontSize: 25.0,
                    color: kFontsColor,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Positioned(
                  bottom: 0,
                  right: 0,
                  child: Icon(
                    icon,
                    size: 40.0,
                    color: kIconsColor,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
