import 'package:flutter/material.dart';
import 'package:responsive_dashboard/models/item_detail_model.dart';
import 'package:responsive_dashboard/widgets/icome_details_item.dart';

class IncomeDetails extends StatelessWidget {
  const IncomeDetails({super.key});

  static const items = [
    ItemDetailModel(
      bulletColor: Color(0xff208CC8),
      title: 'Design service',
      percentage: 40,
    ),
    ItemDetailModel(
      bulletColor: Color(0xff4EB7F2),
      title: 'Design product',
      percentage: 25,
    ),
    ItemDetailModel(
      bulletColor: Color(0xff064061),
      title: 'Product royalti',
      percentage: 20,
    ),
    ItemDetailModel(
      bulletColor: Color(0xffE2DECD),
      title: 'Other',
      percentage: 15,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: items.length,
      itemBuilder: (context, index) {
        return IncomeDetailsItem(itemDetailModel: items[index]);
      },
    );
  }
}