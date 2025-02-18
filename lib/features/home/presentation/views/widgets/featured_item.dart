import 'package:fakahany/features/home/presentation/views/widgets/featured_item_button.dart';
import 'package:fakahany/utils/app_text_styles.dart';
import 'package:flutter/material.dart';

import '../../../../../generated/assets.dart';

class FeaturedItem extends StatelessWidget {
  const FeaturedItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      child: Stack(
        children: [
          Image.asset(Assets.imagesWatermelonTest),
          Container(
            child: Column(
              children: [
                Text('عروض العيد',
                    style: AppTextStyles.regular13.copyWith(
                      color: Colors.white,
                    )),
                Text(
                  'خصم 25%',
                  style: AppTextStyles.bold19.copyWith(
                    color: Colors.white,
                  ),
                ),
                FeaturedItemButton(onPressed: () {}),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
