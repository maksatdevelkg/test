import 'package:flutter/material.dart';

class BottomHomeScrols2 extends StatelessWidget {
  BottomHomeScrols2({super.key});

  @override
  Widget build(BuildContext context) {
    final mq = MediaQuery.of(context).size;
    return Column(
      children: [
       
        
        Container(
          height: mq.height / 2,
          width: (mq.width / 2.25),
          color: Colors.black,
          child: Image.asset(
            'assets/images/foto3.jpg',
            fit: BoxFit.cover,
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Container(
          height: mq.height * 0.3,
          width: (mq.width / 2.25),
          color: Colors.black,
          child: Image.asset(
            'assets/images/foto2.jpeg',
            fit: BoxFit.cover,
          ),
        ),
      ],
    );
  }
}