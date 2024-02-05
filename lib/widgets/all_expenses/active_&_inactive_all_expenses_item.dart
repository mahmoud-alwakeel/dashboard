import 'package:dashboard/models/all_expenses_item_model.dart';
import 'package:dashboard/utils/app_styles.dart';
import 'package:dashboard/widgets/all_expenses/all_expenses_item_header.dart';
import 'package:flutter/material.dart';

class InActiveAllExpensesItem extends StatelessWidget {
  const InActiveAllExpensesItem({
    super.key,
    required this.allExpensesItemModel,
  });

  final AllExpensesItemModel allExpensesItemModel;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 16, horizontal: 20),
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          side: const BorderSide(width: 1, color: Color(0xFFF1F1F1)),
          borderRadius: BorderRadius.circular(12),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AllExpensesItemHeader(image: allExpensesItemModel.image,),
          const SizedBox(height: 34,),
          Text(allExpensesItemModel.title, style: AppStyles.styleMedium16,),
            const SizedBox(height: 8,),
          Text(allExpensesItemModel.date , style: AppStyles.styleRegular14,),
          const SizedBox(height: 16,), 
          Text(allExpensesItemModel.price, style: AppStyles.styleSemiBold24,)
    
        ],
      ),
    );
  }
}

class ActiveAllExpensesItem extends StatelessWidget {
  const ActiveAllExpensesItem({
    super.key,
    required this.allExpensesItemModel,
  });

  final AllExpensesItemModel allExpensesItemModel;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 16, horizontal: 20),
      decoration: ShapeDecoration(
        color: Color(0xFF4DB7F2),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AllExpensesItemHeader(
            image: allExpensesItemModel.image,
            imageBackgroundColor: Colors.white.withOpacity(0.10000000149011612),
            imageColor: Colors.white,),
          const SizedBox(height: 34,),
          Text(allExpensesItemModel.title, style: AppStyles.styleMedium16.copyWith(color: Colors.white),),
            const SizedBox(height: 8,),
          Text(allExpensesItemModel.date , style: AppStyles.styleRegular14.copyWith(color: Colors.white),),
          const SizedBox(height: 16,), 
          Text(allExpensesItemModel.price, style: AppStyles.styleSemiBold24.copyWith(color: Colors.white),)
    
        ],
      ),
    );
  }
}

