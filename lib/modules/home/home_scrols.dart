import 'package:flutter/material.dart';
import 'package:maksat_flutter_application/core/app_assets.dart';

class HomeScrols extends StatelessWidget {
  const HomeScrols(
      {super.key, required this.imageScrolls, required this.avatar});
  final imageScrolls;
  final avatar;
  @override
  Widget build(BuildContext context) {
    final mq = MediaQuery.of(context).size;
    return Column(
      children: [
        SizedBox(
          height: mq.height * 0.5,
          width: mq.width * 0.92,
          child: Image.network(
            imageScrolls,
            fit: BoxFit.cover,
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Container(
          width: 140,
          height: 50,
          child: Image.asset(
            avatar,
            fit: BoxFit.contain,
          ),
        ),
      ],
    );
  }
}
