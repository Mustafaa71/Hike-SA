import 'package:flutter/material.dart';
import 'package:flutter_project_2/constants.dart';

class NewsPage extends StatefulWidget {
  const NewsPage({super.key});

  @override
  State<NewsPage> createState() => _NewsPageState();
}

class _NewsPageState extends State<NewsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('News'),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 20.0),
            child: Icon(Icons.camera_alt_outlined, size: 30.0, color: Constants.kIconsColor),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24.0),
        child: ListView(
          children: [
            const SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Column(
                    children: [
                      CircleAvatar(
                        backgroundImage: NetworkImage(
                          'https://images.unsplash.com/photo-1642762890357-910e7be63d82?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80',
                        ),
                        maxRadius: 50.0,
                      ),
                      SizedBox(height: 12.0),
                      Text(
                        'Khobar',
                        style: TextStyle(color: Constants.kFontsColor, fontSize: 20.0),
                      ),
                    ],
                  ),
                  SizedBox(width: 12.0),
                  Column(
                    children: [
                      CircleAvatar(
                        backgroundImage: NetworkImage(
                          'https://images.unsplash.com/photo-1486406146926-c627a92ad1ab?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1770&q=80',
                        ),
                        maxRadius: 50.0,
                      ),
                      SizedBox(height: 12.0),
                      Text(
                        'Riyadh',
                        style: TextStyle(color: Constants.kFontsColor, fontSize: 20.0),
                      ),
                    ],
                  ),
                  SizedBox(width: 12.0),
                  Column(
                    children: [
                      CircleAvatar(
                        backgroundImage: NetworkImage(
                          'https://images.unsplash.com/photo-1585085952480-811ff8859fa1?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80',
                        ),
                        maxRadius: 50.0,
                      ),
                      SizedBox(height: 12.0),
                      Text(
                        'Jeddah',
                        style: TextStyle(color: Constants.kFontsColor, fontSize: 20.0),
                      ),
                    ],
                  ),
                  SizedBox(width: 12.0),
                  Column(
                    children: [
                      CircleAvatar(
                        backgroundImage: NetworkImage(
                          'https://www.saudigazette.com.sa/uploads/images/2020/05/08/1559971.jpg',
                        ),
                        maxRadius: 50.0,
                      ),
                      SizedBox(height: 12.0),
                      Text(
                        'Abha',
                        style: TextStyle(color: Constants.kFontsColor, fontSize: 20.0),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(height: 12.0),
            const Divider(
              thickness: 1.0,
              color: Constants.kIconsColor,
            ),
            const SizedBox(height: 12.0),
            Stack(
              children: [
                Image.network(
                  'https://storage.googleapis.com/alghad-media/2022/07/666c16ff-%D9%85%D9%83%D8%A9-2.jpg',
                  width: double.infinity,
                  height: Constants.kTwinheight,
                  fit: BoxFit.cover,
                ),
                const Positioned(
                  right: 0,
                  bottom: 0,
                  child: Text(
                    'See more...',
                    style: TextStyle(color: Colors.black, fontSize: 50.0, fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 12.0),
            Stack(
              children: [
                Image.network(
                  'https://i0.wp.com/www.saudiseasons.com/wp-content/uploads/2021/05/almadinah-almunawarah-season.jpeg?fit=800%2C473&ssl=1',
                  width: double.infinity,
                  height: Constants.kTwinheight,
                  fit: BoxFit.cover,
                ),
                const Positioned(
                  right: 0,
                  bottom: 0,
                  child: Text(
                    'See more...',
                    style: TextStyle(color: Colors.black, fontSize: 50.0, fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 12.0),
            Stack(
              children: [
                Image.network(
                  'https://www.urtrips.com/wp-content/uploads/2017/12/Umluj-Islands.jpg',
                  width: double.infinity,
                  height: Constants.kTwinheight,
                  fit: BoxFit.cover,
                ),
                const Positioned(
                  right: 0,
                  bottom: 0,
                  child: Text(
                    'See more...',
                    style: TextStyle(color: Colors.black, fontSize: 50.0, fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 12.0),
            Image.network(
              'https://modo3.com/thumbs/fit630x300/15968/1439351260/%D8%A8%D8%AD%D8%AB_%D8%B9%D9%86_%D8%A3%D9%83%D8%A8%D8%B1_%D8%B5%D8%AD%D8%B1%D8%A7%D8%A1_%D9%81%D9%8A_%D8%A7%D9%84%D8%B9%D8%A7%D9%84%D9%85.jpg',
              width: double.infinity,
              height: Constants.kTwinheight,
              fit: BoxFit.cover,
            ),
            const SizedBox(height: 12.0),
            Image.network(
              'http://static.holdinn.net/tag/original/1/city-67.png',
              width: double.infinity,
              height: Constants.kTwinheight,
              fit: BoxFit.cover,
            ),
            const SizedBox(height: 12.0),
            Image.network(
              'http://cms-cdn.almosafer.com/drupal_cms/alm/files/public/cityguides-import/gendal_forest-5_w_0.png',
              width: double.infinity,
              height: Constants.kTwinheight,
              fit: BoxFit.cover,
            ),
            const SizedBox(height: 12.0),
          ],
        ),
      ),
    );
  }
}
