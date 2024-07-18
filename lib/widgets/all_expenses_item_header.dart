import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class AllExpensesItemHeader extends StatelessWidget {
  const AllExpensesItemHeader({super.key, required this.image});
  final String image;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CircleAvatar(
          backgroundColor: const Color(0xffFAFAFA),
          radius: 30,
          child: SvgPicture.asset(image),
        ),
        const Spacer(),
        const Icon(
          Icons.arrow_forward_ios_rounded,
          color: Color(0xff064061),
        ),
      ],
    );
  }
}
