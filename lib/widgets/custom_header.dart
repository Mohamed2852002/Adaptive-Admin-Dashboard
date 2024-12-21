import 'package:adaptive_admin_dashboard/utils/styles.dart';
import 'package:adaptive_admin_dashboard/widgets/home_widgets/all_expenses_widgets/time_widget.dart';
import 'package:flutter/material.dart';

class CustomHeader extends StatelessWidget {
  const CustomHeader({super.key, required this.title});
  final String title;
  @override
  Widget build(BuildContext context) {
    return  Row(
      children: [
        Text(
          title,
          style: Styles.styleSemiBold20(context),
        ),
        const Spacer(),
        const TimeWidget(),
      ],
    );
  }
}
