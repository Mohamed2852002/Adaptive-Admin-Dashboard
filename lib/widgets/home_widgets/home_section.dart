import 'package:adaptive_admin_dashboard/widgets/home_widgets/all_expenses_widgets/all_expenses.dart';
import 'package:adaptive_admin_dashboard/widgets/home_widgets/quick_invoice_widgets/quick_invoice.dart';
import 'package:flutter/material.dart';

class HomeSection extends StatelessWidget {
  const HomeSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      spacing: 24,
      children: [
        AllExpenses(),
        QuickInvoice(),
      ],
    );
  }
}
