import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:servixass/common/widgets/elevated_button.dart';
import 'package:servixass/common/widgets/gradient.dart';
import 'package:servixass/core/constants/app_colors.dart';
import 'package:servixass/core/routing/app_router.dart';
import 'package:servixass/features/startup/presentation/widgets/custom_build_onboarding.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';


class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final PageController _pageController = PageController();
  int _currentPage = 0;

  final List<Map<String, String>> onboardingPagesData = [
    {
      'image': 'assets/images/onboarding1.svg',
      'title': 'Discover Services or Promote Your Own',
      'description':
          'Looking for services or offering them? Easily browse categories or post your own ads to reach a wide audience',
    },
    {
      'image': 'assets/images/onboarding2.svg',
      'title': 'Smart Solutions for Every Project',
      'description':
          'Whether it\'s plumbing, electrical work, interior design, or general maintenance—our platform connects you with trusted experts.',
    },
  ];

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomGradient(
        child: SafeArea(
          child:  Padding(
            padding: const EdgeInsetsDirectional.symmetric(vertical:16,horizontal:16),
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Align(
                    alignment: Alignment.topRight,
                    child: TextButton(
                      onPressed: () {
                        Get.offNamed(AppRouter.register);
                      },
                      child: Text(
                        'Skip',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: AppColors.main500,
                        ),
                      ),
                    ),
                  ),
                   SizedBox(height:32),
                  Expanded(
                    child: PageView.builder(
                      controller: _pageController,
                      itemCount: onboardingPagesData.length,
                      onPageChanged: (int page) {
                        setState(() {
                          _currentPage = page;
                        });
                      },
                      itemBuilder: (context, index) {
                        final pageData = onboardingPagesData[index];
                        return BuildOnboardingPage(
                          image: pageData['image']!,
                          title: pageData['title']!,
                          description: pageData['description']!,
                        );
                      },
                    ),
                  ),
            
                  Center(
                    child: SmoothPageIndicator(
                      controller: _pageController,
                      count: onboardingPagesData.length,
                      effect: ExpandingDotsEffect(
                        activeDotColor: AppColors.main500,
                        dotColor: Colors.grey.shade300,
                        dotHeight: 8,
                        dotWidth: 8,
                        expansionFactor: 3,
                        spacing: 5.0,
                      ),
                    ),
                  ),
                  SizedBox(height:32),
            
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children:[
                      SizedBox(
                        height: 48,
                        width: MediaQuery.of(context).size.width*0.43,
                        child: OutlinedButton(
                            onPressed: _currentPage > 0
                                ? () {
                                    _pageController.previousPage(
                                      duration: const Duration(milliseconds: 300),
                                      curve: Curves.easeIn,
                                    );
                                  }
                                : null,
                            style: OutlinedButton.styleFrom(
                            
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15),
                              ),
                              side: BorderSide(
                                color: AppColors.main500,
                                width: 1.5,
                              ),
                            ),
                            child: Text(
                              'Previous',
                              style: TextStyle(
                                color: AppColors.main500,
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                      ),
                      
                      const SizedBox(width: 21),
                      CustomElevated(
                        text: _currentPage == onboardingPagesData.length - 1
                                  ? 'Finish'
                                  : 'Next',
                                   height:48, 
                                   width:MediaQuery.of(context).size.width*0.43,
                                    onPressed:(){
                              if (_currentPage < onboardingPagesData.length - 1) {
                                _pageController.nextPage(
                                  duration: const Duration(milliseconds: 300),
                                  curve: Curves.easeIn,
                                );
                              } else {
                                Get.offNamed(AppRouter.register);
                                log('Finished onboarding! Navigate to main app.');
                              }
                            }, color:AppColors.main500, background:AppColors.main500, textColor:AppColors.yellow),
                    ],
                  ),
                  SizedBox(height:50),
                ],
              ),
          ),
          
        ),
      ),
    );
  }
}
