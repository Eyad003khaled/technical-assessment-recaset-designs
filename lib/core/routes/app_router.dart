// ignore_for_file: constant_identifier_names

import 'package:flutter/material.dart';

import '../../features/home/presentation/screens/home_screen.dart';
import '../functions/animation/animation.dart';


class AppRouter {
  // Route names
  static const String splashScreen = '/splash_screen';
  static const String homeScreen = '/home_screen';
  static const String FoodMenuDetailsScreen = '/food_menu_details_screen';



static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
        // case splashScreen:
        //   return fadeRoute(const SplashScreen());
      case homeScreen:
        return fadeRoute(const HomeScreen());
      case homeScreen:
      final args =
            (settings.arguments ?? <String, dynamic>{}) as Map<String, dynamic>;
        return fadeRoute(const FoodMenuDetailsScreen(
          foodImage:args["foodImage"] as String,
          foodTitle : args["foodTitle"] as String
        ));

      default:
        return MaterialPageRoute(
          builder:
              (_) => Scaffold(
                body: Center(
                  child: Text('No route defined for ${settings.name}'),
                ),
              ),
        );
    }
  }
}
