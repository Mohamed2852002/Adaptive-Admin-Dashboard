import 'dart:developer';

import 'package:adaptive_admin_dashboard/utils/size_config.dart';
import 'package:adaptive_admin_dashboard/widgets/income_widgets/detailed_income_chart.dart';
import 'package:adaptive_admin_dashboard/widgets/income_widgets/income_chart.dart';
import 'package:adaptive_admin_dashboard/widgets/income_widgets/income_details.dart';
import 'package:flutter/material.dart';

class IncomeSectionBody extends StatelessWidget {
  const IncomeSectionBody({super.key});

  @override
  Widget build(BuildContext context) {
    log(MediaQuery.sizeOf(context).width.toString());
    if (MediaQuery.sizeOf(context).width > SizeConfig.desktopBreakpoint &&
        MediaQuery.sizeOf(context).width < 1725) {
      return const Padding(
        padding: EdgeInsets.all(12),
        child: DetailedIncomeChart(),
      );
    } else {
      return const Row(
        spacing: 40,
        children: [
          Expanded(child: IncomeChart()),
          Expanded(
            flex: 2,
            child: IncomeDetails(),
          ),
        ],
      );
    }
  }
}
