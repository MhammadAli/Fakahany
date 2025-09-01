import 'package:fakahany/utils/app_text_styles.dart';
import 'package:flutter/material.dart';

import '../../../../best_selling_fruits/presentation/views/best_selling_view.dart';

class BestSellingHeader extends StatelessWidget {
  const BestSellingHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, BestSellingView.routeName);
      },
      child: Row(
        children: [
          Text(
            'الأكثر مبيعًا',
            style: AppTextStyles.bold16,
            textAlign: TextAlign.right,
          ),
          const Spacer(),
          Text(
            'المزيد',
            textAlign: TextAlign.center,
            style: AppTextStyles.regular13.copyWith(
              color: const Color(0xFF949D9E),
            ),
          )
        ],
      ),
    );
  }
}
