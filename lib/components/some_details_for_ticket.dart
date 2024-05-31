import 'package:flutter/material.dart';
import 'package:flutter_project_2/components/cart_text_details.dart';
import 'package:flutter_project_2/constants.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SomeDetailsForTicket extends StatefulWidget {
  final String cardImageUrl;
  final String eventName;
  final int ticketPrice;

  const SomeDetailsForTicket({
    super.key,
    required this.cardImageUrl,
    required this.eventName,
    required this.ticketPrice,
  });

  @override
  State<SomeDetailsForTicket> createState() => _SomeDetailsForTicketState();
}

class _SomeDetailsForTicketState extends State<SomeDetailsForTicket> {
  int counter = 1;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Constants.kBoxColor,
        borderRadius: BorderRadius.all(Radius.circular(30.0)),
      ),
      height: 650,
      child: Column(
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: NetworkImage(
                  widget.cardImageUrl,
                ),
                fit: BoxFit.cover,
              ),
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(30.0),
                topRight: Radius.circular(30.0),
              ),
            ),
            width: double.infinity,
            height: 350.0,
          ),
          const SizedBox(height: 12.0),
          CartTextDetails(eventLabel: 'Event', eventDetail: widget.eventName),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 40.0),
            child: Divider(thickness: 1.5),
          ),
          const CartTextDetails(eventLabel: 'Date', eventDetail: '01-02-2023'),
          const SizedBox(height: 20.0),
          Container(
            padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 10.0),
            decoration: const BoxDecoration(
              color: Constants.kBackgroundColor,
              borderRadius: BorderRadius.all(Radius.circular(20.0)),
            ),
            width: double.infinity,
            margin: const EdgeInsets.symmetric(horizontal: 12.0),
            child: Row(
              children: [
                const Text(
                  'Number of Ticket',
                  style: TextStyle(
                    color: Constants.kIconsColor,
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const Spacer(),
                RawMaterialButton(
                  onPressed: () {
                    setState(() {
                      if (counter != 0) counter--;
                    });
                  },
                  fillColor: const Color(0xFF4C4F5E),
                  elevation: 0.0,
                  constraints: const BoxConstraints.tightFor(width: 35.0, height: 35.0),
                  shape: const CircleBorder(),
                  child: const Icon(
                    FontAwesomeIcons.minus,
                    size: 15,
                  ),
                ),
                const SizedBox(width: 10.0),
                Text(
                  counter.toString(),
                  style: const TextStyle(color: Colors.white, fontSize: 30.0),
                ),
                const SizedBox(width: 10.0),
                RawMaterialButton(
                  onPressed: () {
                    setState(() {
                      counter++;
                    });
                  },
                  fillColor: const Color(0xFF4C4F5E),
                  elevation: 0.0,
                  constraints: const BoxConstraints.tightFor(width: 35.0, height: 35.0),
                  shape: const CircleBorder(),
                  child: const Icon(
                    FontAwesomeIcons.plus,
                    size: 15,
                  ),
                ),
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CartTextDetails(eventLabel: 'Total Price:', eventDetail: '${counter * widget.ticketPrice}SR'),
            ],
          ),
        ],
      ),
    );
  }
}
