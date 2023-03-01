import 'package:flutter/material.dart';
//import 'package:womens_shop/presentation/constraints/constraints.dart';

class BackIconButton extends StatelessWidget {
  const BackIconButton({Key? key, required this.backFunc}) : super(key: key);

  final Function() backFunc;

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    return IconButton(
      onPressed: backFunc,
      //style: backIconButtonStyle,
      style: theme.iconButtonTheme.style,
      icon: const Icon(
        Icons.arrow_back_ios_new_outlined,
        size: 25,
        color: Colors.white,
      ),
    );
  }
}
