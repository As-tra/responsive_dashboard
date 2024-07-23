import 'package:flutter/material.dart';
import 'package:responsive_dashboard/widgets/all_expenses_and_quick_invoices.dart';
import 'package:responsive_dashboard/widgets/cards_and_transaction_section.dart';
import 'package:responsive_dashboard/widgets/income_section.dart';

class DashboardMobileLayout extends StatelessWidget {
  const DashboardMobileLayout({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Column(
        children: [
          AllExpensesAndQuickInvoices(),
          CardsAndTransactionSection(),
          SizedBox(height: 24),
          IncomeSection(),
        ],
      ),
    );
  }
}