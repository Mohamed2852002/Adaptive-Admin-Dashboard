import 'package:adaptive_admin_dashboard/adaptive_layout.dart';
import 'package:adaptive_admin_dashboard/layouts/desktop_layout.dart';
import 'package:adaptive_admin_dashboard/layouts/mobile_layout.dart';
import 'package:adaptive_admin_dashboard/layouts/tablet_layout.dart';
import 'package:adaptive_admin_dashboard/utils/size_config.dart';
import 'package:adaptive_admin_dashboard/widgets/drawer_widgets/custom_drawer.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const Drawer(
        child: CustomDrawer(),
      ),
      appBar: MediaQuery.sizeOf(context).width <= SizeConfig.tabletBreakpoint
          ? AppBar()
          : null,
      body: AdaptiveLayout(
        mobileLayout: (context) => const MobileLayout(),
        tabletLayout: (context) => const TabletLayout(),
        desktopLayout: (context) => const DesktopLayout(),
      ),
    );
  }
}
