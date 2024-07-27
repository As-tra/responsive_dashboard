import 'package:flutter/material.dart';
import 'package:responsive_dashboard/models/item_detail_model.dart';
import 'package:responsive_dashboard/utils/styles.dart';

class IncomeDetailsItem extends StatelessWidget {
  const IncomeDetailsItem({super.key, required this.itemDetailModel});
  final ItemDetailModel itemDetailModel;

  @override
  Widget build(BuildContext context) {
   
    return ListTile(
      leading: CircleAvatar(
        radius: 6,
        backgroundColor: itemDetailModel.bulletColor,
      ),
      title: Text(
        itemDetailModel.title,
        style: Styles.styleRegular16(context),
      ),
      trailing: Text(
        '${itemDetailModel.percentage}%',
        style: Styles.styleMeduim16(context).copyWith(color: const Color(0xff208CC8)),
      ),
    );
  }
}
