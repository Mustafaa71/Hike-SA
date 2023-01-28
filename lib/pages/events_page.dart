import 'package:flutter/material.dart';
import 'package:flutter_project_2/components/event_card.dart';
import 'package:flutter_project_2/constants.dart';
import 'package:flutter_project_2/models/events.dart';

class EventsPage extends StatelessWidget {
  const EventsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: const Text(
          'Events',
          style: TextStyle(color: kFontsColor, fontSize: 29.0),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 20.0, top: 10.0, right: 20.0),
        child: ListView(
          children: [
            for (final events in EventData.events) ...[
              EventsCard(
                event: events,
                ticket: null,
              ),
              const SizedBox(
                height: 20.0,
              )
            ]
          ],
        ),
      ),
    );
  }
}
