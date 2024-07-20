import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:responsive_dashboard/cubits/Cards_cubit/cards_cubit.dart';
import 'package:responsive_dashboard/widgets/custom_dot.dart';

class DotsIndicator extends StatelessWidget {
  const DotsIndicator({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CardsCubit, int>(
      builder: (context, state) {
        return Row(
          children: List.generate(
            3,
            (index) =>  Padding(
              padding: const EdgeInsets.only(right: 8),
              child: CustomDot(isActive: state ==index),
            ),
          ),
        );
      },
    );
  }
}
