import 'package:dashboard/widgets/all_expenses/all_expenses.dart';
import 'package:dashboard/widgets/drawer/custom_drawer.dart';
import 'package:flutter/material.dart';

class DashboardDesktopLayout extends StatelessWidget {
  const DashboardDesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: 1,
          child: CustomDrawer()),
          SizedBox(width: 32,),
        Expanded(
          flex: 2,
          child: Column(
          children: [
            Expanded(child: AllExpenses()),
          ],
        ))
      ],
    );
  }
}