import 'package:adaptive_admin_dashboard/widgets/home_widgets/home_section.dart';
import 'package:adaptive_admin_dashboard/widgets/income_widgets/income_section.dart';
import 'package:adaptive_admin_dashboard/widgets/my_card_and_transaction_widgets/my_card_and_transaction_section.dart';
import 'package:flutter/material.dart';

class MobileLayout extends StatelessWidget {
  const MobileLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Column(
        children: [
          HomeSection(),
          SizedBox(height: 24),
          MyCardAndTransactionSection(),
          SizedBox(height: 24),
          IncomeSection(),
          SizedBox(height: 24),
        ],
      ),
    );
  }
}
