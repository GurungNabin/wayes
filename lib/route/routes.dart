import 'package:flutter/material.dart';
import 'package:wayes/auth/login_page.dart';
import 'package:wayes/features/futsal/presentation/pages/add_places.dart';
import 'package:wayes/features/futsal/presentation/pages/home_page.dart';

// abstract class Routes {
//   static const String home = 'home';
// }

// class NavigationRoutes {
//   void push(context, String routeName, {Object? arguments}) {
//     Navigator.pushNamed(context, routeName, arguments: arguments);
//   }

//   void pushReplacement(context, String routeName, {Object? arguments}) {
//     Navigator.pushReplacementNamed(context, routeName, arguments: arguments);
//   }

//   void pushNamedAndRemoveUntil(context, String routeName, {Object? arguments}) {
//     Navigator.pushNamedAndRemoveUntil(
//         context, routeName, (Route<dynamic> route) => false,
//         arguments: arguments);
//   }

//   void pop(context) {
//     Navigator.pop(context);
//   }
// }

Route<dynamic> generateRoute(RouteSettings routeSettings) {
  switch (routeSettings.name) {
    //AuthScreen route
    case LoginPage.routeName:
      return MaterialPageRoute(
          settings: routeSettings, builder: (context) => const LoginPage());

    //home page
    case HomePage.routeName:
      return MaterialPageRoute(
          settings: routeSettings, builder: (context) => const HomePage());

    //add palces
    case AddPlaces.routeName:
      return MaterialPageRoute(
          settings: routeSettings, builder: (context) => const AddPlaces());

    default:
      return MaterialPageRoute(
          builder: (context) => const Scaffold(
                body: Center(
                  child: Text('Error 404'),
                ),
              ));
  }
}
