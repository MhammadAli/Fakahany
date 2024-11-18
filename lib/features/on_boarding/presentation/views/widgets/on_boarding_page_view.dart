import 'package:fakahany/features/on_boarding/presentation/views/widgets/page_view_item.dart';
import 'package:fakahany/utils/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../generated/assets.dart';
import '../../../../../utils/app_colors.dart';

class OnBoardingPageView extends StatelessWidget {
  const OnBoardingPageView({
    super.key,
    required this.pageController,
  });

  final PageController pageController;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: PageView(
        controller: PageController(),
        children: [
          PageViewItem(
            image: Assets.imagesPageViewItem1Image,
            backgroundImage: Assets.imagesPageViewItem1BackgroundImage,
            subtitle:
                'اكتشف تجربة تسوق فريدة مع FruitHUB. استكشف مجموعتنا الواسعة من الفواكه الطازجة الممتازة واحصل على أفضل العروض والجودة العالية.',
            title: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'مرحبًا بك في',
                  style: AppTextStyles.bold23,
                ),
                Text(
                  '   HUB',
                  style: AppTextStyles.bold23.copyWith(
                    color: AppColors.secondaryColor,
                  ),
                ),
                Text(
                  'Fruit',
                  style: AppTextStyles.bold23.copyWith(
                    color: AppColors.primaryColor,
                  ),
                ),
              ],
            ), isVisible: true,
          ),
           PageViewItem(
            isVisible: false,
            image: Assets.imagesPageViewItem2Image,
            backgroundImage: Assets.imagesPageViewItem2BackgroundImage,
            subtitle:
                'نقدم لك أفضل الفواكه المختارة بعناية. اطلع على التفاصيل والصور والتقييمات لتتأكد من اختيار الفاكهة المثالية',
            title: Text(
              'ابحث و تسوق',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: const Color(0xFF0C0D0D),
                fontSize: 23.sp,
                fontFamily: 'Cairo',
                fontWeight: FontWeight.w700,
                height: 0.h,
              ),
            ),
          ),
        ],
      ),
    );
  }
}