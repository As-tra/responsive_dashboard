
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
        const Text(
          'Transaction History',
          style: Styles.styleSemiBold20,
        ),
        Text(
          'See all',
          style: Styles.styleMeduim16.copyWith(color: kprimaryColor),
        ),
      ],
    );
  }
}
