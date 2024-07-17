import 'package:flutter/material.dart';
import 'package:responsive_dashboard/models/drawer_item_model.dart';
import 'package:responsive_dashboard/widgets/active_and_inactive_drawer_items.dart';

class CustomDrawerItem extends StatelessWidget {
  final DrawerItemModel drawerItemModel;
  final bool isActive;
  const CustomDrawerItem({
    super.key,
    required this.drawerItemModel,
    required this.isActive,
  });

  @override
  Widget build(BuildContext context) {
    return isActive
        ? ActiveDrawerItem(drawerItemModel: drawerItemModel)
        : InActiveDrawerItem(drawerItemModel: drawerItemModel);
  }
}

