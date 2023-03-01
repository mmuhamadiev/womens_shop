import 'package:flutter/material.dart';
import 'package:womens_shop/presentation/constraints/constraints.dart';

class CustomOutlinedTextButton extends StatelessWidget {
  const CustomOutlinedTextButton(
      {Key? key,
      required this.func,
      required this.child,
        required this.width,
      required this.scaleOfWidth,
      required this.scaleOfHeight})
      : super(key: key);

  final Function() func;
  final Widget child;
  final double width;
  final double scaleOfWidth;
  final double scaleOfHeight;

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    return SizedBox(
      width: width * 0.9,
      height: scaleOfHeight * 70,
      child: OutlinedButton(
        onPressed: func,
        style: theme.outlinedButtonTheme.style,
        child: child,
      ),
    );
  }
}
