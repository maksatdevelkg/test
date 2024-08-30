import 'package:flutter/material.dart';
import 'package:maksat_flutter_application/core/theme/app_textstyles.dart';

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
      body: SafeArea(
        child: Column(
          children: [
            Text(
              widget.isRegistrationForm ? 'Register' : 'Log in',
              style: AppTextstyles.s36w400,
            ),
            const SizedBox(
              height: 32,
            ),
            Form(key: _formKey, child: TextFormField(
              validator: (value) {
                if ((value?.length ?? 0) < 3) {
                  return 'Слишком короткая почта';
                }
                return null;
              },
            )),
          ],
        ),
      ),
    );
  }
}
