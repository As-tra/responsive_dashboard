import 'package:flutter/material.dart';
import 'package:responsive_dashboard/models/drawer_item_model.dart';
import 'package:responsive_dashboard/utils/assets.dart';
import 'package:responsive_dashboard/widgets/custom_drawer_item.dart';

class CustomDrawerList extends StatefulWidget {
  const CustomDrawerList({super.key});

  @override
  State<CustomDrawerList> createState() => _CustomDrawerListState();
}

class _CustomDrawerListState extends State<CustomDrawerList> {
  static const List<DrawerItemModel> drawerItems = [
    DrawerItemModel(image: Assets.imagesDashboard, title: 'Dashboard'),
    DrawerItemModel(image: Assets.imagesTransaction, title: 'My Transaction'),
    DrawerItemModel(image: Assets.imagesStatistic, title: 'Statistics'),
    DrawerItemModel(image: Assets.imagesWallet, title: 'Wallet Account'),
    DrawerItemModel(image: Assets.imagesInvestment, title: 'My Investments'),
  ];
  int current = 0;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: ListView.separated(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        itemCount: drawerItems.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              setState(() {});
              if (current != index) {
                current = index;
              }
            },
            child: CustomDrawerItem(
              drawerItemModel: drawerItems[index],
              isActive: current == index,
            ),
          );
        },
        separatorBuilder: (context, index) {
          return const SizedBox(height: 20);
        },
      ),
    );
  }
}
