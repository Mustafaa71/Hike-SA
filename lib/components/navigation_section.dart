import 'package:flutter/material.dart';
import 'package:flutter_project_2/constants.dart';
import 'package:flutter_project_2/pages/personal_page.dart';

class NavigationSection extends StatelessWidget {
  const NavigationSection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(15.0),
      decoration:
          const BoxDecoration(color: Constants.kBoxColor, borderRadius: BorderRadius.all(Radius.circular(20.0))),
      child: Stack(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              const Icon(Icons.home_outlined, size: 45.0, color: Constants.kIconsColor),
              const Icon(Icons.data_saver_on_sharp, size: 45.0, color: Constants.kIconsColor),
              InkWell(
                onTap: () {
                  Navigator.push<void>(context, MaterialPageRoute(builder: ((context) => const PersonalPage())));
                },
                child: const Icon(Icons.person_outline_outlined, size: 45.0, color: Constants.kIconsColor),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
