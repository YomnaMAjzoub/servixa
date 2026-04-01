import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:servixass/core/constants/app_colors.dart';
import 'package:servixass/features/product/presentation/widgets/bottom_bar.dart';
import 'package:servixass/features/product/presentation/widgets/description_section.dart';
import 'package:servixass/features/product/presentation/widgets/features_section.dart';
import 'package:servixass/features/product/presentation/widgets/location_section.dart';
import 'package:servixass/features/product/presentation/widgets/price_section.dart';
import 'package:servixass/features/product/presentation/widgets/reviews_section.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({super.key});
  final int activeIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomBar(),
      backgroundColor: AppColors.grey50,
      body: CustomScrollView(
        scrollDirection: Axis.vertical,
        shrinkWrap: true,
        slivers: [
          SliverAppBar(
            expandedHeight: MediaQuery.of(context).size.height * 0.33,
           floating: true,
          // pinned: true,
            backgroundColor: AppColors.white,
            actions: [
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
            flexibleSpace:FlexibleSpaceBar(
           background:  Stack(
             children: [
               Positioned.fill(
                 child: Container(
                    width: double.infinity,
                    height: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(21),
                        bottomRight: Radius.circular(21),
                      ),
                      boxShadow: [
                        BoxShadow(
                          blurRadius: 7,
                          offset: Offset(1, 1),
                          color: AppColors.shadowb,
                        ),
                      ],
                      image: DecorationImage(
                        image: AssetImage('assets/images/item.png'),
                        fit: BoxFit.cover,
                        filterQuality: FilterQuality.high,
                      ),
                    ),
                  ),
               ),
                PositionedDirectional(
                  bottom: 16,
                  start: 0,
                  end: 0,
                  child:Center(
                    child: AnimatedSmoothIndicator(
                                  activeIndex: activeIndex,
                                  count: 4,
                                  effect: ColorTransitionEffect(
                                    activeDotColor: AppColors.main500,
                                    dotColor: Colors.white70,
                                    dotHeight: 10,
                                    dotWidth: 10,
                                  ),
                                  ),
                  ),
               ),
             ],
           ),
          ),
          ),
          SliverToBoxAdapter(
         child: PriceSection(),
          ),

          SliverToBoxAdapter(
            child: DescriptionSection(),
          ),
          SliverToBoxAdapter(
            child: FeaturesSection(),
          ),
          SliverToBoxAdapter(
            child: LocationSection(),
          ),
          SliverToBoxAdapter(
            child: ReviewsSection(),
          )
        ],
      ),
    );
  }
}
