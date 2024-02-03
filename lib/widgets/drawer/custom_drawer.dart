import 'package:dashboard/models/drawer_item_model.dart';
import 'package:dashboard/utils/app_images.dart';
import 'package:dashboard/widgets/drawer/active_&_inactive_item.dart';
import 'package:dashboard/widgets/drawer/drawer_items_list_view.dart';
import 'package:dashboard/widgets/drawer/user_info_list_tile.dart';
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
            child: UserInfoListTile(
              image: Assets.imagesAvatar1,
              title: "Alwakeel",
              subTitle: "weka@gmail.com",
            ),
          ),
          SliverToBoxAdapter(
            child: SizedBox(height: 8,),
          ),
          DrawerItemListView(),
          SliverFillRemaining(
            hasScrollBody: false,
            child: Column(
              children: [
              Expanded(child: SizedBox(
                height: 20,
              )),
              InActiveDrawerItem(
              drawerItemModel: DrawerItemModel(
                  title: "Settings", image: Assets.imagesChart2),
            ),
            InActiveDrawerItem(
              drawerItemModel:
                  DrawerItemModel(title: "Logout", image: Assets.imagesChart2),
            ),
            SizedBox(
            height: 48,
          )
            ],
            ) 
          ),
          
        ],
      ),
    );
  }
}
