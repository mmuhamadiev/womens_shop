import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:womens_shop/presentation/app_theme/app_colors/app_colors.dart';
import 'package:womens_shop/presentation/constraints/constraints.dart';
import 'package:womens_shop/presentation/widgets/custom_app_bar.dart';
import 'package:womens_shop/presentation/widgets/custom_filled_text_button.dart';
import 'package:womens_shop/presentation/widgets/custom_outlined_text_button.dart';

class VerifyChangeEmailPage extends StatelessWidget {
  const VerifyChangeEmailPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final topStatusBarHeight = MediaQuery.of(context).viewPadding.top;
    final bottomNotchHeight = MediaQuery.of(context).viewPadding.bottom;
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;

    final double scaleOfWidth = width / mockUpWidth;
    final double scaleOfHeight = height / mockUpHeight;

    final ThemeData theme = Theme.of(context);

    return Scaffold(
      backgroundColor: AppColors.staticBlackColor,
      appBar: customAppBar(context, scaleOfHeight, 'Email', false),
      body: Center(
        child: Container(
          margin: EdgeInsets.only(top: topStatusBarHeight, left:  10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                height: scaleOfHeight * 50,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Verify Email',
                      style: theme.textTheme.bodyMedium
                    ),
                    Text(
                      'b**************3@gmail.com',
                      style: theme.textTheme.bodyLarge
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: scaleOfHeight * 70,
              ),
              SizedBox(
                height: scaleOfHeight * 240,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                        margin: EdgeInsets.only(bottom: scaleOfWidth * 5),
                        child: Text(
                          '100 Points will be in your pocket.',
                          style: theme.textTheme.bodySmall
                        )),
                    CustomFilledTextButton(
                      func: () {
                        context.pushNamed('/email/confirm');
                      },
                      scaleOfWidth: scaleOfWidth,
                      scaleOfHeight: scaleOfHeight,
                      width: width,
                      color: AppColors.mainButtonColor,
                      child: Text(
                        'Verify',
                        style: theme.textTheme.titleMedium!.copyWith(
                            color: AppColors.staticBlackColor
                        )
                      ),
                    ),
                    CustomOutlinedTextButton(
                      func: () {
                        context.pushNamed('/email/change');
                      },
                      scaleOfWidth: scaleOfWidth,
                      scaleOfHeight: scaleOfHeight,
                      width: width,
                      child: Text(
                        'Change',
                        style: theme.textTheme.titleMedium
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
