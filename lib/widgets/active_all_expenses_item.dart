import 'package:flutter/material.dart';
import 'package:responsive_dashboard/constants.dart';
import 'package:responsive_dashboard/models/all_expenses_item_model.dart';
import 'package:responsive_dashboard/utils/styles.dart';
import 'package:responsive_dashboard/widgets/all_expenses_item_header.dart';

class ActiveAllExpensesItem extends StatelessWidget {
  const ActiveAllExpensesItem({
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
        color: kprimaryColor,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AllExpensesItemHeader(
            image: itemModel.image,
            isActive: true,
          ),
          const SizedBox(height: 34),
          Text(
            itemModel.title,
            style: Styles.styleSemiBold16(context).copyWith(
              color: Colors.white,
            ),
          ),
          const SizedBox(height: 8),
          Text(
            itemModel.date,
            style: Styles.styleRegular14(context).copyWith(
              color: const Color(0xffFAFAFA),
            ),
          ),
          const SizedBox(height: 16),
          Text(
            itemModel.price,
            style: Styles.styleSemiBold24(context).copyWith(
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
