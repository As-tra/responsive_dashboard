import 'package:flutter/material.dart';
import 'package:responsive_dashboard/constants.dart';
import 'package:responsive_dashboard/utils/styles.dart';

class CustomButton extends StatelessWidget {
  const CustomButton(
      {super.key,
      this.bgColor,
      required this.btnText});
  final Color? bgColor;
  final String btnText;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(
        backgroundColor: bgColor ?? kprimaryColor,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        elevation: 0,
        padding: const EdgeInsets.all(20),
      ),
      child: Text(
        btnText,
        style: Styles.styleSemiBold18(context).copyWith(
          color: bgColor == null ? Colors.white : kprimaryColor,
        ),
      ),
    );
  }
}
