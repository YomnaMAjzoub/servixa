import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:servixass/common/widgets/gradient.dart';
import 'package:servixass/common/widgets/search_field.dart';
import 'package:servixass/core/constants/app_colors.dart';

class CategoriesScreen extends StatelessWidget {
  const CategoriesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomGradient(
        child: Padding(
          padding: EdgeInsetsGeometry.symmetric(vertical: 32, horizontal: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            spacing: MediaQuery.of(context).size.height * 0.024,
            children: [
              Align(
                alignment: AlignmentGeometry.topLeft,
                child: IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.arrow_back, color: AppColors.grey600),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    'category1'.tr(),
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.w500,
                      color: AppColors.grey700,
                    ),
                  ),
                  Text(
                    'category2'.tr(),
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.w500,
                      color: AppColors.main500,
                    ),
                  ),
                ],
              ),
              SearchField(
                hint: 'search'.tr(),
                prefix: SvgPicture.asset(
                  'assets/icons/search_icon.svg',
                  width: 16.5,
                  height: 16.5,
                  fit: BoxFit.none,
                ),
                suffix: SvgPicture.asset(
                  'assets/icons/filter_icon.svg',
                  width: 20,
                  height: 20,
                  fit: BoxFit.none,
                ),
                width: MediaQuery.of(context).size.width * 0.91,
                height: 48,
              ),
             
            ],
          ),
        ),
      ),
    );
  }
}
