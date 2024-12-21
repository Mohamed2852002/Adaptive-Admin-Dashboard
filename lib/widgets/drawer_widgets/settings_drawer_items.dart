import 'package:adaptive_admin_dashboard/models/drawer_item_model.dart';
import 'package:adaptive_admin_dashboard/utils/app_images.dart';
import 'package:adaptive_admin_dashboard/widgets/drawer_widgets/drawer_item.dart';
import 'package:flutter/material.dart';

class SettingsDrawerItems extends StatelessWidget {
  const SettingsDrawerItems({super.key});
  static const List<DrawerItemModel> items = [
    DrawerItemModel(
        itemIcon: AppImages.imagesSettings, itemText: 'Setting system'),
    DrawerItemModel(
        itemIcon: AppImages.imagesLogout, itemText: 'Logout account'),
  ];
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 28, top: 32),
      child: Column(
        children: [
          ...List.generate(
            items.length,
            (index) => Padding(
              padding: const EdgeInsets.only(bottom: 20),
              child: DrawerItem(
                model: items[index],
                isActive: false,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
