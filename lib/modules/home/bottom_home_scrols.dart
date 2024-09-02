import 'package:flutter/material.dart';

class BottomHomeScrols extends StatelessWidget {
  BottomHomeScrols({super.key});

  @override
  Widget build(BuildContext context) {
    final mq = MediaQuery.of(context).size;
    return Column(
      children: [
        Container(
          height: mq.height * 0.3,
          width: (mq.width / 2.25),
          color: Colors.black,
          child: Image.asset(
            'assets/images/foto1.jpeg',
            fit: BoxFit.cover,
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Container(
          height: mq.height / 2,
          width: (mq.width / 2.25),
          color: Colors.black,
          child: Image.asset(
            'assets/images/foto4.jpeg',
            fit: BoxFit.cover,
          ),
        ),
      ],
    );
  }
}
