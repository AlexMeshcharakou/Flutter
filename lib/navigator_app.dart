import 'package:flutter/material.dart';
import 'package:module_three/custom_transition_route.dart';
import 'package:module_three/app_routes.dart';
import 'package:module_three/screens.dart';

class NavigatorApp extends StatelessWidget {
  const NavigatorApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.ltr,
      child: Navigator(
        onGenerateRoute: generateRoute,
      ),
    );
  }

  Route<dynamic> generateRoute(RouteSettings settings) {
    Route route;
    if (settings.name == AppRoutes.home) {
      route = PageRouteBuilder(
        settings: settings,
        pageBuilder: (_, __, ___) =>
            FirstScreen(inputData: settings.arguments as String?),
      );
    } else {
      route = CustomTransitionRoute(
        settings: settings,
        builder: (context) => const SecondScreen(),
      );
    }
    return route;
  }
}
