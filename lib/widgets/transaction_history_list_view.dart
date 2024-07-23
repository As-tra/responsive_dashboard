import 'package:flutter/material.dart';
import 'package:responsive_dashboard/enums/transaction_type.dart';
import 'package:responsive_dashboard/models/transaction_model.dart';
import 'package:responsive_dashboard/widgets/transaction_item.dart';

class TransactionHistoryListView extends StatelessWidget {
  const TransactionHistoryListView({super.key});

  static const items = [
    TransactionModel(
        title: 'Cash Withdrawal',
        date: '13 Apr, 2022 at 3:30 PM ',
        amout: r'$20,129',
        type: TransactionType.withdraw),
    TransactionModel(
        title: 'Landing Page project',
        date: '13 Apr, 2022 at 3:30 PM ',
        amout: r'$2,000',
        type: TransactionType.deposit),
    TransactionModel(
        title: 'Juni Mobile App project',
        date: '13 Apr, 2022 at 3:30 PM ',
        amout: r'$20,129',
        type: TransactionType.deposit),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: const ScrollPhysics(),
      itemCount: items.length,
      itemBuilder: (context, index) {
        return TransactionItem(item: items[index]);
      },
    );
  }
}
