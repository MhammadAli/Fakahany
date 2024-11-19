import 'package:flutter/material.dart';

import '../../../../../utils/app_colors.dart';
import '../../../../../utils/app_text_styles.dart';

class DontHaveAnAccountWidget extends StatelessWidget {
  const DontHaveAnAccountWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text.rich(
      TextSpan(children: [
        TextSpan(
          text: 'لا تمتلك حساب؟',
          style: AppTextStyles.semiBold16.copyWith(
            color: Color(0xFF616A6B),
          ),
        ),
        TextSpan(
          text: ' ',
          style: AppTextStyles.semiBold16.copyWith(
            color: Color(0xFF616A6B),
          ),
        ),
        TextSpan(
          text: 'قم بإنشاء حساب',
          style: AppTextStyles.semiBold16.copyWith(
            color: AppColors.primaryColor,
          ),
        ),
      ]),
    );
  }
}