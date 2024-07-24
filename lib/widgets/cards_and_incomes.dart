import 'package:flutter/material.dart';
import 'package:responsive_dashboard/widgets/cards_and_transaction_section.dart';
import 'package:responsive_dashboard/widgets/income_section.dart';

class CardsAndIcnomes extends StatelessWidget {
  const CardsAndIcnomes({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      
      children: [
        SizedBox(height: 40),
        CardsAndTransactionSection(),
        SizedBox(height: 24),
        Expanded(child: IncomeSection()),
      ],
    );
  }
}
