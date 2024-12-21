import 'package:adaptive_admin_dashboard/utils/app_images.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class AllExpensesItemHeader extends StatelessWidget {
  const AllExpensesItemHeader(
      {super.key,
      required this.icon,
      required this.iconColor,
      required this.iconBackgroundColor});
  final String icon;
  final Color iconColor;
  final Color iconBackgroundColor;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Flexible(
          child: CircleAvatar(
            radius: 30,
            backgroundColor: iconBackgroundColor,
            child: SvgPicture.asset(icon,
                colorFilter: ColorFilter.mode(iconColor, BlendMode.srcIn)),
          ),
        ),
        const Spacer(),
        Flexible(
          child: SvgPicture.asset(
            height: 24,
            width: 24,
            AppImages.imagesArrowRight,
            colorFilter: ColorFilter.mode(iconColor, BlendMode.srcIn),
          ),
        ),
      ],
    );
  }
}
