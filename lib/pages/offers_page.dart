import 'package:flutter/material.dart';
import 'package:flutter_project_2/constants.dart';

class OffersPage extends StatelessWidget {
  const OffersPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Offers'),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              decoration: const BoxDecoration(
                color: Constants.kBoxColor,
                borderRadius: BorderRadius.all(Radius.circular(30.0)),
              ),
              width: double.infinity,
              height: Constants.kFifthheight,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    width: Constants.kSizedBoxF,
                    height: Constants.kSizedBoxH,
                    child: Image.network(
                      'https://cdn-icons-png.flaticon.com/512/2500/2500627.png',
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                      "Sorry we don't have offers yet",
                      style: TextStyle(
                        color: Constants.kFontsColor,
                        fontSize: 30.0,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
