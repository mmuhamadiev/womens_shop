import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:womens_shop/presentation/constraints/constraints.dart';
import 'package:womens_shop/presentation/widgets/custom_filled_text_button.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final topStatusBarHeight = MediaQuery.of(context).viewPadding.top;
    final bottomNotchHeight = MediaQuery.of(context).viewPadding.bottom;
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;

    final double scaleOfWidth = width / mockUpWidth;
    final double scaleOfHeight = height / mockUpHeight;

    return Scaffold(
      backgroundColor: mainBgColor,
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
                color: mainButtonColor,
                child: Text(
                  'Go to change or verify email page',
                  style: plusJakarta700BlackStyle.copyWith(fontSize: scaleOfHeight * 18),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
