import 'package:flutter/material.dart';
import 'package:flutter_project_2/constants.dart';
import 'package:flutter_project_2/models/event.dart';

class EventsCard extends StatefulWidget {
  final Event event;
  final Ticket? ticket;

  const EventsCard({
    Key? key,
    required this.event,
    required this.ticket,
  }) : super(key: key);

  @override
  State<EventsCard> createState() => _EventsCardState();
}

class _EventsCardState extends State<EventsCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(color: Color(0xFF333333), borderRadius: BorderRadius.all(Radius.circular(20.0))),
      width: double.infinity,
      height: Constants.eventscardhight,
      clipBehavior: Clip.hardEdge,
      child: Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Image.network(
          widget.event.imageUrl,
          width: Constants.imagenetworkheight,
          height: double.infinity,
          fit: BoxFit.cover,
        ),
        Column(children: [
          Container(
            padding: const EdgeInsets.all(12),
            constraints: const BoxConstraints(maxWidth: 230.0),
            child: Text(widget.event.description, style: const TextStyle(color: Colors.white, fontSize: 18)),
          ),
          const SizedBox(height: 40.0),
          Row(children: [
            const Text(
              'Book Now',
              style: TextStyle(color: Colors.green, fontSize: 20.0, fontWeight: FontWeight.bold),
            ),
            const SizedBox(width: 48.0),
            InkWell(
              onTap: (() {
                setState(() {
                  Ticket.book.add(Ticket(
                    qrCode: 'https://www.onegiantleap.com/en/home.html',
                    message: 'Nice choice.\nNow you can join the event with QR below',
                  ));
                });
                print('ssss');
              }),
              child: const Icon(Icons.bookmark_add_sharp, size: 40.0, color: Colors.white),
            ),
          ]),
        ]),
      ]),
    );
  }
}
