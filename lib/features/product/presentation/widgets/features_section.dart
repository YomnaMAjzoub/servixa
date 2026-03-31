import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:servixass/core/constants/app_colors.dart';

class FeaturesSection extends StatelessWidget {
  const FeaturesSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsetsDirectional.all(16),
      margin: EdgeInsetsDirectional.only(top: 8),
      color: AppColors.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('About this item',style: GoogleFonts.roboto(
            fontStyle: FontStyle.normal,
            fontSize: 22,
            color: AppColors.main,
            fontWeight: FontWeight.w500,
          ),
          ),
          SizedBox(height: 16),
          
        
         
        ],
      ),
    );
  }
}
