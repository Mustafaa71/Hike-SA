import 'package:flutter/material.dart';
import 'package:flutter_project_2/constants.dart';
import 'package:url_launcher/url_launcher.dart';

class FeedbackPage extends StatefulWidget {
  const FeedbackPage({super.key});

  @override
  State<FeedbackPage> createState() => _FeedbackPageState();
}

class _FeedbackPageState extends State<FeedbackPage> {
  final Uri _urlTelegram = Uri.parse('https://web.telegram.org');
  final Uri _urlWhatsapp = Uri.parse('https://web.whatsapp.com/');

  Future<void> _launchUrlTelegram() async {
    if (!await launchUrl(_urlTelegram)) {
      throw Exception('Could not launch $_urlTelegram');
    }
  }

  Future<void> _launchUrlWhatsapp() async {
    if (!await launchUrl(_urlWhatsapp)) {
      throw Exception('Could not launch $_urlWhatsapp');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Feedback',
              style: TextStyle(
                color: Colors.white,
                fontSize: 30.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            const Text(
              'Tell us how can we improve our app 👍.',
              style: TextStyle(
                color: Colors.grey,
                fontSize: 15.0,
              ),
            ),
            const SizedBox(height: 20.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                InkWell(
                  onTap: _launchUrlTelegram,
                  child: const Image(
                    image: NetworkImage(
                      'https://cdn-icons-png.flaticon.com/512/2111/2111646.png',
                    ),
                    height: 40.0,
                  ),
                ),
                InkWell(
                  onTap: _launchUrlWhatsapp,
                  child: const Image(
                    image: NetworkImage(
                      'https://cdn-icons-png.flaticon.com/512/733/733585.png',
                    ),
                    height: 40.0,
                  ),
                ),
                const Image(
                  image: NetworkImage(
                    'https://cdn-icons-png.flaticon.com/512/145/145812.png',
                  ),
                  height: 40.0,
                ),
                const Image(
                  image: NetworkImage(
                    'https://cdn-icons-png.flaticon.com/512/4138/4138124.png',
                  ),
                  height: 40.0,
                ),
                const Image(
                  image: NetworkImage(
                    'https://cdn-icons-png.flaticon.com/512/3670/3670157.png',
                  ),
                  height: 40.0,
                ),
              ],
            ),
            const SizedBox(height: 8.0),
            const Divider(
              thickness: 1.0,
              color: Colors.grey,
            ),
            const SizedBox(height: 40.0),
            const TextField(
              decoration: InputDecoration(
                hintText: 'Enter your text here',
                hintStyle: TextStyle(
                  color: Constants.kFontsColor,
                ),
                filled: true,
                fillColor: Constants.kBoxColor,
                border: InputBorder.none,
              ),
              maxLines: 8,
            ),
            const SizedBox(height: 24.0),
            Container(
              padding: const EdgeInsets.all(20.0),
              decoration: BoxDecoration(
                color: Constants.kIconsColor,
                borderRadius: BorderRadius.circular(10.0),
              ),
              width: double.infinity,
              child: const Center(
                child: Text(
                  'send your feedback',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 100.0),
            Center(
              child: Image.asset(
                'images/hike-sa-low-resolution-logo-black-on-transparent-background.png',
                height: 100.0,
                color: Constants.kIconsColor,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
