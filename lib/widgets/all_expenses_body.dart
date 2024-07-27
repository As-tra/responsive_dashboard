import 'package:flutter/material.dart';
import 'package:responsive_dashboard/models/all_expenses_item_model.dart';
import 'package:responsive_dashboard/utils/assets.dart';
import 'package:responsive_dashboard/widgets/all_expenses_item.dart';

class AllExpensesBody extends StatefulWidget {
  const AllExpensesBody({super.key});

  @override
  State<AllExpensesBody> createState() => _AllExpensesBodyState();
}

class _AllExpensesBodyState extends State<AllExpensesBody> {
  int currentValue = 0;
  static const List<AllExpensesItemModel> items = [
    AllExpensesItemModel(
      image: Assets.imagesMoney,
      title: 'Balance',
      date: 'April 2022',
      price: r"$20.129",
    ),
    AllExpensesItemModel(
      image: Assets.imagesIncome,
      title: 'Income',
      date: 'April 2022',
      price: r"$20.129",
    ),
    AllExpensesItemModel(
      image: Assets.imagesExpense,
      title: 'Expenses',
      date: 'April 2022',
      price: r"$20.129",
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: GestureDetector(
            onTap: () {
              setState(() {});
              if (currentValue != 0) {
                currentValue = 0;
              }
            },
            child: AllExpensesItem(
              itemModel: items[0],
              isSelected: 0 == currentValue,
            ),
          ),
        ),
        const SizedBox(width: 8),
        Expanded(
          child: GestureDetector(
            onTap: () {
              setState(() {});
              if (currentValue != 1) {
                currentValue = 1;
              }
            },
            child: AllExpensesItem(
              itemModel: items[1],
              isSelected: 1 == currentValue,
            ),
          ),
        ),
        const SizedBox(width: 8),
        Expanded(
          child: GestureDetector(
            onTap: () {
              setState(() {});
              if (currentValue != 2) {
                currentValue = 2;
              }
            },
            child: AllExpensesItem(
              itemModel: items[2],
              isSelected: 2 == currentValue,
            ),
          ),
        ),
      ],
    );
  }
}
