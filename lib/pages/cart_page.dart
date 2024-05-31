import 'package:elegant_notification/elegant_notification.dart';
import 'package:flutter/material.dart';
import 'package:flutter_project_2/components/reusable_button.dart';
import 'package:flutter_project_2/components/some_details_for_ticket.dart';
import 'package:flutter_project_2/constants.dart';
import 'package:flutter_project_2/models/event.dart';
import 'package:sound_library/sound_library.dart';

class CartPage extends StatefulWidget {
  const CartPage({
    super.key,
  });

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('CART'),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30.0),
        child: ListView.separated(
          itemBuilder: (context, index) {
            return Column(children: [
              SomeDetailsForTicket(
                cardImageUrl: EventData.cart[index].imageUrl,
                eventName: EventData.cart[index].eventName,
                ticketPrice: EventData.cart[index].ticketPrice,
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: ReusableButton(
                  onPressed: (() {
                    showModalBottomSheet<void>(
                      context: context,
                      builder: (context) {
                        return Container(
                          padding: const EdgeInsets.all(20.0),
                          color: Constants.kBackgroundColor,
                          height: 600,
                          child: Column(
                            children: [
                              const Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'AppStore',
                                    style: TextStyle(
                                      color: Constants.kFontsColor,
                                      fontSize: 30.0,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Icon(
                                    Icons.cancel_outlined,
                                    size: 45.0,
                                    color: Colors.grey,
                                  ),
                                ],
                              ),
                              const SizedBox(height: 40.0),
                              Container(
                                padding: const EdgeInsets.all(20.0),
                                decoration: const BoxDecoration(
                                  color: Constants.kBoxColor,
                                  borderRadius: BorderRadius.all(Radius.circular(20.0)),
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      children: [
                                        Image.asset(
                                          'images/hike-sa-low-resolution-logo-black-on-transparent-background.png',
                                          height: 50,
                                          color: Constants.kIconsColor,
                                        ),
                                        const SizedBox(width: 8.0),
                                        const Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              'Hike SA Ticket',
                                              style: TextStyle(
                                                color: Constants.kFontsColor,
                                                fontSize: 20.0,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                            Text(
                                              'In-App Purchase',
                                              style: TextStyle(
                                                color: Colors.grey,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                    const SizedBox(height: 20),
                                    const Divider(
                                      thickness: 1.0,
                                      color: Colors.grey,
                                    ),
                                    const SizedBox(height: 12.0),
                                    const Text(
                                      'SAR 200',
                                      style: TextStyle(
                                        color: Constants.kFontsColor,
                                        fontSize: 30.0,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    const Text(
                                      'One time charge',
                                      style: TextStyle(
                                        color: Colors.grey,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    const SizedBox(height: 12.0),
                                    const Divider(
                                      thickness: 1.0,
                                      color: Colors.grey,
                                    ),
                                    const SizedBox(height: 12.0),
                                    const Text(
                                      'Account: useremail@email.com',
                                      style: TextStyle(
                                        color: Colors.grey,
                                        fontSize: 15.0,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    const SizedBox(height: 4.0),
                                  ],
                                ),
                              ),
                              const SizedBox(height: 16.0),
                              InkWell(
                                onTap: () {
                                  Ticket.book.add(
                                    Ticket(
                                      qrCode: EventData.cart[index].website,
                                      message: 'A ticket for ${EventData.cart[index].eventName}',
                                    ),
                                  );
                                  ElegantNotification.success(
                                    title: const Text('Sent successfully'),
                                    description: const Text('You can see you ticket in your ticket cart'),
                                    animationDuration: const Duration(seconds: 1),
                                  ).show(context);
                                  SoundPlayer.i.play(Sounds.click);
                                },
                                child: Container(
                                  padding: const EdgeInsets.all(30.0),
                                  decoration: const BoxDecoration(
                                    color: Colors.blue,
                                    borderRadius: BorderRadius.all(Radius.circular(20.0)),
                                  ),
                                  width: double.infinity,
                                  child: const Align(
                                    alignment: Alignment.center,
                                    child: Text(
                                      'Book Now',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 25.0,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        );
                      },
                    );
                  }),
                ),
              ),
            ]);
          },
          separatorBuilder: (context, index) {
            return const SizedBox(height: 40);
          },
          itemCount: EventData.cart.length,
        ),
      ),
    );
  }
}
