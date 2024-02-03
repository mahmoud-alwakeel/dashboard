import 'package:dashboard/models/drawer_item_model.dart';
import 'package:dashboard/widgets/active_&_inactive_item.dart';
import 'package:flutter/material.dart';

class DrawerItem extends StatelessWidget {
  const DrawerItem({super.key, required this.drawerItemModel, required this.isActive});

  final DrawerItemModel drawerItemModel;
  final bool isActive;
  @override
  Widget build(BuildContext context) {
    return isActive ? ActiveDrawerItem(drawerItemModel: drawerItemModel,) : InActiveDrawerItem(drawerItemModel: drawerItemModel);
  }
}
