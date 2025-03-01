import 'package:fakahany/features/home/presentation/views/widgets/featured_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class FeaturedList extends StatelessWidget {
  const FeaturedList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: List.generate(4, (index) {
          return Padding(
            padding: EdgeInsets.symmetric(horizontal: 8.0.w),
            child: const FeaturedItem(),
          );
        }),
      ),
    );
  }
}
