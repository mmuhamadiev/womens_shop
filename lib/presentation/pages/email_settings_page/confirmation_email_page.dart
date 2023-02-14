import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:womens_shop/presentation/constraints/constraints.dart';
import 'package:womens_shop/presentation/widgets/custom_filled_text_button.dart';
import 'package:womens_shop/presentation/widgets/custom_outlined_text_button.dart';
import '../../widgets/custom_app_bar.dart';

class ConfirmationEmailPage extends StatelessWidget {
  const ConfirmationEmailPage({Key? key}) : super(key: key);

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
                height: scaleOfHeight * 120,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Binding Email',
                      style: plusJakarta700WhiteStyle.copyWith(
                          fontSize: 16, color: staticGreyColor),
                    ),
                    Text(
                      'b**************3@gmail.com',
                      style: plusJakarta700WhiteStyle.copyWith(
                        fontSize: 17,
                      ),
                    ),
                    SizedBox(height: scaleOfHeight * 2),
                    Text(
                      'A confirmation email has been sent to you. \nPlease click the link in the email to complete verification',
                      textAlign: TextAlign.center,
                      style: plusJakarta400WhiteStyle.copyWith(
                        color: staticWhiteColor.withOpacity(0.8),
                        fontSize: 14,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: scaleOfHeight * 70,
              ),
              SizedBox(
                height: scaleOfHeight * 310,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                        margin: EdgeInsets.only(bottom: scaleOfWidth * 10),
                        child: Text(
                          '100 Points will be in your pocket.',
                          style: plusJakarta500WhiteStyle.copyWith(
                              fontSize: 14, color: staticGreyColor),
                        )),
                    CustomFilledTextButton(
                      func: () {
                        context.pushNamed('/email/verify/code');
                      },
                      scaleOfWidth: scaleOfWidth,
                      scaleOfHeight: scaleOfHeight,
                      width: width,
                      color: mainButtonColor.withOpacity(0.6),
                      child: Text(
                        '49s',
                        style: plusJakarta700BlackStyle.copyWith(
                            fontSize: scaleOfHeight * 18),
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
                        style: plusJakarta700WhiteStyle.copyWith(
                            fontSize: scaleOfHeight * 18),
                      ),
                    ),
                    Text(
                      'Didnt receive the email?\n1. Please check your spam folder.\n2. If you still dont see the email, reach out to service@gmail.com',
                      style: plusJakarta400WhiteStyle.copyWith(
                        color: staticGreyColor,
                        fontSize: 12,
                      ),
                    )
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