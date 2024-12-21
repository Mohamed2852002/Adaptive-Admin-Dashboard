import 'package:adaptive_admin_dashboard/utils/app_images.dart';
import 'package:adaptive_admin_dashboard/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class TimeWidget extends StatelessWidget {
  const TimeWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(
          color: const Color(0xffF1F1F1),
          width: 2,
        ),
      ),
      child: Row(
        //   mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            'Monthly',
            style: Styles.styleMedium16(context),
          ),
          const SizedBox(width: 18),
          SvgPicture.asset(AppImages.imagesArrowDown),
        ],
      ),
    );
  }
}
