// ignore_for_file: constant_identifier_names

import 'package:flutter/material.dart';

import '../functions/animation/animation.dart';


class AppRouter {
  // Route names
  static const String splashScreen = '/splash_screen';
static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case splashScreen:
      //  return fadeRoute(const SplashScreen());

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
