import 'package:flutter/material.dart';
import 'package:responsive_dashboard/models/drawer_item_model.dart';
import 'package:responsive_dashboard/models/user_info_model.dart';
import 'package:responsive_dashboard/utils/assets.dart';
import 'package:responsive_dashboard/widgets/active_and_inactive_drawer_items.dart';
import 'package:responsive_dashboard/widgets/custom_drawer_list.dart';
import 'package:responsive_dashboard/widgets/user_info_list_tile.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: UserInfoListTile(
              user: UserInfoModel(
                title: 'Lekan Okeowo',
                subtitle: 'demo@gmail.com',
                image: Assets.imagesAvatar3,
              ),
            ),
          ),
          SliverToBoxAdapter(child: const SizedBox(height: 8)),
          const CustomDrawerList(),
          const SliverFillRemaining(
            hasScrollBody: false,
            child: Column(
              children: [
                Expanded(child: SizedBox()),
                SizedBox(height: 32),
                InActiveDrawerItem(
                  drawerItemModel: DrawerItemModel(
                      image: Assets.imagesSetting, title: 'Setting system'),
                ),
                SizedBox(height: 20),
                InActiveDrawerItem(
                  drawerItemModel: DrawerItemModel(
                      image: Assets.imagesLogout, title: 'Logout account'),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
