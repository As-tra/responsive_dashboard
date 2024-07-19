import 'package:flutter/material.dart';
import 'package:responsive_dashboard/utils/assets.dart';
import 'package:responsive_dashboard/utils/styles.dart';

class MyCard extends StatelessWidget {
  const MyCard({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 420 / 215,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          image: const DecorationImage(
            image: AssetImage(Assets.imagesCard),
          ),
        ),
        child: Column(
          children: [
            ListTile(
              contentPadding: const EdgeInsets.only(top: 20, left: 31),
              title: Text(
                'Name card',
                style: Styles.styleRegular16.copyWith(color: Colors.white),
              ),
              subtitle: const Text(
                'Syah Bandi',
                style: Styles.styleMeduim20,
              ),
            )
          ],
        ),
      ),
    );
  }
}
