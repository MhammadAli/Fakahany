import 'package:fakahany/features/auth/presentation/views/widgets/custom_check_box.dart';
import 'package:fakahany/utils/app_colors.dart';
import 'package:fakahany/utils/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TermsAndConditions extends StatefulWidget {
  const TermsAndConditions({super.key, required this.onChanged});

  final ValueChanged<bool> onChanged;

  @override
  State<TermsAndConditions> createState() => _TermsAndConditionsState();
}

bool isTermsAccepted = false;

class _TermsAndConditionsState extends State<TermsAndConditions> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CustomCheckBox(
          onChecked: (value) {
            isTermsAccepted = value;
            widget.onChanged(value);
            setState(() {});
          },
          isChecked: isTermsAccepted,
        ),
        SizedBox(
          width: 16.w,
        ),
        Expanded(
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
                  style: AppTextStyles.semiBold13
                      .copyWith(color: AppColors.lightPrimaryColor),
                ),
                TextSpan(
                  text: ' ',
                  style: AppTextStyles.semiBold13,
                ),
                TextSpan(
                  text: 'الخاصة',
                  style: AppTextStyles.semiBold13
                      .copyWith(color: AppColors.lightPrimaryColor),
                ),
                TextSpan(
                  text: ' ',
                  style: AppTextStyles.semiBold13,
                ),
                TextSpan(
                  text: 'بنا',
                  style: AppTextStyles.semiBold13
                      .copyWith(color: AppColors.lightPrimaryColor),
                ),
              ],
            ),
            textAlign: TextAlign.right,
          ),
        )
      ],
    );
  }
}
