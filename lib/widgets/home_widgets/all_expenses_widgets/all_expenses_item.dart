import 'package:adaptive_admin_dashboard/models/all_expenses_item_model.dart';
import 'package:adaptive_admin_dashboard/widgets/home_widgets/all_expenses_widgets/active_all_expenses_item.dart';
import 'package:adaptive_admin_dashboard/widgets/home_widgets/all_expenses_widgets/inactive_all_expenses_item.dart';
import 'package:flutter/material.dart';

class AllExpensesItem extends StatelessWidget {
  const AllExpensesItem(
      {super.key, required this.model, required this.isActive});
  final AllExpensesItemModel model;
  final bool isActive;
  @override
  Widget build(BuildContext context) {
    return isActive
        ? ActiveAllExpensesItem(model: model)
        : InactiveAllExpensesItem(model: model);
  }
}
