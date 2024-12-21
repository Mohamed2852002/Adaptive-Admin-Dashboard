import 'package:adaptive_admin_dashboard/widgets/custom_background_container.dart';
import 'package:adaptive_admin_dashboard/widgets/custom_divider.dart';
import 'package:adaptive_admin_dashboard/widgets/my_card_and_transaction_widgets/my_card_widgets/my_card_section.dart';
import 'package:adaptive_admin_dashboard/widgets/my_card_and_transaction_widgets/transaction_widgets/transaction_section.dart';
import 'package:flutter/material.dart';

class MyCardAndTransactionSection extends StatelessWidget {
  const MyCardAndTransactionSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomBackgroundContainer(
      padding: 24,
      child: Column(
        spacing: 20,
        children: [
          MyCardSection(),
          CustomDivider(),
          TransactionSection(),
        ],
      ),
    );
  }
}
