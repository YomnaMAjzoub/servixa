import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:servixass/common/widgets/custom_profile_info.dart';
import 'package:servixass/core/constants/app_colors.dart';

class LocationSection extends StatelessWidget {
  const LocationSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsetsDirectional.all(16),
      margin: EdgeInsetsDirectional.only(top: 8),
      color: Colors.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Location',style: GoogleFonts.roboto(
            fontSize: 22,
            color: AppColors.main,
            fontWeight: FontWeight.w500,
          ),),
          SizedBox(height:16),
          Row(
            spacing: 6,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SvgPicture.asset('assets/icons/location_icon.svg',width:12.5,height:15,fit: BoxFit.none),
              Text('742 Evergreen Terrace, Springfield',style: GoogleFonts.roboto(
                fontSize: 14,
                color: AppColors.grey300,
                fontWeight: FontWeight.w400,
              ),
              ),
            ],
          ),
          SizedBox(height: 16),
          Card(
            color: AppColors.grey50,
            elevation: 10,
            child: Container(
              width: double.infinity,
              height:MediaQuery.of(context).size.height*0.46,
              decoration: BoxDecoration(
                color: AppColors.white,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(12),
                  bottomRight: Radius.circular(12),
                  topLeft: Radius.circular(18),
                  topRight: Radius.circular(18),
                ),
               
              ),
              child:Column(
                spacing: 20,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(18),
                      topRight: Radius.circular(18),
                    ),
                    child: Image.asset('assets/images/item.png',width: double.infinity,height:MediaQuery.of(context).size.height*0.3,fit: BoxFit.cover),
                  ),
                  CustomListTile(location:'', name: 'Mhamad alhomse'),
                ],
               
              ) ,
            ),
          ),
        ],
      ),
    );
  }
}