import 'package:flutter/material.dart';
import 'package:responsive_dashboard/models/all_expenses_item_model.dart';
import 'package:responsive_dashboard/utils/styles.dart';
import 'package:responsive_dashboard/widgets/all_expenses_item_header.dart';

class InActiveAllExpensesItem extends StatelessWidget {
  const InActiveAllExpensesItem({
    super.key,
    required this.itemModel,
  });

  final AllExpensesItemModel itemModel;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        vertical: 16,
        horizontal: 20,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        border: Border.all(
          color: const Color(0xffF1F1F1),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AllExpensesItemHeader(image: itemModel.image),
          const SizedBox(height: 34),
          Text(itemModel.title, style: Styles.styleSemiBold16(context)),
          const SizedBox(height: 8),
          Text(itemModel.date, style: Styles.styleRegular14(context)),
          const SizedBox(height: 16),
          Text(itemModel.price, style: Styles.styleSemiBold24(context)),
        ],
      ),
    );
  }
}
