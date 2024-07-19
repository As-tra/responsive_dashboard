import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responsive_dashboard/constants.dart';

class AllExpensesItemHeader extends StatelessWidget {
  const AllExpensesItemHeader(
      {super.key, required this.image, this.isActive = false});
  final String image;
  final bool isActive;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CircleAvatar(
          backgroundColor:
              isActive ? Colors.white.withOpacity(.1) : const Color(0xffFAFAFA),
          radius: 30,
          child: SvgPicture.asset(
            image,
            colorFilter: ColorFilter.mode(
                isActive ? Colors.white : kprimaryColor, BlendMode.srcIn),
          ),
        ),
        const Spacer(),
        Icon(
          Icons.arrow_forward_ios_rounded,
          color: isActive ? Colors.white : ksecondaryColor,
        ),
      ],
    );
  }
}
