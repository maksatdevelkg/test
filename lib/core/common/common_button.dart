import 'package:flutter/material.dart';
import 'package:maksat_flutter_application/core/theme/app_textstyles.dart';

class CommonButton extends StatelessWidget {
  const CommonButton({
    super.key,
    required this.title,
    required this.onTap,
    this.isWhite = true,
  });

  final String title;
  final Function() onTap;
  final bool isWhite;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60,
      child: ElevatedButton(
          style: ElevatedButton.styleFrom(
              elevation: 0,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
              backgroundColor: isWhite ? Colors.white : Colors.black,
              side: BorderSide(color: Colors.black, width: 2)),
          onPressed: onTap,
          child: Text(
            title,
            style: AppTextstyles.s14w500
                .copyWith(color: isWhite ? Colors.black : Colors.white),
          )),
    );
  }
}
