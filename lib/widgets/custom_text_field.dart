import 'package:flutter/material.dart';
import 'package:responsive_dashboard/utils/styles.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key, required this.hintText});
  final String hintText;

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        fillColor: const Color(0xffFAFAFA),
        filled: true,
        border: _buildBorder(),
        hintText: hintText,
        hintStyle: Styles.styleRegular16.copyWith(
          color: const Color(0xffAAAAAA),
        ),
        contentPadding: const EdgeInsets.all(20),
      ),
    );
  }

  OutlineInputBorder _buildBorder() {
    return OutlineInputBorder(
      borderSide: BorderSide.none,
      borderRadius: BorderRadius.circular(12),
    );
  }
}
