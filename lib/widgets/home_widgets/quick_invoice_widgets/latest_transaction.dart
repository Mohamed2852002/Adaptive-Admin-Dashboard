import 'package:adaptive_admin_dashboard/utils/styles.dart';
import 'package:adaptive_admin_dashboard/widgets/home_widgets/quick_invoice_widgets/quick_invoice_item_builder.dart';
import 'package:flutter/material.dart';

class LatestTransaction extends StatelessWidget {
  const LatestTransaction({super.key});

  @override
  Widget build(BuildContext context) {
    return  Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Latest Transaction',
          style: Styles.styleMedium16(context),
        ),
        const SizedBox(height: 12),
        const QuickInvoiceItemBuilder(),
      ],
    );
  }
}
