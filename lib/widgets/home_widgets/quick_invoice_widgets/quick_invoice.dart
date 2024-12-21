import 'package:adaptive_admin_dashboard/widgets/custom_background_container.dart';
import 'package:adaptive_admin_dashboard/widgets/custom_divider.dart';
import 'package:adaptive_admin_dashboard/widgets/home_widgets/quick_invoice_widgets/latest_transaction.dart';
import 'package:adaptive_admin_dashboard/widgets/home_widgets/quick_invoice_widgets/quick_invoice_actions.dart';
import 'package:adaptive_admin_dashboard/widgets/home_widgets/quick_invoice_widgets/quick_invoice_form.dart';
import 'package:adaptive_admin_dashboard/widgets/home_widgets/quick_invoice_widgets/quick_invoice_header.dart';
import 'package:flutter/material.dart';

class QuickInvoice extends StatelessWidget {
  const QuickInvoice({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomBackgroundContainer(
      padding: 24,
      child: Column(
        spacing: 24,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          QuickInvoiceHeader(),
          LatestTransaction(),
          CustomDivider(),
          QuickInvoiceForm(),
          QuickInvoiceActions(),
        ],
      ),
    );
  }
}
