import 'package:fakahany/features/on_boarding/presentation/views/on_boarding_view.dart';
import 'package:fakahany/features/splash/presentation/views/splash_view.dart';
import 'package:flutter/material.dart';

import '../../features/auth/presentation/views/login_view.dart';

Route<dynamic> onGenerateRoute(RouteSettings settings) {
  switch (settings.name) {
    case SplashView.routeName:
      return MaterialPageRoute(
        builder: (context) => const SplashView(),
      );
    case OnBoardingView.routeName:
      return MaterialPageRoute(
        builder: (context) => const OnBoardingView(),
      );
    case LoginView.routeName:
      return MaterialPageRoute(
        builder: (context) => const LoginView(),
      );
    default:
      return MaterialPageRoute(
        builder: (context) => const Scaffold(),
      );
  }
}
