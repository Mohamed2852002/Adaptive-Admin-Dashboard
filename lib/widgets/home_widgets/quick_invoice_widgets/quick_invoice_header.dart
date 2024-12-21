import 'package:adaptive_admin_dashboard/utils/styles.dart';
import 'package:flutter/material.dart';

class QuickInvoiceHeader extends StatelessWidget {
  const QuickInvoiceHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
         Text(
          'Quick Invoice',
          style: Styles.styleSemiBold20(context),
        ),
        const Spacer(),
        CircleAvatar(
          radius: 24,
          backgroundColor: const Color(0xffFAFAFA),
          child: Icon(
            Icons.add,
            color: Theme.of(context).colorScheme.primary,
          ),
        ),
      ],
    );
  }
}
