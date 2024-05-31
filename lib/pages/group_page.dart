import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_project_2/components/group_widget.dart';
import 'package:flutter_project_2/constants.dart';
import 'package:flutter_project_2/models/event.dart';

class GroupPage extends StatefulWidget {
  const GroupPage({super.key});

  @override
  State<GroupPage> createState() => _GroupPageState();
}

class _GroupPageState extends State<GroupPage> {
  final controller = PageController(initialPage: 0);
  int currentImage = 0;
  final int numImage = 4;
  Timer? _timre;
  @override
  void initState() {
    super.initState();
    _timre = Timer.periodic(const Duration(seconds: 3), (timer) {
      if (currentImage < numImage - 1) {
        currentImage++;
      } else {
        currentImage = 0;
      }
      controller.animateToPage(
        currentImage,
        duration: const Duration(milliseconds: 150),
        curve: Curves.fastOutSlowIn,
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    TextEditingController titleController = TextEditingController();
    TextEditingController descriptionController = TextEditingController();

    dispose() {
      titleController.dispose();
      descriptionController.dispose();
      _timre!.cancel();
      super.dispose();
    }

    return Scaffold(
      appBar: AppBar(
        title: const Text('Group'),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 14.0),
            child: InkWell(
              onTap: () async {
                await showModalBottomSheet<void>(
                  context: context,
                  builder: ((context) {
                    return Container(
                      color: Constants.kBackgroundColor,
                      height: 600,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 30.0, horizontal: 50.0),
                        child: Column(children: [
                          const SizedBox(height: 16),
                          const Text('Make Your own group',
                              style:
                                  TextStyle(color: Constants.kFontsColor, fontSize: 20.0, fontWeight: FontWeight.bold)),
                          const SizedBox(height: 24),
                          TextField(
                              maxLines: 1,
                              controller: titleController,
                              decoration: const InputDecoration(
                                hintText: 'Group Name',
                                hintStyle: TextStyle(color: Colors.white, fontSize: 15.0, fontWeight: FontWeight.bold),
                                focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(color: Colors.blue, width: 3),
                                    borderRadius: BorderRadius.all(Radius.circular(20.0))),
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.blue, width: 3),
                                  borderRadius: BorderRadius.all(Radius.circular(20.0)),
                                ),
                              ),
                              style: const TextStyle(color: Colors.white, fontSize: 25.0)),
                          const SizedBox(height: 12.0),
                          TextField(
                              maxLines: 8,
                              controller: descriptionController,
                              decoration: const InputDecoration(
                                hintText: 'description',
                                hintStyle: TextStyle(color: Colors.white, fontSize: 15.0, fontWeight: FontWeight.bold),
                                focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(color: Colors.blue, width: 3),
                                    borderRadius: BorderRadius.all(Radius.circular(20.0))),
                                enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(color: Colors.blue, width: 3),
                                    borderRadius: BorderRadius.all(Radius.circular(20.0))),
                              ),
                              style: const TextStyle(color: Colors.white, fontSize: 15.0)),
                          const SizedBox(height: 20.0),
                          InkWell(
                              onTap: () {
                                GroupData.newGroup.add(
                                  Group(
                                    groupName: titleController.text,
                                    groupDescription: descriptionController.text,
                                  ),
                                );
                                Navigator.of(context).pop();
                              },
                              child: const Icon(Icons.add_circle_outline_rounded, size: 60.0, color: Colors.blue)),
                        ]),
                      ),
                    );
                  }),
                );
                setState(() {});
              },
              child: const Icon(Icons.add_circle_outline, size: 40.0),
            ),
          ),
        ],
        elevation: 7,
      ),
      body: ListView(
        children: [
          SizedBox(
            height: 160.0,
            child: PageView(
              scrollDirection: Axis.horizontal,
              controller: controller,
              children: const [
                Image(
                  image: NetworkImage(
                    'https://images.unsplash.com/photo-1620903669944-de50fbe78210?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1770&q=80',
                  ),
                  fit: BoxFit.cover,
                ),
                Image(
                  image: NetworkImage(
                    'https://images.unsplash.com/photo-1526888935184-a82d2a4b7e67?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1770&q=80',
                  ),
                  fit: BoxFit.cover,
                ),
                Image(
                  image: NetworkImage(
                    'https://images.unsplash.com/photo-1478131143081-80f7f84ca84d?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1770&q=80',
                  ),
                  fit: BoxFit.cover,
                ),
                Image(
                  image: NetworkImage(
                    'https://images.unsplash.com/photo-1527796261673-e9d61cc1e03c?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1769&q=80',
                  ),
                  fit: BoxFit.cover,
                ),
              ],
            ),
          ),
          Column(
            children: [
              for (var group in GroupData.newGroup)
                GroupWidget(groupName: group.groupName, groupDescription: group.groupDescription),
            ],
          ),
        ],
      ),
    );
  }
}
