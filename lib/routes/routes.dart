import 'package:e_learning_frontend/routes/route_names.dart';
import 'package:e_learning_frontend/views/post_auth/el_page_view.dart';
import 'package:e_learning_frontend/views/pre_auth/el_sign_in.dart';
import 'package:e_learning_frontend/views/pre_auth/el_sign_up.dart';
import 'package:flutter/material.dart';

class Routes {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case RouteNames.pageView:
        return MaterialPageRoute(builder: (_) => MainPageView());
      case RouteNames.signIn:
        return MaterialPageRoute(builder: (_) => SignInView());
      case RouteNames.signUp:
        return MaterialPageRoute(builder: (_) => SignUpView());
      default:
        return MaterialPageRoute(builder: (_) {
          return const Scaffold(
            body: Center(child: Text("No Route Defined")),
          );
        });
    }
  }
}
