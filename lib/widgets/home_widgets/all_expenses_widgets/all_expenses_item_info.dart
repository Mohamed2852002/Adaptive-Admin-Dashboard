import 'package:adaptive_admin_dashboard/models/all_expenses_item_model.dart';
import 'package:adaptive_admin_dashboard/utils/styles.dart';
import 'package:flutter/material.dart';

class AllExpensesItemInfo extends StatelessWidget {
  const AllExpensesItemInfo(
      {super.key,
      required this.model,
      required this.titleTextColor,
      required this.dateTextColor,
      required this.moneyTextColor});
  final AllExpensesItemModel model;
  final Color titleTextColor;
  final Color dateTextColor;
  final Color moneyTextColor;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        FittedBox(
          fit: BoxFit.scaleDown,
          child: Text(
            model.itemText,
            style:
                Styles.styleSemiBold16(context).copyWith(color: titleTextColor),
          ),
        ),
        const SizedBox(height: 8),
        Text(
          model.itemDate,
          style: Styles.styleRegular14(context).copyWith(color: dateTextColor),
        ),
        const SizedBox(height: 16),
        FittedBox(
          fit: BoxFit.scaleDown,
          child: Text(
            '\$${model.itemMoney}',
            style:
                Styles.styleSemiBold24(context).copyWith(color: moneyTextColor),
          ),
        ),
      ],
    );
  }
}
