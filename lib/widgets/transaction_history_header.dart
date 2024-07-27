import 'package:flutter/material.dart';
import 'package:responsive_dashboard/constants.dart';
import 'package:responsive_dashboard/utils/styles.dart';

class TransactionHIstoryHeader extends StatelessWidget {
  const TransactionHIstoryHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'Transaction History',
          style: Styles.styleSemiBold20(context),
        ),
        Text(
          'See all',
          style: Styles.styleMeduim16(context).copyWith(color: kprimaryColor),
        ),
      ],
    );
  }
}
