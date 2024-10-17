import 'package:ecommerce_fruits/core/functions/custom_snack_bar.dart';
import 'package:ecommerce_fruits/core/theme/color_manager.dart';
import 'package:ecommerce_fruits/features/home/manager/home_cubit.dart';
import 'package:ecommerce_fruits/features/home/manager/home_state.dart';
import 'package:ecommerce_fruits/features/home/screen/widget/home_welcome_message.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class UserNameBlocBuilder extends StatelessWidget {
  const UserNameBlocBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<HomeCubit, HomeState>(
      listener: (context, state) {
        if (state is HomeCreateDatabase) {
          showSnackBar(
            context: context,
            message: 'Logged In',
            backgroundColor: ColorManager.mainOrange,
          );
        }
      },
      builder: (context, state) {
        if (state is HomeGetUserNameSuccess) {
          return getUserName(state.name);
        } else if (state is HomeGetUserNameFailed) {
          return getUserName(state.error);
        } else {
          return const SizedBox.shrink();
        }
      },
    );
  }

  Widget getUserName(String name) {
    return HomeWelcomeMessage(name: name);
  }
}
