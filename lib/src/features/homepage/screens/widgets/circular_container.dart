import 'package:flutter/material.dart';

class ACircularContainer extends StatelessWidget {
  const ACircularContainer({
    Key? key,
    this.child,
    this.width = 100,
    this.height = 100,
    this.radius = 80,
    this.padding = 0,
    this.margin,
    this.backgroundColor = Colors.white,

  }) : super(key: key);

  final double? width;
  final double? height;
  final double radius;
  final double padding;
  final EdgeInsets? margin;
  final Widget? child;
  final Color backgroundColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      margin: margin,
      padding: EdgeInsets.all(padding),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(radius),
        color: backgroundColor,
      ),
      child: child,
    );
  }
}