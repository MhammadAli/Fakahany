import 'package:fakahany/constants.dart';
import 'package:fakahany/utils/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SocialLoginButton extends StatelessWidget {
  const SocialLoginButton({
    super.key,
    required this.title,
    required this.image,
    required this.onPressed,
  });

  final String title, image;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 56.h,
      child: TextButton(
        child: ListTile(
          visualDensity:const VisualDensity(
            vertical: VisualDensity.minimumDensity
          ),
          leading: SvgPicture.asset(image),
          title: Text(title,
              textAlign: TextAlign.center, style: AppTextStyles.semiBold16),
        ),
        style: TextButton.styleFrom(
          shape: RoundedRectangleBorder(
            side: BorderSide(
              color: const Color(0xFFDCDEDE),
              width: 1.w,
            ),
            borderRadius: BorderRadius.circular(16.r),
          ),
        ),
        onPressed: onPressed,
      ),
    );
  }
}
