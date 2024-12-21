import 'package:adaptive_admin_dashboard/models/all_expenses_item_model.dart';
import 'package:adaptive_admin_dashboard/widgets/home_widgets/all_expenses_widgets/all_expenses_item_header.dart';
import 'package:adaptive_admin_dashboard/widgets/home_widgets/all_expenses_widgets/all_expenses_item_info.dart';
import 'package:flutter/material.dart';

class InactiveAllExpensesItem extends StatelessWidget {
  const InactiveAllExpensesItem({super.key, required this.model});
  final AllExpensesItemModel model;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(
          color: const Color(0xffFAFAFA),
          width: 2,
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AllExpensesItemHeader(
            icon: model.itemIcon,
            iconColor: Theme.of(context).colorScheme.primary,
            iconBackgroundColor: const Color(0xffFAFAFA),
          ),
          const SizedBox(height: 34),
          AllExpensesItemInfo(
            model: model,
            titleTextColor: const Color(0xff064061),
            dateTextColor: const Color(0xffAAAAAA),
            moneyTextColor: Theme.of(context).colorScheme.primary,
          ),
        ],
      ),
    );
  }
}
