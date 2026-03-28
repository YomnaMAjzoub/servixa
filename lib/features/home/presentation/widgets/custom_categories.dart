import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:servixass/core/constants/app_colors.dart';


class CustomCategories extends StatelessWidget {
  const CustomCategories({super.key, required this.name, required this.image});
  final String name;
  final String image;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
       // moving
      },
      child: Container(
        width: 120,
        height: 84,
        padding: EdgeInsets.only(top: 10, bottom: 10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(26)),
          color: AppColors.main50,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,

          children: [
            SvgPicture.asset(image, width: 34, height: 34, fit: BoxFit.none),
            Text(
              name,
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w500,
                color: AppColors.grey600,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
