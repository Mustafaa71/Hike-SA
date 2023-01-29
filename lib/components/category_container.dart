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
          decoration:
              const BoxDecoration(color: Constants.kBoxColor, borderRadius: BorderRadius.all(Radius.circular(15.0))),
          height: Constants.categorycontainer,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Stack(children: [
              Text(
                label,
                style: const TextStyle(color: Constants.kFontsColor, fontSize: 25.0, fontWeight: FontWeight.bold),
              ),
              Positioned(
                right: 0,
                bottom: 0,
                child: Icon(icon, size: Constants.categorycontainerpositioned, color: Constants.kIconsColor),
              ),
            ]),
          ),
        ),
      ),
    );
  }
}
