import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class AllExpensesItemHeader extends StatelessWidget {
  const AllExpensesItemHeader(
      {super.key,
      required this.image,
      this.imageColor,
      this.imageBackgroundColor});

  final String image;
  final Color? imageColor, imageBackgroundColor;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 60,
          height: 60,
          decoration: ShapeDecoration(
            color: imageBackgroundColor ?? const Color(0xFFFAFAFA),
            shape: OvalBorder(),
          ), 
          child: Center(
              child: SvgPicture.asset(
            image,
            colorFilter: ColorFilter.mode(
                imageColor ?? Color(0xFF4EB7F2), BlendMode.srcIn),
          )),
        ),
        Spacer(),
        Icon(Icons.arrow_forward_ios,
        color: imageColor == null ? Color(0xFF064061) : Colors.white,),
      ],
    );
  }
}
