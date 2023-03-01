import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:womens_shop/presentation/app_theme/app_colors/app_colors.dart';
import 'package:womens_shop/presentation/constraints/constraints.dart';
import 'package:womens_shop/presentation/constraints/assets.dart';
import 'package:womens_shop/presentation/widgets/custom_app_bar.dart';
import 'package:womens_shop/presentation/widgets/custom_filled_text_button.dart';
import 'package:womens_shop/presentation/pages/home_page/components/custom_navbar_button.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  int index = 2;

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
      appBar: customAppBar(context, scaleOfHeight, 'Profile',true),
      body: Container(
        margin: EdgeInsets.only(top: topStatusBarHeight),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Center(
              child: CustomFilledTextButton(
                  func: () {
                    context.pushNamed('/email');
                  },
                scaleOfWidth: scaleOfWidth,
                scaleOfHeight: scaleOfHeight,
                width: width,
                color: AppColors.mainButtonColor,
                child: Text(
                  'Go to change or verify email page',
                  style: theme.textTheme.titleMedium!.copyWith(
                    color: AppColors.staticBlackColor
                  )
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: index,
        type: BottomNavigationBarType.fixed,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        selectedItemColor: AppColors.staticWhiteColor,
        backgroundColor: AppColors.staticBlackColor,
        onTap: (index) {
          setState(() {
            this.index = index;
          }
          );
        },
        items: [

      ],
      ),
    );
  }
}
