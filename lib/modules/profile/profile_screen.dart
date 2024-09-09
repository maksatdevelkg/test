import 'package:flutter/material.dart';
import 'package:maksat_flutter_application/core/common/common_button.dart';
import 'package:maksat_flutter_application/modules/home/widget/bottom_home_scrols.dart';
import 'package:maksat_flutter_application/modules/home/widget/bottom_home_scrols2.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Center(
            child: Column(
              children: [
                SizedBox(
                  height: 70,
                ),
                Container(
                  height: 150,
                  width: 150,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.yellow,
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Text(
                  'User',
                  style: TextStyle(color: Colors.black, fontSize: 50),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'Location',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.w600),
                ),
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: SizedBox(
                    child: CommonButton(
                        title: 'FOLLOW USER', isWhite: false, onTap: () {}),
                    width: double.infinity,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: SizedBox(
                    child: CommonButton(
                        title: 'MASSAGE', isWhite: true, onTap: () {}),
                    width: double.infinity,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Row(
                    children: [
                      BottomHomeScrols(),
                      SizedBox(
                        width: 8,
                      ),
                      BottomHomeScrols2()
                    ],
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
