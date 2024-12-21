import 'package:adaptive_admin_dashboard/widgets/custom_background_container.dart';
import 'package:adaptive_admin_dashboard/widgets/custom_header.dart';
import 'package:adaptive_admin_dashboard/widgets/income_widgets/income_section_body.dart';
import 'package:flutter/material.dart';

class IncomeSection extends StatelessWidget {
  const IncomeSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomBackgroundContainer(
      padding: 20,
      child: Column(
        spacing: 16,
        children: [
          CustomHeader(title: 'Income'),
          IncomeSectionBody(),
        ],
      ),
    );
  }
}
