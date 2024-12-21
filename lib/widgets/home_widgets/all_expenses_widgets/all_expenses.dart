import 'package:adaptive_admin_dashboard/widgets/custom_background_container.dart';
import 'package:adaptive_admin_dashboard/widgets/custom_header.dart';
import 'package:adaptive_admin_dashboard/widgets/home_widgets/all_expenses_widgets/all_expenses_item_builder.dart';
import 'package:flutter/material.dart';

class AllExpenses extends StatelessWidget {
  const AllExpenses({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomBackgroundContainer(
      padding: 20,
      child: Column(
        children: [
          CustomHeader(title: 'All Expenses'),
          SizedBox(height: 16),
          AllExpensesItemBuilder(),
        ],
      ),
    );
  }
}
