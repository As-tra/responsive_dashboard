import 'package:flutter/material.dart';
import 'package:responsive_dashboard/widgets/all_expenses_body.dart';
import 'package:responsive_dashboard/widgets/all_expenses_header.dart';
import 'package:responsive_dashboard/widgets/custom_container.dart';

class AllExpenses extends StatelessWidget {
  const AllExpenses({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomContainer(
      padding: EdgeInsets.all(20),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          AllExpensesHeader(),
          SizedBox(height: 16),
          AllExpensesBody(),
        ],
      ),
    );
  }
}

