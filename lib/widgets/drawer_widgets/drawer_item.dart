import 'package:adaptive_admin_dashboard/models/drawer_item_model.dart';
import 'package:adaptive_admin_dashboard/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DrawerItem extends StatelessWidget {
  const DrawerItem({super.key, required this.model, required this.isActive});
  final DrawerItemModel model;
  final bool isActive;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: SvgPicture.asset(model.itemIcon),
      title: FittedBox(
        alignment: Alignment.centerLeft,
        fit: BoxFit.scaleDown,
        child: Text(
          model.itemText,
          style: isActive
              ? Styles.styleBold16(context)
              : Styles.styleRegular16(context),
        ),
      ),
      trailing: isActive
          ? Container(
              height: 50,
              color: Theme.of(context).colorScheme.primary,
              width: 4,
            )
          : null,
    );
  }
}
