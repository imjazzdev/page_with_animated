import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:simple_animations/simple_animations.dart';

class ContAnimation extends StatefulWidget {
  String img;
  double size;
  int duration;
  Curve curve;

  ContAnimation(
      {required this.img,
      required this.size,
      required this.duration,
      required this.curve});

  @override
  State<ContAnimation> createState() => _ContAnimationState();
}

class _ContAnimationState extends State<ContAnimation> {
  @override
  Widget build(BuildContext context) {
    return TweenAnimationBuilder(
        curve: widget.curve,
        tween: Tween<double>(begin: 0, end: widget.size),
        duration: Duration(milliseconds: widget.duration),
        builder: (BuildContext context, double value, Widget? _) {
          return Image.asset(
            widget.img,
            height: value,
            width: value,
          );
        });
  }
}
