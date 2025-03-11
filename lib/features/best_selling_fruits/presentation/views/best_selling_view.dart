import 'package:fakahany/features/best_selling_fruits/presentation/views/widgets/best_selling_view_body.dart';
import 'package:flutter/material.dart';

class BestSellingView extends StatelessWidget {
  const BestSellingView({super.key});

  static const routeName = 'best_selling_view';

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: BestSellingViewBody(),
    );
  }
}
