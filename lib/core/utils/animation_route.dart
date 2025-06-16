import 'package:flutter/material.dart';

class AnimationRoute extends PageRouteBuilder {
  final page;
  AnimationRoute({required this.page})
    : super(
        pageBuilder: (context, animation, secondaryAnimation) => page,
        transitionsBuilder: (context, animation, secondaryAnimation, child) {
          var tween = Tween<double>(begin: 0.0, end: 1.0);
          var curveAnimation = CurvedAnimation(parent: animation, curve: Curves.linear);
          return RotationTransition(turns: tween.animate(curveAnimation), child: child);
        },
      );
}
