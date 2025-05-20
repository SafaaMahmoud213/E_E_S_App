import 'package:flutter/material.dart';

class AppNavigator {
  final navigatorKey = GlobalKey<NavigatorState>();

  Future<void> push({required Widget page}) async {
    await navigatorKey.currentState?.push(_createPageRoute(page));
  }

  Future<void> pushReplaceMent({required Widget page}) async {
    await navigatorKey.currentState?.pushReplacement(_createPageRoute(page));
  }

  Future<void> pushAndRemoveUntil({required Widget page}) async {
    await navigatorKey.currentState?.pushAndRemoveUntil(_createPageRoute(page), (route) => false);
  }

  void pop() {
    navigatorKey.currentState?.pop();
  }

  void popUntil() {
    navigatorKey.currentState?.popUntil((route) => route.isFirst);
  }
}

PageRouteBuilder _createPageRoute(Widget page) {
  return PageRouteBuilder(
    pageBuilder: (context, animation, animationTwo) => page,
    transitionsBuilder: (context, animation, animationTwo, child) {
      var begin = Offset(0.0, 1.0);
      var end = Offset(0.0, 1.0);
      var tween = Tween(begin: begin, end: end);
      var curveAnimation = CurvedAnimation(parent: animation, curve: Curves.easeInOut);

      return SlideTransition(position: tween.animate(curveAnimation), child: child);
    },
  );
}
