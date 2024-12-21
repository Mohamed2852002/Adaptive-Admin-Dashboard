import 'package:adaptive_admin_dashboard/utils/styles.dart';
import 'package:flutter/material.dart';

class IncomeDetailsItem extends StatelessWidget {
  const IncomeDetailsItem({
    super.key,
    required this.color,
    required this.title,
    required this.percentage,
  });
  final Color color;
  final String title;
  final String percentage;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      minVerticalPadding: 0,
      minTileHeight: 0,
      contentPadding: EdgeInsets.zero,
      leading: Container(
        height: 12,
        width: 12,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: color,
        ),
      ),
      title: Text(
        title,
        style: Styles.styleRegular16(context),
      ),
      trailing: Text(
        percentage,
        style: Styles.styleMedium16(context).copyWith(
          color: const Color(0xff208CC8),
        ),
      ),
    );
  }
}
