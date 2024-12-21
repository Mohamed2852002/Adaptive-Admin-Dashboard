import 'package:adaptive_admin_dashboard/layouts/mobile_layout.dart';
import 'package:adaptive_admin_dashboard/widgets/drawer_widgets/custom_drawer.dart';
import 'package:flutter/material.dart';

class TabletLayout extends StatelessWidget {
  const TabletLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(child: CustomDrawer()),
        SizedBox(width: 32),
        Expanded(
          flex: 3,
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: 40),
                MobileLayout(),
              ],
            ),
          ),
        ),
        SizedBox(width: 32),
      ],
    );
  }
}
