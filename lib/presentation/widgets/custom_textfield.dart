import 'package:flutter/material.dart';
import 'package:womens_shop/presentation/constraints/constraints.dart';
import 'package:womens_shop/presentation/widgets/custom_text_button.dart';

Center customTextField(
    String textFieldName,
    double scaleOfHeight,
    double scaleOfWidth,
    double width,
    TextEditingController controller,
    bool enableSuffixSendButton,
    Function() sendFunc) {
  return Center(
    child: SizedBox(
      width: width * 0.9,
      height: scaleOfHeight * 100,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            textFieldName,
            style: plusJakarta700WhiteStyle.copyWith(
                fontSize: 16, color: staticGreyColor),
          ),
          TextField(
            cursorColor: mainButtonColor,
            style: plusJakarta700WhiteStyle,
            textAlign: TextAlign.left,
            decoration: enableSuffixSendButton
                ? InputDecoration(
                    filled: true,
                    fillColor: staticWhiteColor.withOpacity(0.1),
                    suffixIcon: Container(
                      margin: EdgeInsets.only(right: scaleOfWidth * 10),
                      child: customTextButton('Send', scaleOfHeight, sendFunc),
                    ),
                    constraints: BoxConstraints(
                      maxHeight: scaleOfHeight * 70,
                      maxWidth: width * 0.9,
                    ),
                    border: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.all(
                            Radius.circular(scaleOfWidth * 9))),
                  )
                : InputDecoration(
                    filled: true,
                    fillColor: staticWhiteColor.withOpacity(0.1),
                    constraints: BoxConstraints(
                      maxHeight: scaleOfHeight * 70,
                      maxWidth: width * 0.9,
                    ),
                    border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.all(
                        Radius.circular(scaleOfWidth * 9),
                      ),
                    ),
                  ),
          ),
        ],
      ),
    ),
  );
}
