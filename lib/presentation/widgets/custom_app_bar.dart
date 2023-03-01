import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:womens_shop/presentation/constraints/constraints.dart';
import 'package:womens_shop/presentation/widgets/back_icon_button.dart';

import '../constraints/assets.dart';

AppBar customAppBar(BuildContext context, double scaleOfHeight, String title,
    bool isActionEnabled) {
  final ThemeData theme = Theme.of(context);
  return AppBar(
    backgroundColor: Colors.transparent,
    leading: BackIconButton(
      backFunc: () {
        context.pop();
      },
    ),
    actions: [
      isActionEnabled
          ? GestureDetector(
              onTap: () {},
              child: Container(
                margin: const EdgeInsets.only(right: 10),
                child: Badge(
                  child: Image.asset(Assets.notification),
                ),
              ),
            )
          : const SizedBox.shrink()
    ],
    title: Text(
      title,
      style: theme.textTheme.titleLarge,
    ),
  );
}
