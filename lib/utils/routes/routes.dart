import 'package:flutter/material.dart';
import 'package:mvvm_project/utils/routes/routes_name.dart';
import 'package:mvvm_project/view/home_view.dart';
import 'package:mvvm_project/view/login_view.dart';
import 'package:mvvm_project/view/signup_view.dart';
import 'package:mvvm_project/view/splash_view.dart';

class Routes {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case RoutesName.splash:
        return MaterialPageRoute(
          builder: (BuildContext context) => SplashView(),
        );
      case RoutesName.home:
        return MaterialPageRoute(
          builder: (BuildContext context) => HomeView(),
        );
        case RoutesName.login:
        return MaterialPageRoute(
          builder: (BuildContext context) => LoginView(),
        );
        case RoutesName.sign:
        return MaterialPageRoute(
          builder: (BuildContext context) => SignupView(),
        );
      default:
        return MaterialPageRoute(
          builder: (_) {
            return Scaffold(
              body: Center(
                child: Text("No Route Defined"),
              ),
            );
          },
        );
    }
  }
}
