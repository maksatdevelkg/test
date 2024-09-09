import 'package:flutter/material.dart';
import 'package:maksat_flutter_application/core/common/common_button.dart';
import 'package:maksat_flutter_application/modules/auth/auth_screen/auth_screen.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

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
                child: Stack(children: [
                  Image.asset(
                    'assets/images/Rectangle.png',
                    fit: BoxFit.cover,
                    height: mq.height * 0.8,
                    width: mq.width * 1,
                  ),
                  Center(
                    child: Image.asset(
                      'assets/images/Group.png',
                    ),
                  ),
                ]),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top: 50, right: 16, left: 16),
            child: Row(
              children: [
                Expanded(
                    child: CommonButton(
                        title: 'LOG IN',
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) =>
                                  AuthScreen(isRegistrationForm: false),
                            ),
                          );
                        })),
                const SizedBox(
                  width: 8,
                ),
                Expanded(
                    child: CommonButton(
                        title: 'REGISTER',
                        isWhite: false,
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) =>
                                  AuthScreen(isRegistrationForm: true),
                            ),
                          );
                        })),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
