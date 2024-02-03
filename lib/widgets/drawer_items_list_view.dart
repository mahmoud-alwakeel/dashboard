import 'package:dashboard/models/drawer_item_model.dart';
import 'package:dashboard/utils/app_images.dart';
import 'package:dashboard/widgets/drawer_item.dart';
import 'package:flutter/material.dart';

class DrawerItemListView extends StatefulWidget {
  const DrawerItemListView({
    super.key,
  });

  @override
  State<DrawerItemListView> createState() => _DrawerItemListViewState();
}

class _DrawerItemListViewState extends State<DrawerItemListView> {

  int activeIndex = 0;

  final List<DrawerItemModel> items = const [
    DrawerItemModel(title: "Dashboard", image: Assets.imagesCategory2),
    DrawerItemModel(title: "My Transactions", image: Assets.imagesCategory2),
    DrawerItemModel(title: "Statistics", image: Assets.imagesCategory2),
    DrawerItemModel(title: "Wallet Account", image: Assets.imagesCategory2),
    DrawerItemModel(title: "My Investments", image: Assets.imagesChart2), 
  ];

  @override
  Widget build(BuildContext context) {
    return SliverList.builder(
      itemCount: items.length,
      itemBuilder: (context, index) {
      return GestureDetector(
        onTap: () {
          if (activeIndex != index) {
            setState(() {
              activeIndex = index;
            });
          }
        },
        child: Padding(
          padding: const EdgeInsets.only(top: 20.0),
          child: DrawerItem(
            drawerItemModel: items[index], 
            isActive: activeIndex == index,
            ),
        ),
      );
    });
  }
}