import 'package:flutter/material.dart';
import 'package:maksat_flutter_application/core/common/common_button.dart';
import 'package:maksat_flutter_application/core/theme/app_textstyles.dart';
import 'package:maksat_flutter_application/modules/auth/auth_screen/auth_field.dart';
import 'package:maksat_flutter_application/modules/home/home_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AuthScreen extends StatefulWidget {
  const AuthScreen({super.key, required this.isRegistrationForm});

  final bool isRegistrationForm;

  @override
  State<AuthScreen> createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final prefs = SharedPreferences;

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

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
              Form(
                key: _formKey,
                child: Column(
                  children: [
                    AuthField(
                      controller: _emailController,
                      hintText: 'jene@example.com',
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              AuthField(
                controller: _passwordController,
                hintText: 'password',
              ),
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                width: double.infinity,
                child: CommonButton(
                    isWhite: false,
                    title: widget.isRegistrationForm ? 'REGISTER' : 'LOG IN',
                    onTap: () async {
                      final SharedPreferences prefs =
                          await SharedPreferences.getInstance();
                      if (_formKey.currentState!.validate()) {
                        if (widget.isRegistrationForm) {
                          await prefs.setString(
                              'userName', _emailController.text);
                          await prefs.setString(
                              'password', _passwordController.text);
                          Navigator.pop(context);
                        } else {
                          final userName = prefs.getString('userName');
                          final password = prefs.getString('password');
                          if (_emailController.text == userName &&
                              _passwordController.text == password) {
                            ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                              content: Text("Successfully logged"),
                            ));
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => HomeScreen()));
                          } else {
                            ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                              content:
                                  Text("Такого пользователя не существует!"),
                            ));
                          }
                        }
                      }
                    }),
              )
            ],
          ),
        ),
      ),
    );
  }
}
