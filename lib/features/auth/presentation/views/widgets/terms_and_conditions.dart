import 'package:fakahany/constants.dart';
import 'package:fakahany/utils/app_colors.dart';
import 'package:fakahany/utils/app_text_styles.dart';
import 'package:flutter/material.dart';

class TermsAndConditions extends StatelessWidget {
  const TermsAndConditions({super.key});

  @override
  Widget build(BuildContext context) {
    return Transform.translate(
      offset: const Offset(14, 0),
      child: Row(
        children: [
          Checkbox(value: false, onChanged: (value){

          }),
          SizedBox(
            width: MediaQuery.sizeOf(context).width - (kHorizontalPadding * 2) - 48,
            child: Text.rich(
              TextSpan(
                children: [
                  TextSpan(
                    text: 'من خلال إنشاء حساب ، فإنك توافق على ',
                    style: AppTextStyles.semiBold13.copyWith(
                      color: Color(0xFF949D9E),
                    ),
                  ),
                  TextSpan(
                    text: 'الشروط والأحكام',
                    style: AppTextStyles.semiBold13.copyWith(
                      color: AppColors.lightPrimaryColor
                    ),
                  ),
                  TextSpan(
                    text: ' ',
                    style: AppTextStyles.semiBold13,
                  ),
                  TextSpan(
                    text: 'الخاصة',
                    style:  AppTextStyles.semiBold13.copyWith(
                        color: AppColors.lightPrimaryColor
                    ),
                  ),
                  TextSpan(
                    text: ' ',
                    style: AppTextStyles.semiBold13,
                  ),
                  TextSpan(
                    text: 'بنا',
                    style:  AppTextStyles.semiBold13.copyWith(
                        color: AppColors.lightPrimaryColor
                    ),
                  ),
                ],
              ),
              textAlign: TextAlign.right,
            ),
          )
        ],
      ),
    );
  }
}
