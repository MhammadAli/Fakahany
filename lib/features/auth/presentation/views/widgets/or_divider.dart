import 'package:fakahany/utils/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OrDivider extends StatelessWidget {
  const OrDivider({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Divider(
            color: const Color(0xFFDCDEDE),
          ),
        ),
        SizedBox(
          width: 18.w,
        ),
        Text(
          'أو',
          textAlign: TextAlign.center,
          style: AppTextStyles.semiBold16,
        ),
        SizedBox(
          width: 18.w,
        ),
        Expanded(
          child: Divider(
            color: const Color(0xFFDCDEDE),
          ),
        ),
      ],
    );
  }
}
