import 'package:fakahany/utils/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../utils/app_colors.dart';

class FeaturedItemButton extends StatelessWidget {
  const FeaturedItemButton({Key? key, required this.onPressed})
      : super(key: key);
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40.h,
      width: double.infinity,
      child: TextButton(
        style: TextButton.styleFrom(
            backgroundColor: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16.r),
            )),
        onPressed: onPressed,
        child: Text(
          'تسوق الان',
          style: AppTextStyles.bold13.copyWith(
            color: AppColors.primaryColor,
          ),
        ),
      ),
    );
  }
}
