import 'package:flutter/material.dart';
import 'package:flutter_project_2/constants.dart';
import 'package:flutter_project_2/models/event.dart';

class TicketInCart extends StatelessWidget {
  final Ticket ticket;
  const TicketInCart({
    Key? key,
    required this.ticket,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(Constants.sizingticketpadd),
      decoration: const BoxDecoration(
        color: Constants.kBoxColor,
        borderRadius: BorderRadius.all(
          Radius.circular(30.0),
        ),
      ),
      margin: const EdgeInsets.all(Constants.sizingticketmar),
      child: Column(mainAxisSize: MainAxisSize.min, children: [
        Text(
          ticket.message,
          style: const TextStyle(color: Colors.white, fontSize: 30.0),
        ),
        const SizedBox(height: 20.0),
      ]),
    );
  }
}
