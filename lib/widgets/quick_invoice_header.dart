import 'package:flutter/material.dart';
import 'package:responsive_dashboard/constants.dart';
import 'package:responsive_dashboard/utils/styles.dart';

class QuickInvoiceHeader extends StatelessWidget {
  const QuickInvoiceHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return  Row(
      children: [
        Text('Quick Invoice', style: Styles.styleSemiBold20(context)),
        const Spacer(),
        const CircleAvatar(
          radius: 24,
          backgroundColor: Color(0xffFAFAFA),
          child: Icon(
            Icons.add,
            color: kprimaryColor,
            size: 18,
          ),
        )
      ],
    );
  }
}
