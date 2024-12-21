import 'package:adaptive_admin_dashboard/models/transaction_model.dart';
import 'package:adaptive_admin_dashboard/widgets/my_card_and_transaction_widgets/transaction_widgets/transaction_item.dart';
import 'package:flutter/material.dart';

class TransactionItemBuilder extends StatelessWidget {
  const TransactionItemBuilder({super.key});
  static const List<TransactionModel> items = [
    TransactionModel(
        title: 'Cash Withdrawal',
        date: '13 Apr, 2022',
        amount: '\$20,129',
        isDepositTransaction: false),
    TransactionModel(
        title: 'Landing Page project',
        date: '13 Apr, 2022 at 3:30 PM',
        amount: '\$2,000',
        isDepositTransaction: true),
    TransactionModel(
        title: 'Juni Mobile App project',
        date: '13 Apr, 2022 at 3:30 PM',
        amount: '\$20,129',
        isDepositTransaction: true),
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 260,
      child: ListView.separated(
        separatorBuilder: (context, index) => const SizedBox(height: 12),
        padding: EdgeInsets.zero,
        itemCount: items.length,
        itemBuilder: (context, index) => TransactionItem(model: items[index]),
      ),
    );
  }
}
