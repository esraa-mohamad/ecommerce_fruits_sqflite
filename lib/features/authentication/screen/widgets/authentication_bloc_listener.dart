import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/routes/routes.dart';
import '../../../../core/functions/custom_snack_bar.dart';
import '../../../../core/functions/error_dialog.dart';
import '../../../../core/functions/loading_dialog.dart';
import '../../../../core/theme/color_manager.dart';
import '../../manager/authentication_cubit.dart';
import '../../manager/authentication_state.dart';

class AuthenticationBlocListener extends StatelessWidget {
  const AuthenticationBlocListener({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthenticationCubit , AuthenticationState>(
        listenWhen: (context, state) =>
        state is AuthenticationCreateDatabase ||
            state is AuthenticationLoading ||
            state is AuthenticationInsertName ||
            state is AuthenticationFailed,
        listener: (context , state) {
          if(state is AuthenticationCreateDatabase){
            //showSnackBar(context: context, message: 'Data is created' , backgroundColor: ColorManager.mainOrange);
          }
          else if (state is AuthenticationLoading){
            loadingDialog(context);
          }else if(state is AuthenticationInsertName){
            Navigator.of(context).pop();
            Navigator.of(context).pushReplacementNamed(Routes.homeEcommerceScreen);
          }else if(state is AuthenticationFailed){
            Navigator.of(context).pop();
            errorDialog(context, state.error);
          }
        },
        child: const SizedBox.shrink(),
        );
  }
}
