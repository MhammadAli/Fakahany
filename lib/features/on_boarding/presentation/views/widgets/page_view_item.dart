import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class PageViewItem extends StatelessWidget {
  const PageViewItem({
    super.key,
    required this.image,
    required this.backgroundImage,
    required this.subtitle,
    required this.title,
    required this.isVisible,
  });

  final String image, backgroundImage, subtitle;
  final bool isVisible;
  final Widget title;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: double.infinity,
          height: MediaQuery.of(context).size.height * 0.5,
          child: Stack(
            children: [
              Positioned.fill(
                child: SvgPicture.asset(
                  backgroundImage,
                  fit: BoxFit.fill,
                ),
              ),
              Positioned(
                bottom: 0,
                right: 0,
                left: 0,
                child: SvgPicture.asset(
                  image,
                ),
              ),
              Visibility(
                visible: isVisible,
                child: Padding(
                  padding: EdgeInsets.all(16.0.w),
                  child: Text('تخط'),
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 64.h,
        ),
        title,
        SizedBox(
          height: 24.h,
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.0.h),
          child: Text(
            subtitle,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 13.sp,
              fontFamily: 'Cairo',
              fontWeight: FontWeight.w600,
              height: 0.h,
            ),
          ),
        )
      ],
    );
  }
}
