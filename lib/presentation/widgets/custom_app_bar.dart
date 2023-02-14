import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:womens_shop/presentation/constraints/constraints.dart';
import 'package:womens_shop/presentation/widgets/back_icon_button.dart';

AppBar customAppBar(BuildContext context, double scaleOfHeight, String title) {
  return AppBar(
    backgroundColor: Colors.transparent,
    leading: BackIconButton(
      backFunc: () {
        context.pop();
      },
    ),
    title: Text(
      title,
      style: plusJakarta600WhiteStyle.copyWith(
        fontSize: scaleOfHeight * 20,),
    ),
  );
}