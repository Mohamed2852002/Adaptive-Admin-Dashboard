import 'package:adaptive_admin_dashboard/models/drawer_item_model.dart';
import 'package:adaptive_admin_dashboard/utils/app_images.dart';
import 'package:adaptive_admin_dashboard/widgets/drawer_widgets/drawer_item.dart';
import 'package:flutter/material.dart';

class DrawerItemBuilder extends StatefulWidget {
  const DrawerItemBuilder({super.key});

  @override
  State<DrawerItemBuilder> createState() => _DrawerItemBuilderState();
}

class _DrawerItemBuilderState extends State<DrawerItemBuilder> {
  final List<DrawerItemModel> items = [
    const DrawerItemModel(itemIcon: AppImages.imagesDashboard, itemText: 'Dashboard'),
    const DrawerItemModel(
        itemIcon: AppImages.imagesTransaction, itemText: 'My Transaction'),
    const DrawerItemModel(
        itemIcon: AppImages.imagesStatistics, itemText: 'Statistics'),
    const DrawerItemModel(
        itemIcon: AppImages.imagesWallet, itemText: 'Wallet Account'),
    const DrawerItemModel(
        itemIcon: AppImages.imagesInvestments, itemText: 'My Investments'),
  ];

  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SliverPadding(
      padding: const EdgeInsets.symmetric(vertical: 20),
      sliver: SliverList.separated(
        itemCount: items.length,
        separatorBuilder: (context, index) => const SizedBox(height: 20),
        itemBuilder: (context, index) => GestureDetector(
          onTap: () {
            if (selectedIndex != index) {
              setState(() {
                selectedIndex = index;
              });
            }
          },
          child: DrawerItem(
            model: items[index],
            isActive: selectedIndex == index,
          ),
        ),
      ),
    );
  }
}
