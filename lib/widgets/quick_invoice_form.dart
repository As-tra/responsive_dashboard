import 'package:flutter/material.dart';
import 'package:responsive_dashboard/widgets/custom_button.dart';
import 'package:responsive_dashboard/widgets/custom_info_widget.dart';

class QuickInvoiceForm extends StatelessWidget {
  const QuickInvoiceForm({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Row(
          children: [
            Expanded(
              child: CustomInfoWidget(
                title: 'Customer name',
                hint: 'Type customer name',
              ),
            ),
            SizedBox(width: 16),
            Expanded(
              child: CustomInfoWidget(
                title: 'Customer Email',
                hint: 'Type customer email',
              ),
            ),
          ],
        ),
        SizedBox(height: 24),
        Row(
          children: [
            Expanded(
              child: CustomInfoWidget(
                title: 'Item name',
                hint: 'Type item name',
              ),
            ),
            SizedBox(width: 16),
            Expanded(
              child: CustomInfoWidget(
                title: 'Item mount',
                hint: 'USD',
              ),
            ),
          ],
        ),
        SizedBox(height: 24),
        Row(
          children: [
            Expanded(
              child: CustomButton(
                bgColor: Colors.white,
                btnText: 'Add more details',
              ),
            ),
            SizedBox(width: 24),
            Expanded(
              child: CustomButton(
                btnText: 'Send Money',
              ),
            ),
          ],
        )
      ],
    );
  }
}
