import 'package:dashboard/models/all_expenses_item_model.dart';
import 'package:dashboard/utils/app_images.dart';
import 'package:dashboard/widgets/all_expenses/all_expenses_item.dart';
import 'package:flutter/material.dart';

class AllExpensesitemListView extends StatefulWidget {
  const AllExpensesitemListView({super.key});

  @override
  State<AllExpensesitemListView> createState() => _AllExpensesitemListViewState();
}

class _AllExpensesitemListViewState extends State<AllExpensesitemListView> {

  final items = [
    AllExpensesItemModel(image: Assets.money, title: "aaaa", date: "aaaa", price: "2000"),
    AllExpensesItemModel(image: Assets.imagesFrame3, title: "aaaa", date: "aaaa", price: "2000"),
    AllExpensesItemModel(image: Assets.imagesFrame3, title: "aaaa", date: "aaaa", price: "2000"),
  ]; 

  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Row(
      //children: items.map((e) => Expanded(child: AllExpensesItem(allExpensesItemModel: e))).toList(),
      children: items.asMap().entries.map((e) {
        int index = e.key;
        var item = e.value;
        if (index == 1) {
          return Expanded(
            child: GestureDetector(
              onTap: () {
                updateIndex(index);
              },
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12.0),
                child: AllExpensesItem(
                  isActive: selectedIndex == index,
                  allExpensesItemModel: item,),
              ),
            ),
          );
        } else {
          return Expanded
            (
            child: GestureDetector(
              onTap: () {
                updateIndex(index);
              },
              child: AllExpensesItem(
              isActive: selectedIndex == index,
              allExpensesItemModel: item,),
            ),
          );
        }
      }).toList(),
    );
    // return ListView.builder(
    //   scrollDirection: Axis.horizontal,
    //   itemCount: items.length,
    //   itemBuilder: (context, index) {
    //     return AllExpensesItem(allExpensesItemModel: items[index]);
    // });
  }

  void updateIndex(int index) {
    setState(() {
      selectedIndex = index;
    });
  }
}