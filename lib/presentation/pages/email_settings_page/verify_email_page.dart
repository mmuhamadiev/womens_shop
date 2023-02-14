import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:womens_shop/presentation/constraints/constraints.dart';
import 'package:womens_shop/presentation/widgets/custom_filled_text_button.dart';
import 'package:womens_shop/presentation/widgets/custom_outlined_text_button.dart';
import '../../widgets/custom_app_bar.dart';

class VerifyEmailPage extends StatelessWidget {
  const VerifyEmailPage({Key? key}) : super(key: key);

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
      appBar: customAppBar(context, scaleOfHeight, 'Email'),
      body: Center(
        child: Container(
          margin: EdgeInsets.only(top: topStatusBarHeight, left:  10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                height: scaleOfHeight * 60,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Verify Email',
                      style: plusJakarta700WhiteStyle.copyWith(
                          fontSize: 16, color: staticGreyColor),
                    ),
                    Text(
                      'b**************3@gmail.com',
                      style: plusJakarta700WhiteStyle.copyWith(
                        fontSize: 17,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: scaleOfHeight * 20,
              ),
              SizedBox(
                height: scaleOfHeight * 155,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                        margin: EdgeInsets.only(bottom: scaleOfWidth * 10),
                        child: Text(
                          'Email has been verified successfully, 100 points are already in your pocket',
                          textAlign: TextAlign.center,
                          style: plusJakarta500WhiteStyle.copyWith(
                              fontSize: 14, color: staticGreyColor),
                        ),),
                    CustomOutlinedTextButton(
                      func: () {
                        context.pushNamed('/email/change');
                      },
                      scaleOfWidth: scaleOfWidth,
                      scaleOfHeight: scaleOfHeight,
                      width: width,
                      child: Text(
                        'Change',
                        style: plusJakarta700WhiteStyle.copyWith(
                            fontSize: scaleOfHeight * 18),
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
