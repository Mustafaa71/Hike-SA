import 'package:elegant_notification/elegant_notification.dart';
import 'package:flutter/material.dart';
import 'package:flutter_project_2/components/reusable_button.dart';
import 'package:flutter_project_2/constants.dart';
import 'package:flutter_project_2/models/event.dart';
import 'package:flutter_project_2/pages/youtube_page.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class EventCardDetail extends StatefulWidget {
  const EventCardDetail({
    super.key,
    required this.event,
  });
  final Event event;

  @override
  State<EventCardDetail> createState() => _EventCardDetailState();
}

class _EventCardDetailState extends State<EventCardDetail> {
  YoutubePlayerController? controller;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Stack(
            children: [
              InkWell(
                onTap: () {
                  Navigator.push<void>(context, MaterialPageRoute(builder: ((context) => const YoutubePage())));
                },
                child: Image(
                  image: NetworkImage(widget.event.cardImageUrl),
                  width: double.infinity,
                  height: Constants.kImageheader,
                  fit: BoxFit.cover,
                ),
              ),
              Positioned(
                left: Constants.kPositionedL,
                top: Constants.kPositionedR,
                child: InkWell(
                  onTap: (() => Navigator.pop(context)),
                  child: const Icon(
                    Icons.arrow_back,
                    size: 50.0,
                    color: Colors.white,
                  ),
                ),
              ),
              Positioned(
                left: 190.0,
                top: 250.0,
                child: InkWell(
                  onTap: (() {
                    Navigator.push<void>(context, MaterialPageRoute(builder: ((context) => const YoutubePage())));
                  }),
                  child: const Icon(Icons.not_started_outlined, size: 70.0, color: Colors.white),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20.0, top: 30.0),
            child: Align(
              alignment: Alignment.topLeft,
              child: Text(
                '${widget.event.eventName} Hiking Trip',
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 35.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Text(
              widget.event.description,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 25.0,
              ),
            ),
          ),
          const SizedBox(height: 44.0),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: ReusableButton(
              onPressed: (() {
                EventData.cart.add(widget.event);
                ElegantNotification.success(
                  title: const Text('Added successfully'),
                  description: const Text('Your data has been added to your cart'),
                  animationDuration: const Duration(seconds: 1),
                ).show(context);
              }),
            ),
          ),
        ],
      ),
    );
  }
}
