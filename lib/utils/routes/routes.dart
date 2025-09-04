import 'package:flutter/material.dart';
import 'package:mvvm_project/utils/routes/routes_name.dart';
import 'package:mvvm_project/view/home_screen.dart';
import 'package:mvvm_project/view/login_view.dart';

class Routes {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case RoutesName.home:
        return MaterialPageRoute(
          builder: (BuildContext context) => HomeScreen(),
        );
        case RoutesName.login:
        return MaterialPageRoute(
          builder: (BuildContext context) => LoginView(),
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
