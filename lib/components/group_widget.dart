import 'package:elegant_notification/elegant_notification.dart';
import 'package:flutter/material.dart';
import 'package:flutter_project_2/constants.dart';

class GroupWidget extends StatefulWidget {
  final String groupName;
  final String groupDescription;
  const GroupWidget({
    Key? key,
    required this.groupName,
    required this.groupDescription,
  }) : super(key: key);

  @override
  State<GroupWidget> createState() => _GroupWidgetState();
}

class _GroupWidgetState extends State<GroupWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20.0),
      decoration:
          const BoxDecoration(color: Constants.kBoxColor, borderRadius: BorderRadius.all(Radius.circular(20.0))),
      width: double.infinity,
      height: 260.0,
      margin: const EdgeInsets.all(20),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  const Image(
                    image: NetworkImage('https://cdn-icons-png.flaticon.com/512/9278/9278604.png'),
                    height: 50,
                  ),
                  const SizedBox(width: 12),
                  Text(
                    widget.groupName,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 25.0,
                    ),
                  ),
                ],
              ),
              const Row(
                children: [
                  Icon(
                    Icons.star_rounded,
                    color: Colors.purple,
                  ),
                  Icon(
                    Icons.star_rounded,
                    color: Colors.purple,
                  ),
                  Icon(
                    Icons.star_rounded,
                    color: Colors.purple,
                  ),
                  Icon(
                    Icons.star_rounded,
                    color: Colors.purple,
                  ),
                  SizedBox(width: 8.0),
                  Text(
                    '3.7',
                    style: TextStyle(color: Colors.white),
                  ),
                ],
              ),
            ],
          ),
          const Divider(thickness: 1.5),
          SizedBox(
            height: 110,
            child: Align(
              alignment: Alignment.topLeft,
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 10),
                child: Text(
                  widget.groupDescription,
                  style: const TextStyle(color: Colors.white, fontSize: 20.0),
                  maxLines: 4,
                ),
              ),
            ),
          ),
          const SizedBox(height: 16.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Icon(
                Icons.share,
                color: Colors.purple,
              ),
              Row(
                children: [
                  const Text(
                    'Request to join group',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(width: 8.0),
                  InkWell(
                    onTap: () {
                      setState(() {});
                      ElegantNotification.info(
                        title: const Text('Request Sent'),
                        description: const Text('Your Request has been sent to the group leader'),
                        animationDuration: const Duration(seconds: 1),
                      ).show(context);
                    },
                    child: const Icon(
                      Icons.person_add_alt,
                      color: Colors.purple,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
