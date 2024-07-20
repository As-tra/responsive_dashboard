import 'package:expandable_page_view/expandable_page_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:responsive_dashboard/cubits/Cards_cubit/cards_cubit.dart';
import 'package:responsive_dashboard/widgets/my_card.dart';

class MyCardsPageView extends StatelessWidget {
  const MyCardsPageView({super.key});

  @override
  Widget build(BuildContext context) {
    return ExpandablePageView(
      onPageChanged: (value) {
        BlocProvider.of<CardsCubit>(context).changeCard(value: value);
      },
      children: List.generate(
        3,
        (index) => const MyCard(),
      ),
    );
  }
}
