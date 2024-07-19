import 'package:flutter/material.dart';
import 'package:responsive_dashboard/models/user_info_model.dart';
import 'package:responsive_dashboard/utils/assets.dart';
import 'package:responsive_dashboard/widgets/user_info_list_tile.dart';

class LatestTransactionListView extends StatelessWidget {
  const LatestTransactionListView({
    super.key,
  });

  static const List<UserInfoModel> items = [
    UserInfoModel(
      title: 'Madrani Andi',
      subtitle: 'Madraniadi20@gmail',
      image: Assets.imagesAvatar1,
    ),
    UserInfoModel(
      title: 'Josua Nunito',
      subtitle: 'Josh Nunito@gmail.com',
      image: Assets.imagesAvatar2,
    ),
    UserInfoModel(
      title: 'Madrani Andi',
      subtitle: 'Madraniadi20@gmail',
      image: Assets.imagesAvatar1,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      
      scrollDirection: Axis.horizontal,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: items
            .map((e) => IntrinsicWidth(
                  child: Padding(
                    padding: const EdgeInsets.only(right: 12),
                    child: UserInfoListTile(
                      user: e,
                    ),
                  ),
                ))
            .toList(),
      ),
    );
    // return SizedBox(
    //   height: 76,
    //   child: ListView.builder(
    //     scrollDirection: Axis.horizontal,
    //     itemCount: items.length,
    //     itemBuilder: (context, index) {
    //       return IntrinsicWidth(
    //         child: Padding(
    //           padding: const EdgeInsets.only(right: 12),
    //           child: UserInfoListTile(
    //             user: items[index],
    //           ),
    //         ),
    //       );
    //     },
    //   ),
    // );
  }
}
