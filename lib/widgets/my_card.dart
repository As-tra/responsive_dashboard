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
        padding: const EdgeInsets.all(24),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          image: const DecorationImage(
            image: AssetImage(Assets.imagesCard),
            fit: BoxFit.fill,
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            ListTile(
              title: Text(
                'Name card',
                style: Styles.styleRegular16.copyWith(color: Colors.white),
              ),
              subtitle: const Text(
                'Syah Bandi',
                style: Styles.styleMeduim20,
              ),
            ),
            const Spacer(),
            Text(
              '0918 8124 0042 8129',
              style: Styles.styleSemiBold24.copyWith(color: Colors.white),
            ),
            const SizedBox(height: 12),
            Text(
              '12/20 - 124',
              style: Styles.styleRegular16.copyWith(color: Colors.white),
            ),
            const SizedBox(height: 26),
          ],
        ),
      ),
    );
  }
}
