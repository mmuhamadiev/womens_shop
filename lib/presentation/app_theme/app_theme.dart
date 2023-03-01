import 'package:flutter/material.dart';
import 'package:womens_shop/presentation/app_theme/app_colors/app_colors.dart';

final ThemeData kShopTheme = _buildShopTheme();

ThemeData _buildShopTheme() {
  final ThemeData base = ThemeData.light();
  return base.copyWith(
    useMaterial3: true,
    colorScheme: base.colorScheme.copyWith(
      primary: AppColors.mainButtonColor,
      onPrimary: AppColors.mainButtonColor.withOpacity(0.5),
      secondary: AppColors.mainButtonColor.withOpacity(0.5),
      error: AppColors.staticRedColor,
    ),
    inputDecorationTheme: InputDecorationTheme(
          filled: true,
          fillColor: AppColors.staticWhiteColor.withOpacity(0.1),
          constraints: const BoxConstraints(
            maxHeight: 70,
            maxWidth: 0.9,
          ),
          border: const OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.all(
              Radius.circular(9),
            ),
          ),
    ),
    textButtonTheme: TextButtonThemeData(
        style: TextButton.styleFrom(
          foregroundColor: base.colorScheme.secondary,
          shape: const BeveledRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(7.0)),
          ),
        )
    ),
    // buttonTheme: ButtonThemeData(
    //     buttonColor: AppColors.staticWhiteColor
    // ),
    iconButtonTheme: IconButtonThemeData(
      style: ButtonStyle(
        backgroundColor:
        MaterialStatePropertyAll(AppColors.staticWhiteColor.withOpacity(0.1)),
        shape: MaterialStatePropertyAll<CircleBorder>(
          CircleBorder(
            side: BorderSide(
              color: AppColors.staticWhiteColor.withOpacity(0.1),
            ),
          ),
        ),
      )
    ),
    filledButtonTheme: FilledButtonThemeData(
      style: ButtonStyle(
        shape: MaterialStatePropertyAll<RoundedRectangleBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(9),
          ),
        ),
      ),
    ),
    outlinedButtonTheme: _buildOutlinedButtonStyle(),
    textTheme: _buildShopTextTheme(base.textTheme),
  );
}



OutlinedButtonThemeData _buildOutlinedButtonStyle() {
  return OutlinedButtonThemeData(
      style: ButtonStyle(
        side: MaterialStatePropertyAll(BorderSide(
          color: AppColors.mainButtonColor,
        ),
        ),
        shape: MaterialStatePropertyAll<RoundedRectangleBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(9),
          ),
        ),
      )
  );
}

TextTheme _buildShopTextTheme(TextTheme base) {
  return base.copyWith(
    labelLarge: base.labelLarge!.copyWith(
        fontFamily: 'PlusJakartaSans',
        fontWeight: FontWeight.w700,
        color: AppColors.staticWhiteColor
    ),
    headlineSmall: base.headlineSmall!.copyWith(
        fontFamily: 'PlusJakartaSans',
        fontWeight: FontWeight.w700,
        color: AppColors.staticWhiteColor
    ),
    bodySmall: base.bodySmall!.copyWith(
        fontFamily: 'PlusJakartaSans',
        fontSize: 13,
        fontWeight: FontWeight.w500,
        color: AppColors.staticGreyColor
    ),
    bodyMedium: base.bodyMedium!.copyWith(
        fontFamily: 'PlusJakartaSans',
        fontSize: 14,
        fontWeight: FontWeight.w700,
        color: AppColors.staticGreyColor
    ),
    bodyLarge: base.bodyLarge!.copyWith(
        fontFamily: 'PlusJakartaSans',
        fontSize: 15,
        fontWeight: FontWeight.w700,
        color: AppColors.staticWhiteColor
    ),
    titleSmall: base.titleSmall!.copyWith(
        fontFamily: 'PlusJakartaSans',
        fontWeight: FontWeight.w700,
        color: AppColors.staticWhiteColor
    ),
    titleMedium: base.titleMedium!.copyWith(
        fontFamily: 'PlusJakartaSans',
        fontWeight: FontWeight.w700,
        color: AppColors.staticWhiteColor
    ),
    titleLarge: base.titleLarge!.copyWith(
        fontFamily: 'PlusJakartaSans',
        fontWeight: FontWeight.w700,
        color: AppColors.staticWhiteColor
    ),
  );
}
