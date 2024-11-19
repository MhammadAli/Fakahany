import 'package:fakahany/core/widgets/custom_button.dart';
import 'package:fakahany/core/widgets/custom_text_field.dart';
import 'package:fakahany/utils/app_colors.dart';
import 'package:fakahany/utils/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../constants.dart';

class LoginViewBody extends StatelessWidget {
  const LoginViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: kHorizontalPadding),
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 24.h,
            ),
            CustomTextFormField(
              textInputType: TextInputType.emailAddress,
              hintText: 'البريد الإلكتروني',
            ),
            SizedBox(
              height: 16.h,
            ),
            CustomTextFormField(
              textInputType: TextInputType.visiblePassword,
              hintText: 'كلمة المرور',
              suffixIcon: Icon(
                Icons.remove_red_eye,
                color: const Color(0xFFC9CECF),
              ),
            ),
            SizedBox(
              height: 16.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  'نسيت كلمة المرور؟',
                  style: AppTextStyles.semiBold13.copyWith(
                    color: AppColors.lightPrimaryColor,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 33.h,
            ),
            CustomButton(
              onPressed: () {},
              text: 'تسجيل دخول',
            ),
            SizedBox(
              height: 33.h,
            ),
            Text.rich(
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
            ),
          ],
        ),
      ),
    );
  }
}
