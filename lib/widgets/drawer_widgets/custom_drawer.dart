import 'package:adaptive_admin_dashboard/models/user_info_model.dart';
import 'package:adaptive_admin_dashboard/utils/app_images.dart';
import 'package:adaptive_admin_dashboard/widgets/drawer_widgets/drawer_item_builder.dart';
import 'package:adaptive_admin_dashboard/widgets/drawer_widgets/settings_drawer_items.dart';
import 'package:adaptive_admin_dashboard/widgets/user_info_widget.dart';
import 'package:flutter/material.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: const CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: UserInfoWidget(
              model: UserInfoModel(
                  name: 'Lekan Okeowo',
                  email: 'demo@gmail.com',
                  icon: AppImages.imagesAvatar3),
            ),
          ),
          SliverToBoxAdapter(child: SizedBox(height: 8)),
          DrawerItemBuilder(),
          SliverFillRemaining(
            hasScrollBody: false,
            child: Column(
              children: [
                Spacer(),
                SettingsDrawerItems(),
              ],
            ),
          )
        ],
      ),
    );
  }
}
