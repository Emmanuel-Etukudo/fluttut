import 'package:flutter/material.dart';
import 'package:tutorial_app/presentation/login/login_view.dart';
import 'package:tutorial_app/presentation/main/main_view.dart';
import 'package:tutorial_app/presentation/onboarding/onboarding_view.dart';
import 'package:tutorial_app/presentation/register/register.dart';
import 'package:tutorial_app/presentation/resources/strings_manager.dart';
import 'package:tutorial_app/presentation/splash/splash_view.dart';
import 'package:tutorial_app/presentation/store_details/store_details_view.dart';

import '../forgot_password/forgot_password_view.dart';

class Routes{
  static const String splashRoute = "/";
  static const String onBoardingRoute = "/onBoarding";
  static const String loginRoute = "/login";
  static const String registerRoute = "/register";
  static const String forgotPasswordRoute = "/forgotPassword";
  static const String mainRoute = "/main";
  static const String storeDetailsRoute = "/storeDetails";
}

class RouteGenerator{
  static Route<dynamic> getRoute(RouteSettings routeSettings){
    switch (routeSettings.name){
      case Routes.splashRoute:
        return MaterialPageRoute(builder: (_) => const SplashView());
      case Routes.onBoardingRoute:
        return MaterialPageRoute(builder: (_) => const OnBoardingView());
      case Routes.registerRoute:
        return MaterialPageRoute(builder: (_) => const RegisterView());
      case Routes.loginRoute:
        return MaterialPageRoute(builder: (_) => const LoginView());
      case Routes.forgotPasswordRoute:
        return MaterialPageRoute(builder: (_) => const ForgotPasswordView());
      case Routes.mainRoute:
        return MaterialPageRoute(builder: (_) => const MainView());
      case Routes.storeDetailsRoute:
        return MaterialPageRoute(builder: (_) => const StoreDetailsView());
      default:
        return undefinedRoute();
    }
  }

  static Route<dynamic> undefinedRoute(){
    return MaterialPageRoute(builder: (_) =>
    Scaffold(
      appBar: AppBar( title: const Text(AppStrings.noRouteFound),),
      body: const Center(child: Text(AppStrings.noRouteFound),),
    ));
  }
}