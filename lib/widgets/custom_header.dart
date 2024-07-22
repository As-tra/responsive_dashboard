import 'package:flutter/material.dart';
import 'package:responsive_dashboard/utils/styles.dart';
import 'package:responsive_dashboard/widgets/custom_drop_down.dart';

class CustomHeader extends StatelessWidget {
  const CustomHeader({super.key, required this.title});
  final String title;

  @override
  Widget build(BuildContext context) {
    return  Row(
      children: [
        Text(
          title,
          style: Styles.styleSemiBold20,
        ),
        const Spacer(),
        const CustomDropDown(),
      ],
    );
  }
}
