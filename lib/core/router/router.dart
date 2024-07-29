
import 'package:flutter/material.dart';
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
        return navigator( OnBoardingPage());

    }
    return null;
    // return null;
  }

  MaterialPageRoute navigator(Widget widget) {
    return MaterialPageRoute(builder: (context) => widget);
  }
}