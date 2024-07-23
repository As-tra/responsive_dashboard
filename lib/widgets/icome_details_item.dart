import 'package:flutter/material.dart';
import 'package:responsive_dashboard/utils/styles.dart';

class IncomeDetailsItem extends StatelessWidget {
  const IncomeDetailsItem(
      {super.key,
      required this.bulletColor,
      required this.title,
      required this.percentage});
  final Color bulletColor;
  final String title, percentage;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        radius: 6,
        backgroundColor: bulletColor,
      ),
      title: Text(
        title,
        style: Styles.styleRegular16,
      ),
      trailing: Text(
        '$percentage%',
        style: Styles.styleMeduim16.copyWith(color: const Color(0xff208CC8)),
      ),
    );
  }
}
