import 'package:flutter/material.dart';
import 'package:maksat_flutter_application/core/common/common_button.dart';
import 'package:maksat_flutter_application/core/theme/app_textstyles.dart';
import 'package:maksat_flutter_application/modules/auth/auth_screen/auth_field.dart';
import 'package:maksat_flutter_application/modules/home/home_screen.dart';

class AuthScreen extends StatefulWidget {
  const AuthScreen({super.key, required this.isRegistrationForm});

  final bool isRegistrationForm;

  @override
  State<AuthScreen> createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> {
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                widget.isRegistrationForm ? 'Register' : 'Log in',
                style: AppTextstyles.s36w400,
              ),
              const SizedBox(
                height: 32,
              ),
              const AuthField(
                hintText: 'jene@example.com',
              ),
              const SizedBox(
                height: 20,
              ),
              AuthField(hintText: 'password',),
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                width: double.infinity,
                child: CommonButton(
                    isWhite: false,
                    title: widget.isRegistrationForm ? 'REGISTER' : 'LOG IN',
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => HomeScreen()));
                    }),
              )
            ],
          ),
        ),
      ),
    );
  }
}
