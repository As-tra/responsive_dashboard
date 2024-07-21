import 'package:flutter/material.dart';
import 'package:responsive_dashboard/widgets/transaction_history_header.dart';

class TransactionHistory extends StatelessWidget {
  const TransactionHistory({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        TransactionHIstoryHeader(),
        SizedBox(height: 20),
        
      ],
    );
  }
}