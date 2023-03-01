import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:womens_shop/business/bloc/bloc_state_manager_bloc.dart';
import 'package:womens_shop/presentation/app_theme/app_colors/app_colors.dart';

class CustomAgreementCheckBox extends StatelessWidget {
  const CustomAgreementCheckBox({Key? key, required this.width, required this.scaleOfHeight}) : super(key: key);

  final double width;
  final double scaleOfHeight;

  @override
  Widget build(BuildContext context) {

    final bloc = BlocProvider.of<StateManagerBloc>(context);
    final ThemeData theme = Theme.of(context);
    return Center(
      child: SizedBox(
        width: width * 0.9,
        height: scaleOfHeight * 60,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            BlocBuilder<StateManagerBloc, StateManagerInitial>(
                builder: (context, state) {
                  return Transform.scale(
                    scale: 1.4,
                    child: Checkbox(
                        activeColor: AppColors.mainButtonColor,
                        shape: const CircleBorder(),
                        materialTapTargetSize: MaterialTapTargetSize.padded,
                        value: state.isChecked,
                        onChanged: (value) {
                          bloc.radioButtonCheck(value!);
                        }),
                  );
                }
            ),
            Flexible(
              child: Text(
                  'By registering, you agree to receive exclusive offers and latest news by email. If you wish to no longer receive any email, please check the unsubscribe option.',
                  maxLines: 3,
                  style: theme.textTheme.bodySmall!.copyWith(
                      fontSize: 11, color: AppColors.staticGreyColor)),
            ),
          ],
        ),
      ),
    );
  }
}
