import 'package:flutter/material.dart';

import 'on_boarding_page_view.dart';

class OnBoardingViewBody extends StatelessWidget {
  const OnBoardingViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: SafeArea(child: OnBoardingPageView()),
        ),
      ],
    );
  }
}
