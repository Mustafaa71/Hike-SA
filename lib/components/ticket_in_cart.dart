import 'package:flutter/material.dart';
import 'package:flutter_project_2/constants.dart';
import 'package:flutter_project_2/models/events.dart';
import 'package:qr_flutter/qr_flutter.dart';

class TicketInCart extends StatelessWidget {
  final Ticket ticket;
  const TicketInCart({
    Key? key,
    required this.ticket,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Container(
        padding: const EdgeInsets.all(30.0),
        decoration: BoxDecoration(
          color: kBoxColor,
          borderRadius: BorderRadius.circular(30.0),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              ticket.message,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 30.0,
              ),
            ),
            const SizedBox(height: 20.0),
            QrImage(
              data: ticket.qrCode,
              backgroundColor: Colors.white,
              version: QrVersions.auto,
              size: 300.0,
            ),
          ],
        ),
      ),
    );
  }
}
