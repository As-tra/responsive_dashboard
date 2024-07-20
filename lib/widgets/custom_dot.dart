import 'package:flutter/material.dart';
import 'package:responsive_dashboard/constants.dart';

class CustomDot extends StatelessWidget {
  const CustomDot({super.key, required this.isActive});
  final bool isActive;

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      width: isActive ? 32 : 8,
      height: 8,
      duration: const Duration(seconds: 1),
      decoration: BoxDecoration(
        color: isActive ? kprimaryColor : const Color(0xffE8E8E8),
        borderRadius: BorderRadius.circular(12),
      ),
    );
  }
}
