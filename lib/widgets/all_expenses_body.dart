import 'package:flutter/material.dart';
import 'package:responsive_dashboard/models/all_expenses_item_model.dart';
import 'package:responsive_dashboard/utils/assets.dart';
import 'package:responsive_dashboard/widgets/all_expenses_item.dart';

class AllExpensesBody extends StatefulWidget {
  const AllExpensesBody({super.key});

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
  State<AllExpensesBody> createState() => _AllExpensesBodyState();
}

class _AllExpensesBodyState extends State<AllExpensesBody> {
  int currentValue = 0;

  @override
  Widget build(BuildContext context) {
    return Row(
        children: AllExpensesBody.items.asMap().entries.map(
      (ele) {
        return Expanded(
          child: Padding(
            padding: EdgeInsets.only(
                right: ele.key != AllExpensesBody.items.length - 1 ? 12 : 0),
            child: GestureDetector(
              onTap: () {
                setState(() {});
                if (currentValue != ele.key) {
                  currentValue = ele.key;
                }
              },
              child: AllExpensesItem(
                itemModel: ele.value,
                isSelected: ele.key == currentValue,
              ),
            ),
          ),
        );
      },
    ).toList());
  }
}
