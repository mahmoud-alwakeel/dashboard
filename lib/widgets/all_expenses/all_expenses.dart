import 'package:dashboard/models/all_expenses_item_model.dart';
import 'package:dashboard/utils/app_images.dart';
import 'package:dashboard/widgets/all_expenses/all_expenses_header.dart';
import 'package:dashboard/widgets/all_expenses/all_expenses_item.dart';
import 'package:dashboard/widgets/all_expenses/all_expenses_item_list_view.dart';
import 'package:flutter/material.dart';

class AllExpenses extends StatelessWidget {
  const AllExpenses({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      decoration: ShapeDecoration(
          color: Colors.white,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(12))),
      child: Column(
        children: [
          AllExpensesHeader(),
          const SizedBox(
            height: 16,
          ),
          AllExpensesitemListView(),
        ],
      ),
    );
  }
}
