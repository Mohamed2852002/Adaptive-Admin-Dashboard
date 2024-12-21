import 'package:adaptive_admin_dashboard/models/transaction_model.dart';
import 'package:adaptive_admin_dashboard/utils/styles.dart';
import 'package:flutter/material.dart';

class TransactionItem extends StatelessWidget {
  const TransactionItem({super.key, required this.model});
  final TransactionModel model;
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      color: const Color(0xffFAFAFA),
      child: ListTile(
        minVerticalPadding: 0,
        minTileHeight: 0,
        contentPadding: const EdgeInsets.all(16),
        title: Text(
          model.title,
          style: Styles.styleBold16(context).copyWith(
            color: const Color(0xff064061),
          ),
        ),
        subtitle: Padding(
          padding: const EdgeInsets.only(top: 6),
          child: Text(
            model.date,
            style: Styles.styleRegular16(context).copyWith(
              color: const Color(0xffAAAAAA),
            ),
          ),
        ),
        trailing: Text(
          model.amount,
          style: Styles.styleSemiBold20(context).copyWith(
            color: model.isDepositTransaction
                ? const Color(0xff7DD97B)
                : const Color(0xffF3735E),
          ),
        ),
      ),
    );
  }
}
