import 'package:adaptive_admin_dashboard/widgets/drawer_widgets/custom_drawer.dart';
import 'package:adaptive_admin_dashboard/widgets/home_widgets/home_section.dart';
import 'package:adaptive_admin_dashboard/widgets/income_widgets/income_section.dart';
import 'package:adaptive_admin_dashboard/widgets/my_card_and_transaction_widgets/my_card_and_transaction_section.dart';
import 'package:flutter/material.dart';

class DesktopLayout extends StatelessWidget {
  const DesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Row(
        children: [
          Expanded(child: CustomDrawer()),
          SizedBox(width: 32),
          Expanded(
            flex: 3,
            child: CustomScrollView(
              slivers: [
                SliverFillRemaining(
                  hasScrollBody: false,
                  child: Row(
                    children: [
                      Expanded(
                        flex: 2,
                        child: Column(
                          children: [
                            SizedBox(height: 40),
                            HomeSection(),
                          ],
                        ),
                      ),
                      SizedBox(width: 24),
                      Expanded(
                        child: Column(
                          children: [
                            SizedBox(height: 40),
                            MyCardAndTransactionSection(),
                            SizedBox(height: 24),
                            IncomeSection(),
                          ],
                        ),
                      ),
                      SizedBox(width: 32)
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
