import 'package:flutter/material.dart';
import 'package:flutter_project_2/components/ticket_in_cart.dart';
import 'package:flutter_project_2/constants.dart';
import 'package:flutter_project_2/models/event.dart';

class TicketPage extends StatelessWidget {
  const TicketPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Events', style: TextStyle(color: Constants.kIconsColor, fontSize: 30.0)),
        elevation: 0,
      ),
      body: ListView(
        children: [
          Column(
            children: [for (var tickets in Ticket.book) TicketInCart(ticket: tickets)],
          ),
        ],
      ),
    );
  }
}
