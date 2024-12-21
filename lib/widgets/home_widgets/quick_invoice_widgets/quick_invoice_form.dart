import 'package:adaptive_admin_dashboard/widgets/home_widgets/quick_invoice_widgets/quick_invoice_field.dart';
import 'package:flutter/material.dart';

class QuickInvoiceForm extends StatelessWidget {
  const QuickInvoiceForm({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      spacing: 24,
      children: [
        Row(
          spacing: 16,
          children: [
            Expanded(
              child: QuickInvoiceField(
                titlt: 'Customer name',
                hint: 'Type customer name',
              ),
            ),
            Expanded(
              child: QuickInvoiceField(
                titlt: 'Customer Email',
                hint: 'Type customer email',
              ),
            ),
          ],
        ),
        Row(
          spacing: 16,
          children: [
            Expanded(
              child: QuickInvoiceField(
                titlt: 'Item name',
                hint: 'Type customer name',
              ),
            ),
            Expanded(
              child: QuickInvoiceField(
                titlt: 'Item mount',
                hint: 'USD',
              ),
            ),
          ],
        ),
      ],
    );
  }
}
