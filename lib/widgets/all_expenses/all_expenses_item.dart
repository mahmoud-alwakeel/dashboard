import 'package:dashboard/models/all_expenses_item_model.dart';
import 'package:dashboard/widgets/all_expenses/active_&_inactive_all_expenses_item.dart';
import 'package:flutter/material.dart';

class AllExpensesItem extends StatelessWidget {
  const AllExpensesItem({super.key, required this.allExpensesItemModel, required this.isActive});

  final AllExpensesItemModel allExpensesItemModel;
  final bool isActive;
  @override
  Widget build(BuildContext context) {
    return isActive ? ActiveAllExpensesItem(allExpensesItemModel: allExpensesItemModel) : InActiveAllExpensesItem(allExpensesItemModel: allExpensesItemModel);
  }
}
 