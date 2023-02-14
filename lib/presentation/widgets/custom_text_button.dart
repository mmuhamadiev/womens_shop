import 'package:flutter/material.dart';
import 'package:womens_shop/presentation/constraints/constraints.dart';

TextButton customTextButton( String name, double scaleOfHeight, Function() sendFunc){
  return TextButton(
    onPressed: sendFunc,
    child: Text(
      name,
      style: plusJakarta700WhiteStyle.copyWith(
          fontSize: scaleOfHeight * 16,
          color: mainButtonColor),
    ),
  );
}