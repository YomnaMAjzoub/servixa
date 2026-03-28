import 'package:flutter/material.dart';
import 'package:servixass/core/constants/app_colors.dart';


class CustomGradient extends StatelessWidget {
  const CustomGradient({super.key,this.child});
  final Widget? child;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
     // padding: EdgeInsets.symmetric(vertical:20,horizontal: 14),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [AppColors.shadow3, AppColors.white],
          stops: const [0.0, 0.3,],
        ),
      ),
      child: child,
    );
  }
}
