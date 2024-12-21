import 'package:adaptive_admin_dashboard/models/all_expenses_item_model.dart';
import 'package:adaptive_admin_dashboard/widgets/home_widgets/all_expenses_widgets/all_expenses_item_header.dart';
import 'package:adaptive_admin_dashboard/widgets/home_widgets/all_expenses_widgets/all_expenses_item_info.dart';
import 'package:flutter/material.dart';

class ActiveAllExpensesItem extends StatelessWidget {
  const ActiveAllExpensesItem({super.key, required this.model});
  final AllExpensesItemModel model;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.primary,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AllExpensesItemHeader(
            icon: model.itemIcon,
            iconColor: Colors.white,
            iconBackgroundColor: Colors.white.withValues(alpha: 0.1),
          ),
          const SizedBox(height: 34),
          AllExpensesItemInfo(
            model: model,
            titleTextColor: Colors.white,
            dateTextColor: const Color(0xffFAFAFA),
            moneyTextColor: Colors.white,
          ),
        ],
      ),
    );
  }
}
