import 'package:flutter/cupertino.dart';

class MContainer extends StatelessWidget {
  final Color? color;
  final BoxShape shape;
  final Gradient? gradient;
  final BorderRadiusGeometry? borderRadius;
  final EdgeInsetsGeometry padding, margin;
  final Widget? child;
  final double? width, height;
  final AlignmentGeometry? alignment;
  final Border? border;
  final BoxConstraints? constraints;

  const MContainer({
    Key? key,
    this.shape = BoxShape.rectangle,
    this.color,
    this.borderRadius,
    this.gradient,
    this.padding = EdgeInsets.zero,
    this.margin = EdgeInsets.zero,
    this.alignment,
    this.constraints,
    this.border,
    this.child,
    this.width,
    this.height,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: constraints,
      alignment: alignment,
      width: width,
      height: height,
      padding: padding,
      margin: margin,
      decoration: BoxDecoration(
        color: color,
        shape: shape,
        borderRadius: borderRadius,
        gradient: gradient,
        border: border,
      ),
      child: child,
    );
  }
}
