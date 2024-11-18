import 'package:dots_indicator/dots_indicator.dart';
import 'package:fakahany/constants.dart';
import 'package:fakahany/core/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../utils/app_colors.dart';
import 'on_boarding_page_view.dart';

class OnBoardingViewBody extends StatelessWidget {
  const OnBoardingViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: OnBoardingPageView(),
        ),
        DotsIndicator(
          dotsCount: 2,
          decorator: DotsDecorator(
            activeColor: AppColors.primaryColor,
            color: AppColors.primaryColor.withOpacity(0.5),
          ),
        ),
        SizedBox(
          height: 29.h,
        ),
        Padding(
          padding: EdgeInsets.symmetric(
            horizontal: kHorizontalPadding,
          ),
          child: CustomButton(
            onPressed: () {},
            text: 'ابدأ الآن',
          ),
        ),
        SizedBox(
          height: 30.h,
        ),
      ],
    );
  }
}
