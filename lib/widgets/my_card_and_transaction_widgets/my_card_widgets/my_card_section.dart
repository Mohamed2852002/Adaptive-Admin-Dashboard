import 'package:adaptive_admin_dashboard/utils/styles.dart';
import 'package:adaptive_admin_dashboard/widgets/my_card_and_transaction_widgets/my_card_widgets/my_card_page_view.dart';
import 'package:flutter/material.dart';

class MyCardSection extends StatelessWidget {
  const MyCardSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 20,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'My card',
          style: Styles.styleSemiBold20(context),
        ),
        const MyCardPageView(),
      ],
    );
  }
}
