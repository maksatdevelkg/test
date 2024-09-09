import 'package:flutter/material.dart';
import 'package:maksat_flutter_application/modules/story/story_screen.dart';

import 'package:maksat_flutter_application/modules/welcome/welcome_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: WelcomeScreen(),
    );
  }
}
