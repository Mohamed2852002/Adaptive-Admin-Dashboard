import 'package:adaptive_admin_dashboard/models/user_info_model.dart';
import 'package:adaptive_admin_dashboard/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class UserInfoWidget extends StatelessWidget {
  const UserInfoWidget({super.key, required this.model});
  final UserInfoModel model;
  @override
  Widget build(BuildContext context) {
    return Card(
      color: const Color(0xffFAFAFA),
      elevation: 0,
      child: Center(
        child: ListTile(
          contentPadding: const EdgeInsets.only(left: 16),
          leading: SvgPicture.asset(model.icon),
          title: Text(model.name, style: Styles.styleSemiBold16(context)),
          subtitle: Text(model.email, style: Styles.styleRegular12(context)),
        ),
      ),
    );
  }
}
