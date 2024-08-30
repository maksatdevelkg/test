import 'package:flutter/material.dart';

import 'package:maksat_flutter_application/auth/auth_screen/init_screen/init_screen.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      home: InitScreen(),
      // home: AuthScreen(isRegistrationForm: true,)
    );
  }
}
