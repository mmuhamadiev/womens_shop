import 'package:flutter/material.dart';
import 'package:womens_shop/presentation/app_theme/app_colors/app_colors.dart';

TextButton customTextButton(BuildContext context, String name, double scaleOfHeight, Function() sendFunc){
  ThemeData theme = Theme.of(context);
  return TextButton(
    onPressed: sendFunc,
    child: Text(
      name,
      style: theme.textTheme.bodySmall!.copyWith(
          fontSize: scaleOfHeight * 16,
          color: AppColors.mainButtonColor),
    ),
  );
}