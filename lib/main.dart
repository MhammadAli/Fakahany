import 'package:fakahany/core/helper_functions/on_generate_routes.dart';
import 'package:flutter/material.dart';

import 'features/splash/presentation/views/splash_view.dart';

void main() {
  runApp(const FruitHub());
}

class FruitHub extends StatelessWidget {
  const FruitHub({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      onGenerateRoute: onGenerateRoute,
      initialRoute: SplashView.routeName,
    );
  }
}

