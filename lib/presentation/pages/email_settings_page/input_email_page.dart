import 'package:flutter/material.dart';
import 'package:womens_shop/presentation/constraints/constraints.dart';
import 'package:womens_shop/presentation/widgets/custom_app_bar.dart';
import 'package:womens_shop/presentation/widgets/custom_filled_text_button.dart';
import 'package:womens_shop/presentation/widgets/custom_textfield.dart';

import '../../widgets/custom_agreement_checkbox.dart';

class InputEmailPage extends StatelessWidget {
  InputEmailPage({Key? key}) : super(key: key);

  final TextEditingController emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final topStatusBarHeight = MediaQuery.of(context).viewPadding.top;
    final bottomNotchHeight = MediaQuery.of(context).viewPadding.bottom;
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;

    final double scaleOfWidth = width / mockUpWidth;
    final double scaleOfHeight = height / mockUpHeight;

    return GestureDetector(
      onTap: () {
        FocusManager.instance.primaryFocus!.unfocus();
      },
      child: Scaffold(
        backgroundColor: mainBgColor,
        appBar: customAppBar(context, scaleOfHeight, 'Input Email'),
        body: Container(
          margin: EdgeInsets.only(top: topStatusBarHeight),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            //crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              customTextField('New email', scaleOfHeight, scaleOfWidth, width,
                  emailController, false, () {}),
              SizedBox(
                height: scaleOfHeight * 30,
              ),
              customTextField('Verification code', scaleOfHeight, scaleOfWidth,
                  width, emailController, true, () {}),
              SizedBox(
                height: scaleOfHeight * 30,
              ),
              CustomAgreementCheckBox(
                width: width,
                scaleOfHeight: scaleOfHeight,
              ),
              SizedBox(
                height: scaleOfHeight * 35,
              ),
              CustomFilledTextButton(
                func: () {},
                scaleOfWidth: scaleOfWidth,
                scaleOfHeight: scaleOfHeight,
                width: width,
                color: mainButtonColor,
                child: Text(
                  'Submit',
                  style: plusJakarta700BlackStyle.copyWith(
                      fontSize: scaleOfHeight * 18),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
