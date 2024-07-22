import 'package:flutter/material.dart';
import 'package:responsive_dashboard/enums/transaction_type.dart';
import 'package:responsive_dashboard/models/transaction_model.dart';
import 'package:responsive_dashboard/utils/styles.dart';

class TransactionItem extends StatelessWidget {
  const TransactionItem({super.key, required this.item});
  final TransactionModel item;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: const Color(0xfffafafa),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      elevation: 0,
      child: ListTile(
        title: Padding(
          padding: const EdgeInsets.only(bottom: 8.0),
          child: Text(
            item.title,
            style: Styles.styleSemiBold16,
          ),
        ),
        subtitle: Text(
          item.date,
          style: Styles.styleMeduim16.copyWith(
            color: const Color(0xffaaaaaa),
          ),
        ),
        trailing: Text(
          item.amout,
          style: Styles.styleSemiBold20.copyWith(
            color: item.type == TransactionType.deposit
                ? const Color(0xff7DD97B)
                : const Color(0xffF3735E),
          ),
        ),
      ),
    );
  }
}
