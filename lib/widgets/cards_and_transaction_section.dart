import 'package:flutter/material.dart';
import 'package:responsive_dashboard/widgets/custom_container.dart';
import 'package:responsive_dashboard/widgets/my_cards_section.dart';
import 'package:responsive_dashboard/widgets/transaction_history.dart';

class CardsAndTransactionSection extends StatelessWidget {
  const CardsAndTransactionSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomContainer(
      padding: EdgeInsets.all(24),
      child: Column(
        children: [
          MyCardsSection(),
          Divider(
            color: Color(0xffF1F1F1),
            height: 30,
          ),
          TransactionHistory(),
        ],
      ),
    );
  }
}
