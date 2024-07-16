import 'package:flutter/material.dart';
import 'package:responsive_dashboard/models/drawer_item_model.dart';
import 'package:responsive_dashboard/models/user_info_model.dart';
import 'package:responsive_dashboard/utils/assets.dart';
import 'package:responsive_dashboard/widgets/custom_drawer_list.dart';
import 'package:responsive_dashboard/widgets/user_info_list_tile.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  static const List<DrawerItemModel> drawerItems = [
    DrawerItemModel(image: Assets.imagesDashboard, title: 'Dashboard'),
    DrawerItemModel(image: Assets.imagesTransaction, title: 'My Transaction'),
    DrawerItemModel(image: Assets.imagesStatistic, title: 'Statistics'),
    DrawerItemModel(image: Assets.imagesWallet, title: 'Wallet Account'),
    DrawerItemModel(image: Assets.imagesInvestment, title: 'My Investments'),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        children: [
          UserInfoListTile(
            user: UserInfoModel(
              title: 'Lekan Okeowo',
              subtitle: 'demo@gmail.com',
              image: Assets.imagesAvatar3,
            ),
          ),
          const SizedBox(height: 8),
          const Expanded(child: CustomDrawerList()),
        ],
      ),
    );
  }
}
