import 'package:adaptive_admin_dashboard/utils/styles.dart';
import 'package:adaptive_admin_dashboard/widgets/home_widgets/quick_invoice_widgets/custom_button.dart';
import 'package:flutter/material.dart';

class QuickInvoiceActions extends StatelessWidget {
  const QuickInvoiceActions({super.key});

  @override
  Widget build(BuildContext context) {
    return  Row(
      spacing: 24,
      children: [
        Expanded(
          child: Text(
            'Add more details',
            textAlign: TextAlign.center,
            style: Styles.styleSemiBold18(context),
          ),
        ),
        const Expanded(
          child: CustomButton(),
        ),
      ],
    );
  }
}
