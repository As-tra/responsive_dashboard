import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responsive_dashboard/constants.dart';
import 'package:responsive_dashboard/models/drawer_item_model.dart';
import 'package:responsive_dashboard/utils/styles.dart';

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
    return isActive ? _buildActiveDrawerItem() : _buildInActiveDrawerItem();
  }

  ListTile _buildActiveDrawerItem() {
    return ListTile(
      leading: SvgPicture.asset(drawerItemModel.image),
      title: Text(
        drawerItemModel.title,
        style: Styles.styleBold16,
      ),
      trailing: Container(
        color: kprimaryColor,
        width: 3.3,
      ),
    );
  }

  ListTile _buildInActiveDrawerItem() {
    return ListTile(
      leading: SvgPicture.asset(drawerItemModel.image),
      title: Text(
        drawerItemModel.title,
        style: Styles.styleRegular16,
      ),
    );
  }
}
