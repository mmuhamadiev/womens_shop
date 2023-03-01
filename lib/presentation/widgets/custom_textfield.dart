import 'package:flutter/material.dart';
import 'package:womens_shop/presentation/app_theme/app_colors/app_colors.dart';
import 'package:womens_shop/presentation/widgets/custom_text_button.dart';

Center customTextField(
    BuildContext context,
    String textFieldName,
    double scaleOfHeight,
    double scaleOfWidth,
    double width,
    TextEditingController controller,
    bool enableSuffixSendButton,
    Function() sendFunc) {
  ThemeData theme = Theme.of(context);
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
            style: theme.textTheme.bodySmall!.copyWith(
                fontSize: 16, color: AppColors.staticGreyColor),
          ),
          TextField(
            cursorColor: AppColors.mainButtonColor,
            style: theme.textTheme.bodySmall,
            textAlign: TextAlign.left,
            decoration: enableSuffixSendButton
                ? InputDecoration(
                    filled: true,
                    fillColor: AppColors.staticWhiteColor.withOpacity(0.1),
                    suffixIcon: Container(
                      margin: EdgeInsets.only(right: scaleOfWidth * 10),
                      child: customTextButton(context, 'Send', scaleOfHeight, sendFunc),
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
                    fillColor: AppColors.staticWhiteColor.withOpacity(0.1),
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
