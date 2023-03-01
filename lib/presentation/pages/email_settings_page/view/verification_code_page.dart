import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:womens_shop/presentation/app_theme/app_colors/app_colors.dart';
import 'package:womens_shop/presentation/constraints/constraints.dart';
import 'package:womens_shop/presentation/widgets/custom_text_button.dart';
import '../../../widgets/custom_app_bar.dart';

class VerificationCodePage extends StatefulWidget {
  VerificationCodePage({Key? key}) : super(key: key);

  @override
  State<VerificationCodePage> createState() => _VerificationCodePageState();
}

class _VerificationCodePageState extends State<VerificationCodePage> {
  final TextEditingController _controller1 = TextEditingController();

  final TextEditingController _controller2 = TextEditingController();

  final TextEditingController _controller3 = TextEditingController();

  final TextEditingController _controller4 = TextEditingController();

  final TextEditingController _controller5 = TextEditingController();

  final TextEditingController _controller6 = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final topStatusBarHeight = MediaQuery.of(context).viewPadding.top;
    final bottomNotchHeight = MediaQuery.of(context).viewPadding.bottom;
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;

    final double scaleOfWidth = width / mockUpWidth;
    final double scaleOfHeight = height / mockUpHeight;

    final ThemeData theme = Theme.of(context);

