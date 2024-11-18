import 'package:dots_indicator/dots_indicator.dart';
import 'package:fakahany/constants.dart';
import 'package:fakahany/core/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../utils/app_colors.dart';
import 'on_boarding_page_view.dart';

class OnBoardingViewBody extends StatefulWidget {
  const OnBoardingViewBody({super.key});

  @override
  State<OnBoardingViewBody> createState() => _OnBoardingViewBodyState();
}

class _OnBoardingViewBodyState extends State<OnBoardingViewBody> {
  late PageController pageController;
  var currentPage = 0;

  @override
  void initState() {
    pageController = PageController();

    pageController.addListener(() {
      currentPage = pageController.page!.round();
     setState(() {

     });
    });
    super.initState();
  }

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: OnBoardingPageView(
            pageController: pageController,
          ),
        ),
        DotsIndicator(
          dotsCount: 2,
          decorator: DotsDecorator(
            activeColor: AppColors.primaryColor,
            color: (currentPage == 1) ? AppColors.primaryColor : AppColors.primaryColor.withOpacity(0.5),
          ),
        ),
        SizedBox(
          height: 29.h,
        ),
        Visibility(
          visible: (currentPage == 1) ? true : false,
          maintainAnimation: true,
          maintainSize: true,
          maintainState: true,
          child: Padding(
            padding: EdgeInsets.symmetric(
              horizontal: kHorizontalPadding,
            ),
            child: CustomButton(
              onPressed: () {},
              text: 'ابدأ الآن',
            ),
          ),
        ),
        SizedBox(
          height: 30.h,
        ),
      ],
    );
  }
}
