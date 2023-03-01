import 'package:flutter/material.dart';
import 'package:womens_shop/presentation/app_theme/app_colors/app_colors.dart';
import 'package:womens_shop/presentation/constraints/assets.dart';

Container customNavigationButton(Function() func) {
  return Container(
    decoration: BoxDecoration(
      gradient: LinearGradient(colors: [
        Colors.white.withOpacity(0.8),
        Colors.white.withOpacity(0.8),
        Colors.white.withOpacity(0.6),
        Colors.white10
      ]),
      border: Border.all(
        color: Colors.white,
      ),
      borderRadius: BorderRadius.circular(35),
    ),
    padding: const EdgeInsets.symmetric(horizontal: 4, vertical: 4),
    child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(35),
          color: AppColors.staticWhiteColor,
        ),
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 8),
        child: Image.asset(Assets.cart)),
  );
}