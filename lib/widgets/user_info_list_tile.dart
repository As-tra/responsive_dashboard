import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responsive_dashboard/models/user_info_model.dart';
import 'package:responsive_dashboard/utils/styles.dart';

class UserInfoListTile extends StatelessWidget {
  final UserInfoModel user;
  const UserInfoListTile({
    super.key,
    required this.user,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: const Color(0xffFAFAFA),
      elevation: 0,
      child: ListTile(
        leading: SvgPicture.asset(
          user.image,
        ),
        title: Text(
          user.title,
          style: Styles.styleSemiBold16(context),
        ),
        subtitle: Text(
          user.subtitle,
          style: Styles.styleRegular12(context),
        ),
      ),
    );
  }
}
