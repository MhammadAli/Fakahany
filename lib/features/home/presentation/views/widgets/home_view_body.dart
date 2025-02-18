import 'package:fakahany/constants.dart';
import 'package:fakahany/core/widgets/search_text_field.dart';
import 'package:fakahany/features/home/presentation/views/widgets/custom_home_app_bar.dart';
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
              ],
            ),
          )
        ],
      ),
    );
  }
}
