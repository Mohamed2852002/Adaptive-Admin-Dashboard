import 'package:adaptive_admin_dashboard/utils/app_images.dart';
import 'package:adaptive_admin_dashboard/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CardWidget extends StatelessWidget {
  const CardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 420 / 215,
      child: Container(
        decoration: BoxDecoration(
          image: const DecorationImage(
            image: AssetImage(
              AppImages.imagesCardBakcground,
            ),
          ),
          borderRadius: BorderRadius.circular(12),
          color: Theme.of(context).colorScheme.primary,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            ListTile(
              minVerticalPadding: 0,
              minTileHeight: 0,
              contentPadding:
                  const EdgeInsets.only(left: 30, right: 24, top: 16),
              title: Text(
                'Name card',
                style: Styles.styleRegular16(context).copyWith(
                  color: Colors.white,
                ),
              ),
              subtitle: Text(
                'Syah Bandi',
                style: Styles.styleMedium20(context),
              ),
              trailing: SvgPicture.asset(AppImages.imagesCardIcon),
            ),
            const Spacer(),
            Padding(
              padding: const EdgeInsets.only(right: 24),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    '0918 8124 0042 8129',
                    style: Styles.styleSemiBold24(context).copyWith(
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(height: 12),
                  Text(
                    '12/20 - 124',
                    style: Styles.styleRegular16(context).copyWith(
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
            // const SizedBox(height: 27),
            const Flexible(
              child: SizedBox(height: 27),
            ),
          ],
        ),
      ),
    );
  }
}
