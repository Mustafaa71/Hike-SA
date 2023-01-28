import 'package:flutter/material.dart';
import 'package:flutter_project_2/constants.dart';
import 'package:flutter_project_2/pages/personal_info_page.dart';

class NavigationSection extends StatelessWidget {
  const NavigationSection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(15.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20.0),
        color: kBoxColor,
      ),
      child: Stack(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              const Icon(
                Icons.home_outlined,
                color: kIconsColor,
                size: 45.0,
              ),
              const Icon(
                Icons.data_saver_on_sharp,
                color: kIconsColor,
                size: 45.0,
              ),
              InkWell(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: ((context) => const PersonalPage())));
                  },
                  child: const Icon(Icons.person_outline_outlined, color: kIconsColor, size: 45.0)),
            ],
          )
        ],
      ),
    );
  }
}
