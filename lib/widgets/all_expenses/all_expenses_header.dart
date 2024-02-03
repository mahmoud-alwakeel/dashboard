import 'package:dashboard/utils/app_styles.dart';
import 'package:flutter/material.dart';

class AllExpensesHeader extends StatelessWidget {
  const AllExpensesHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          "All Expenses",
          style: AppStyles.styleSemiBold20,
        ),
        Container(
          padding: EdgeInsets.all(12),
          decoration: ShapeDecoration(
              shape: RoundedRectangleBorder(
            side: BorderSide(
              width: 1,
              color: Color(0xFFF1F1F1),
            ),
            borderRadius: BorderRadius.circular(12),
          )),
          child: const Row(children: [
            Text(
              "Monthly",
              style: AppStyles.styleMedium16,
            ),
            SizedBox(
              width: 18,
            ),
            Icon(Icons.arrow_downward),
          ]),
        )
      ],
    );
  }
}
