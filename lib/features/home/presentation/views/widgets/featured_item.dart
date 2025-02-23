import 'package:fakahany/features/home/presentation/views/widgets/featured_item_button.dart';
import 'package:fakahany/utils/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as svg;

import '../../../../../generated/assets.dart';

class FeaturedItem extends StatelessWidget {
  const FeaturedItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final itemWidth = MediaQuery.of(context).size.width.w;
    return SizedBox(
      width: itemWidth,
      child: AspectRatio(
        aspectRatio: 342 / 165,
        child: Stack(
          children: [
            Positioned(
              child: SvgPicture.asset(
                Assets.imagesPageViewItem2Image,
                fit: BoxFit.fill,
              ),
              left: 0,
              bottom: 0,
              top: 0,
              right: itemWidth * .4,
            ),
            Container(
              width: itemWidth * .5,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: svg.Svg(Assets.imagesFeaturedItemBackground),
                  fit: BoxFit.fill,
                ),
              ),
              child: Padding(
                padding: EdgeInsets.only(right: 33.0.w),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 25.h,
                    ),
                    Text('عروض العيد',
                        style: AppTextStyles.regular13.copyWith(
                          color: Colors.white,
                        )),
                    const Spacer(),
                    Text(
                      'خصم 25%',
                      style: AppTextStyles.bold19.copyWith(
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(
                      height: 11.h,
                    ),
                    FeaturedItemButton(onPressed: () {}),
                    SizedBox(
                      height: 29.h,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
