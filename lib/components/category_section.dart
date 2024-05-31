import 'package:flutter/material.dart';
import 'package:flutter_project_2/components/category_container.dart';
import 'package:flutter_project_2/pages/events_page.dart';
import 'package:flutter_project_2/pages/news_page.dart';
import 'package:flutter_project_2/pages/offers_page.dart';

class CategorySection extends StatelessWidget {
  const CategorySection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            CategoryContainer(
              icon: Icons.newspaper_rounded,
              label: 'News',
              onTap: (() {
                Navigator.push<void>(context, MaterialPageRoute(builder: ((context) => const NewsPage())));
              }),
            ),
            const SizedBox(width: 8.0),
            CategoryContainer(
              icon: Icons.location_on_outlined,
              label: 'Events',
              onTap: (() {
                showModalBottomSheet<void>(
                  context: context,
                  builder: ((context) {
                    return const EventsPage();
                  }),
                );
              }),
            ),
          ],
        ),
        const SizedBox(height: 8.0),
        Row(
          children: [
            CategoryContainer(
              icon: Icons.discount_outlined,
              label: 'Offers',
              onTap: (() {
                Navigator.push<void>(context, MaterialPageRoute(builder: ((context) => const OffersPage())));
              }),
            ),
            const SizedBox(width: 8),
            CategoryContainer(
              icon: Icons.card_giftcard_rounded,
              label: 'Gifts',
              onTap: (() {
                // Constants.getLocation();
              }),
            ),
          ],
        ),
      ],
    );
  }
}
