import 'package:flutter/material.dart';

class AuthField extends StatelessWidget {
  const AuthField({super.key, required this.hintText});

  final String hintText;

  @override
  Widget build(context) {
    return Form(
      child: TextFormField(
        validator: (value) {
          if ((value?.length ?? 0) < 3) {
            return 'Слишком короткая почта';
          }
          if (!(value?.contains('@') ?? false)) {
            return 'Отсутствует символ @';
          }
          return null;
        },
        decoration:  InputDecoration(
          hintText: hintText,
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.black, width: 2),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.black, width: 2),
          ),
          errorBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.black, width: 2),
          ),
        ),
      ),
    );
  }
}
