
import 'package:ecommerce_fruits/features/home/manager/name_authentication_cubit/home_name_authentication_cubit.dart';
import 'package:ecommerce_fruits/features/home/manager/name_authentication_cubit/home_name_authentication_state.dart';
import 'package:ecommerce_fruits/features/home/screen/widget/home_welcome_message.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class UserNameBlocBuilder extends StatelessWidget {
  const UserNameBlocBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeNameAuthenticationCubit, HomeNameAuthenticationState>(
      builder: (context, state) {
        if (state is HomeNameAuthenticationSuccess) {
          return getUserName(state.name);
        } else if (state is HomeNameAuthenticationFailed) {
          return getUserName(state.error);
        } else {
          return getUserName('No name');
        }
      },
    );
  }

  Widget getUserName(String name) {
    return HomeWelcomeMessage(name: name);
  }
}
