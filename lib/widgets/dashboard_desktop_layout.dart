import 'package:flutter/material.dart';
import 'package:responsive_dashboard/widgets/all_expenses_and_quick_invoices.dart';
import 'package:responsive_dashboard/widgets/cards_and_transaction_section.dart';
import 'package:responsive_dashboard/widgets/custom_drawer.dart';

class DashboardDesktopLayout extends StatelessWidget {
  const DashboardDesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(child: CustomDrawer()),
        SizedBox(width: 32),
        Expanded(
          flex: 3,
          child: AllExpensesAndQuickInvoices(),
        ),
        SizedBox(width: 24),
        Expanded(
          flex: 2,
          child: CardsAndTransactionSection(),
        ),
      ],
    );
  }
}
