import 'package:flutter/material.dart';
import 'package:responsive_dashboard/utils/styles.dart';
import 'package:responsive_dashboard/widgets/custom_text_field.dart';

class CustomInfoWidget extends StatelessWidget {
  const CustomInfoWidget({super.key, required this.title, required this.hint});
  final String title, hint;

  @override
  Widget build(BuildContext context) {
    return  Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: Styles.styleMeduim16,
        ),
        const SizedBox(height: 12),
        CustomTextField(hintText: hint),
      ],
    );
  }
}
