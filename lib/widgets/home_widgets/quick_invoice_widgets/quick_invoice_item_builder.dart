import 'package:adaptive_admin_dashboard/models/user_info_model.dart';
import 'package:adaptive_admin_dashboard/utils/app_images.dart';
import 'package:adaptive_admin_dashboard/widgets/user_info_widget.dart';
import 'package:flutter/material.dart';

class QuickInvoiceItemBuilder extends StatelessWidget {
  const QuickInvoiceItemBuilder({super.key});
  static const List<UserInfoModel> items = [
    UserInfoModel(
      name: 'Madrani Andi',
      email: 'Madraniadi20@gmail',
      icon: AppImages.imagesAvatar1,
    ),
    UserInfoModel(
      name: 'Josua Nunito',
      email: 'Josh Nunito@gmail.com',
      icon: AppImages.imagesAvatar2,
    ),
    UserInfoModel(
      name: 'Madrani Andi',
      email: 'Madraniadi20@gmail',
      icon: AppImages.imagesAvatar1,
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 75,
      child: ListView.builder(
        padding: EdgeInsets.zero,
        scrollDirection: Axis.horizontal,
        itemCount: 3,
        itemBuilder: (context, index) => IntrinsicWidth(
          child: UserInfoWidget(model: items[index]),
        ),
      ),
    );
  }
}
