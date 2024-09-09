import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:maksat_flutter_application/modules/profile/profile_screen.dart';

class StoryScreen extends StatefulWidget {
  const StoryScreen({
    super.key,
    required this.image,
    required this.name,
    required this.surname,
    required this.nick,
  });

  final String image;
  final String name;
  final String surname;
  final String nick;

  @override
  State<StoryScreen> createState() => _StoryScreenState();
}

class _StoryScreenState extends State<StoryScreen> {
  _StoryScreenState();

  @override
  void initState() {
    countStream(context: context);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SizedBox(
            height: double.infinity,
            child: Image.network(
              widget.image,
              fit: BoxFit.fitHeight,
            ),
          ),
          Container(
            decoration: const BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                  Color.fromARGB(221, 0, 0, 0),
                  Colors.transparent
                ])),
          ),
          Positioned(
            left: 20,
            top: 50,
            child: ClipOval(
              child: GestureDetector(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => ProfileScreen()));
                },
                child: Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.yellow,
                    ),
                    child: Image.network(
                      widget.image,
                      fit: BoxFit.fill,
                    )),
              ),
            ),
          ),
          Positioned(
            left: 70,
            top: 50,
            child: GestureDetector(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => ProfileScreen()));
              },
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    widget.name + ' ' + widget.surname,
                    style: TextStyle(color: Colors.white, fontSize: 15),
                  ),
                  Text(
                    widget.nick,
                    style: TextStyle(
                        color: Color.fromARGB(255, 133, 130, 130),
                        fontSize: 12),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

Future<void> countStream({required BuildContext context}) async {
  for (int i = 1; i <= 5; i++) {
    await Future.delayed(Duration(seconds: 1));
    if (i == 5) {
      Navigator.pop(context);
    }
  }
}
