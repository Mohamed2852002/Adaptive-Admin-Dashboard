import 'package:adaptive_admin_dashboard/widgets/my_card_and_transaction_widgets/transaction_widgets/transaction_header.dart';
import 'package:adaptive_admin_dashboard/widgets/my_card_and_transaction_widgets/transaction_widgets/transaction_item_builder.dart';
import 'package:flutter/material.dart';

class TransactionSection extends StatelessWidget {
  const TransactionSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      spacing: 20,
      children: [
        TransactionHeader(),
        TransactionItemBuilder(),
      ],
    );
  }
}
