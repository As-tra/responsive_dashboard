import 'package:flutter/material.dart';
import 'package:responsive_dashboard/widgets/custom_drawer.dart';
import 'package:responsive_dashboard/widgets/custom_drawer_item.dart';

class CustomDrawerList extends StatelessWidget {
  const CustomDrawerList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: CustomDrawer.drawerItems.length,
      itemBuilder: (context, index) {
        return  CustomDrawerItem(
          drawerItemModel: CustomDrawer.drawerItems[index],
        );
      },
    );
  }
}
