import 'package:adaptive_admin_dashboard/home_view.dart';
import 'package:adaptive_admin_dashboard/themes/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:window_manager/window_manager.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await windowManager.ensureInitialized();
  windowManager.waitUntilReadyToShow(const WindowOptions(), () async {
    await windowManager.setMinimumSize(const Size(360, 100));
  });
  runApp(const AdaptiveAdminDashboard());
}

class AdaptiveAdminDashboard extends StatelessWidget {
  const AdaptiveAdminDashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const HomeView(),
      theme: AppTheme.appTheme,
    );
  }
}