    return GestureDetector(
      onTap: () {
        FocusManager.instance.primaryFocus!.unfocus();
      },
      child: Scaffold(
        backgroundColor: AppColors.staticBlackColor,
        appBar: customAppBar(context, scaleOfHeight, 'Email verification', false),
        body: Center(
          child: Container(
            margin: EdgeInsets.only(top: topStatusBarHeight, left:  10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(
                  height: scaleOfHeight * 80,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Verification code',
                        style: theme.textTheme.bodySmall
                      ),
                      Text(
                        'Verification code has been sent to email\nb**************3@gmail.com',
                        textAlign: TextAlign.center,
                        style: theme.textTheme.bodySmall
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: scaleOfHeight * 15,
                ),
                customTextButton(context,'Resend', scaleOfHeight, () {},),
                SizedBox(
                  height: scaleOfHeight * 40,
                ),
                Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      SizedBox(
                        width: scaleOfHeight * 50,
                        height: scaleOfHeight * 60,
                        child: TextField(
                          controller: _controller1,
                          keyboardType: TextInputType.number,
                          cursorColor: AppColors.mainButtonColor,
                          style: theme.textTheme.bodySmall,
                          textAlign: TextAlign.center,
                          // decoration: InputDecoration(
                          //   filled: true,
                          //   fillColor: AppColors.staticWhiteColor.withOpacity(0.1),
                          //   constraints: BoxConstraints(
                          //     maxHeight: scaleOfHeight * 70,
                          //     maxWidth: width * 0.9,
                          //   ),
                          //   border: OutlineInputBorder(
                          //     borderSide: BorderSide.none,
                          //     borderRadius: BorderRadius.all(
                          //       Radius.circular(scaleOfWidth * 9),
                          //     ),
                          //   ),
                          // ),
                          inputFormatters: [
                            FilteringTextInputFormatter.digitsOnly,
                            LengthLimitingTextInputFormatter(1),
                          ],
                          onChanged: (value)  {
                            if(_controller1.text.isEmpty) {
                              FocusManager.instance.primaryFocus!.previousFocus();
                            }
                            else {
                              FocusManager.instance.primaryFocus!.nextFocus();

                            }
                          },
                        ),
                      ),
                      SizedBox(
                        width: scaleOfHeight * 50,
                        height: scaleOfHeight * 60,
                        child: TextField(
                          controller: _controller2,
                          keyboardType: TextInputType.number,
                          cursorColor: AppColors.mainButtonColor,
                          style: theme.textTheme.bodySmall,
                          textAlign: TextAlign.center,
                          // decoration: InputDecoration(
                          //   filled: true,
                          //   fillColor: AppColors.staticWhiteColor.withOpacity(0.1),
                          //   constraints: BoxConstraints(
                          //     maxHeight: scaleOfHeight * 70,
                          //     maxWidth: width * 0.9,
                          //   ),
                          //   border: OutlineInputBorder(
                          //     borderSide: BorderSide.none,
                          //     borderRadius: BorderRadius.all(
                          //       Radius.circular(scaleOfWidth * 9),
                          //     ),
                          //   ),
                          // ),
                          inputFormatters: [
                            FilteringTextInputFormatter.digitsOnly,
                            LengthLimitingTextInputFormatter(1),
                          ],
                          onChanged: (value)  {
                            if(_controller2.text.isEmpty) {
                              FocusManager.instance.primaryFocus!.previousFocus();
                            }
                            else {
                              FocusManager.instance.primaryFocus!.nextFocus();

                            }
                          },
                        ),
                      ),
                      SizedBox(
                        width: scaleOfHeight * 50,
                        height: scaleOfHeight * 60,
                        child: TextField(
                          controller: _controller3,
                          keyboardType: TextInputType.number,
                          cursorColor: AppColors.mainButtonColor,
                          style: theme.textTheme.bodySmall,
                          textAlign: TextAlign.center,
                          // decoration: InputDecoration(
                          //   filled: true,
                          //   fillColor: AppColors.staticWhiteColor.withOpacity(0.1),
                          //   constraints: BoxConstraints(
                          //     maxHeight: scaleOfHeight * 70,
                          //     maxWidth: width * 0.9,
                          //   ),
                          //   border: OutlineInputBorder(
                          //     borderSide: BorderSide.none,
                          //     borderRadius: BorderRadius.all(
                          //       Radius.circular(scaleOfWidth * 9),
                          //     ),
                          //   ),
                          // ),
                          inputFormatters: [
                            FilteringTextInputFormatter.digitsOnly,
                            LengthLimitingTextInputFormatter(1),
                          ],
                          onChanged: (value)  {
                            if(_controller3.text.isEmpty) {
                              FocusManager.instance.primaryFocus!.previousFocus();
                            }
                            else {
                              FocusManager.instance.primaryFocus!.nextFocus();

                            }
                          },
                        ),
                      ),
                      SizedBox(
                        width: scaleOfHeight * 50,
                        height: scaleOfHeight * 60,
                        child: TextField(
                          controller: _controller4,
                          keyboardType: TextInputType.number,
                          cursorColor: AppColors.mainButtonColor,
                          style: theme.textTheme.bodySmall,
                          textAlign: TextAlign.center,
                          // decoration: InputDecoration(
                          //   filled: true,
                          //   fillColor: AppColors.staticWhiteColor.withOpacity(0.1),
                          //   constraints: BoxConstraints(
                          //     maxHeight: scaleOfHeight * 70,
                          //     maxWidth: width * 0.9,
                          //   ),
                          //   border: OutlineInputBorder(
                          //     borderSide: BorderSide.none,
                          //     borderRadius: BorderRadius.all(
                          //       Radius.circular(scaleOfWidth * 9),
                          //     ),
                          //   ),
                          // ),
                          inputFormatters: [
                            FilteringTextInputFormatter.digitsOnly,
                            LengthLimitingTextInputFormatter(1),
                          ],
                          onChanged: (value)  {
                            if(_controller4.text.isEmpty) {
                              FocusManager.instance.primaryFocus!.previousFocus();
                            }
                            else {
                              FocusManager.instance.primaryFocus!.nextFocus();

                            }
                          },
                        ),
                      ),
                      SizedBox(
                        width: scaleOfHeight * 50,
                        height: scaleOfHeight * 60,
                        child: TextField(
                          controller: _controller5,
                          keyboardType: TextInputType.number,
                          cursorColor: AppColors.mainButtonColor,
                          style: theme.textTheme.bodySmall,
                          textAlign: TextAlign.center,
                          // decoration: InputDecoration(
                          //   filled: true,
                          //   fillColor: AppColors.staticWhiteColor.withOpacity(0.1),
                          //   constraints: BoxConstraints(
                          //     maxHeight: scaleOfHeight * 70,
                          //     maxWidth: width * 0.9,
                          //   ),
                          //   border: OutlineInputBorder(
                          //     borderSide: BorderSide.none,
                          //     borderRadius: BorderRadius.all(
                          //       Radius.circular(scaleOfWidth * 9),
                          //     ),
                          //   ),
                          // ),
                          inputFormatters: [
                            FilteringTextInputFormatter.digitsOnly,
                            LengthLimitingTextInputFormatter(1),
                          ],
                          onChanged: (value)  {
                            if(_controller5.text.isEmpty) {
                              FocusManager.instance.primaryFocus!.previousFocus();
                            }
                            else {
                              FocusManager.instance.primaryFocus!.nextFocus();
                            }
                          },
                        ),
                      ),
                      SizedBox(
                        width: scaleOfHeight * 50,
                        height: scaleOfHeight * 60,
                        child: TextField(
                          controller: _controller6,
                          keyboardType: TextInputType.number,
                          cursorColor: AppColors.mainButtonColor,
                          style: theme.textTheme.bodySmall,
                          textAlign: TextAlign.center,
                          // decoration: InputDecoration(
                          //   filled: true,
                          //   fillColor: AppColors.staticWhiteColor.withOpacity(0.1),
                          //   constraints: BoxConstraints(
                          //     maxHeight: scaleOfHeight * 70,
                          //     maxWidth: width * 0.9,
                          //   ),
                          //   border: OutlineInputBorder(
                          //     borderSide: BorderSide.none,
                          //     borderRadius: BorderRadius.all(
                          //       Radius.circular(scaleOfWidth * 9),
                          //     ),
                          //   ),
                          // ),
                          inputFormatters: [
                            FilteringTextInputFormatter.digitsOnly,
                            LengthLimitingTextInputFormatter(1),
                          ],
                          onChanged: (value)  {
                            if(_controller6.text.isEmpty) {
                              FocusManager.instance.primaryFocus!.previousFocus();
                            }
                            else {
                              FocusManager.instance.primaryFocus!.nextFocus();
                            }
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
