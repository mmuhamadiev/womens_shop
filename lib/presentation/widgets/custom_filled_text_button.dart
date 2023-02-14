import 'package:flutter/material.dart';
import 'package:womens_shop/presentation/constraints/constraints.dart';

class CustomFilledTextButton extends StatelessWidget {
  const CustomFilledTextButton(
      {Key? key,
      required this.func,
      required this.child,
        required this.width,
      required this.scaleOfWidth,
      required this.scaleOfHeight,
      required this.color})
      : super(key: key);

  final Function() func;
  final Widget child;
  final double width;
  final double scaleOfWidth;
  final double scaleOfHeight;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width * 0.9,
      height: scaleOfHeight * 70,
      child: FilledButton(
        onPressed: func,
        style: ButtonStyle(
          backgroundColor: MaterialStatePropertyAll<Color>(color),
          shape: MaterialStatePropertyAll<RoundedRectangleBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(scaleOfWidth * 9),
            ),
          ),
        ),
        child: child,
      ),
    );
  }
}
