import 'package:flutter/material.dart';
import 'package:furniture/presentation/screens/auth/login_page.dart';
import 'package:furniture/presentation/screens/auth/sign_up_page.dart';
import 'package:furniture/presentation/screens/initPage/init_page.dart';
import 'package:furniture/presentation/screens/onBoarding/on_boarding_page.dart';

class RouterCont {
  static final RouterCont _inherentce = RouterCont._init();

  static RouterCont get inherentce => _inherentce;

  RouterCont._init();

  Route? onGenerateRoute(RouteSettings settings) {
    // var args = settings.arguments;

    switch (settings.name) {
      case '/init':
        return navigator(const InitPage());

      case '/on_boarding':
        return navigator(const OnBoardingPage());

      case '/login':
        return navigator(const LoginPage());

      case '/signup':
        return navigator(SignUpPage());
    }
    return null;
    // return null;
  }

  MaterialPageRoute navigator(Widget widget) {
    return MaterialPageRoute(builder: (context) => widget);
  }
}
