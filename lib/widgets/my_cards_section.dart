import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:responsive_dashboard/cubits/Cards_cubit/cards_cubit.dart';
import 'package:responsive_dashboard/utils/styles.dart';
import 'package:responsive_dashboard/widgets/custom_container.dart';
import 'package:responsive_dashboard/widgets/dots_indicator.dart';
import 'package:responsive_dashboard/widgets/my_cards_page_view.dart';

class MyCardsSection extends StatelessWidget {
  const MyCardsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CardsCubit(),
      child: const CustomContainer(
        padding: EdgeInsets.all(24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'My card',
              style: Styles.styleSemiBold20,
            ),
            SizedBox(height: 20),
            MyCardsPageView(),
            SizedBox(height: 20),
            DotsIndicator(),
          ],
        ),
      ),
    );
  }
}
