import 'package:adaptive_admin_dashboard/widgets/income_widgets/income_details_item.dart';
import 'package:flutter/material.dart';

class IncomeDetails extends StatelessWidget {
  const IncomeDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      spacing: 12,
      children: [
        IncomeDetailsItem(
          color: Color(0xff208CC8),
          title: 'Design service',
          percentage: '40%',
        ),
        IncomeDetailsItem(
          color: Color(0xff4EB7F2),
          title: 'Design product',
          percentage: '25%',
        ),
        IncomeDetailsItem(
          color: Color(0xff064061),
          title: 'Product royaltiy',
          percentage: '20%',
        ),
        IncomeDetailsItem(
          color: Color(0xffE2DECD),
          title: 'Other',
          percentage: '22%',
        ),
      ],
    );
  }
}
