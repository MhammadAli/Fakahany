import 'package:fakahany/constants.dart';
import 'package:fakahany/core/widgets/fruit_item.dart';
import 'package:fakahany/core/widgets/search_text_field.dart';
import 'package:fakahany/features/home/presentation/views/widgets/best_selling_header.dart';
import 'package:fakahany/features/home/presentation/views/widgets/custom_home_app_bar.dart';
import 'package:fakahany/features/home/presentation/views/widgets/featured_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.w),
      child: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Column(
              children: [
                SizedBox(
                  height: kTopPadding,
                ),
                const CustomHomeAppBar(),
                SizedBox(
                  height: kTopPadding,
                ),
                const SearchTextField(),
                SizedBox(
                  height: 12.h,
                ),
                const FeaturedList(),
                SizedBox(
                  height: 12.h,
                ),
                const BestSellingHeader(),
                SizedBox(
                  height: 8.h,
                ),
                const FruitItem(),
              ],
            ),
          )
        ],
      ),
    );
  }
}
