import 'package:adaptive_admin_dashboard/utils/styles.dart';
import 'package:adaptive_admin_dashboard/widgets/home_widgets/quick_invoice_widgets/custom_text_field.dart';
import 'package:flutter/material.dart';

class QuickInvoiceField extends StatelessWidget {
  const QuickInvoiceField({super.key, required this.titlt, required this.hint});
  final String titlt, hint;
  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 12,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          titlt,
          style: Styles.styleMedium16(context),
        ),
        CustomTextField(hint: hint),
      ],
    );
  }
}
