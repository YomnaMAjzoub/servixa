import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:servixass/core/constants/app_colors.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({super.key});
  final int activeIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.grey50,
      body: CustomScrollView(
        scrollDirection: Axis.vertical,
        shrinkWrap: true,
        slivers: [
          SliverAppBar(
            expandedHeight: MediaQuery.of(context).size.height * 0.33,
            floating: true,
            backgroundColor: AppColors.white,
            flexibleSpace: Container(
              width: double.infinity,
              height: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(21),
                  bottomRight: Radius.circular(21),
                ),
                image: DecorationImage(
                  image: AssetImage('assets/images/item.png'),
                  fit: BoxFit.cover,
                  filterQuality: FilterQuality.high,
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(height: 28),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Spacer(),
                      IconButton(
                        onPressed: () {},
                        icon: SvgPicture.asset(
                          'assets/icons/about.svg',
                          width: 24,
                          height: 24,
                          fit: BoxFit.none,
                        ),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: SvgPicture.asset(
                          'assets/icons/share.svg',
                          width: 24,
                          height: 24,
                          fit: BoxFit.none,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height:230),
                  AnimatedSmoothIndicator(
                    activeIndex: activeIndex,
                    count:4,
                    effect: ColorTransitionEffect(
                      activeDotColor: AppColors.main500,
                      dotColor: Colors.grey.shade300,
                      dotHeight: 10,
                      dotWidth: 10,
                      spacing: 5,
                    ),
                  ),
                ],
              ),
            ),
          ),
        
        ],
      ),
    );
  }
}
