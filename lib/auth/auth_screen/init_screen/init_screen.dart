import 'package:flutter/material.dart';

class InitScreen extends StatelessWidget {
  const InitScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final mq = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 255, 253, 253),
      body: Column(
        children: [
          Stack(
            children: [
              Container(
                height: mq.height * 0.8,
                width: mq.width * 1,
                child: Image.asset(
                  'assets/images/Rectangle.png',
                  fit: BoxFit.cover,
                ),
              ),
              Container(
                  height: mq.height * 0.8,
                  width: mq.width * 1,
                  child: Center(
                      child: Image.asset(
                    'assets/images/Group.png',
                  )))
            ],
          ),
          SizedBox(
            height: 40,
          ),
          Row(
            children: [
              SizedBox(
                width: 20,
              ),
              Container(
                height: 60,
                width: 170,
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 255, 255, 255),
                  border: Border.all(
                      color: const Color.fromARGB(255, 0, 0, 0), width: 2),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Center(
                  child: Text(
                    'LOG IN',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 15,
                        fontWeight: FontWeight.w500),
                  ),
                ),
              ),
              SizedBox(
                width: 10,
              ),
              Container(
                height: 60,
                width: 170,
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 0, 0, 0),
                  border: Border.all(
                      color: const Color.fromARGB(255, 0, 0, 0), width: 2),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Center(
                  child: Text(
                    'REGISTER',
                    style: TextStyle(
                        color: const Color.fromARGB(255, 255, 255, 255),
                        fontSize: 15,
                        fontWeight: FontWeight.w500),
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
