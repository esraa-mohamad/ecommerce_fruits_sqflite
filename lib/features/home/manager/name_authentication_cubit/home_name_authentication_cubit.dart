

import 'dart:developer';

import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/helper/local_database/ecommerce_database.dart';
import 'home_name_authentication_state.dart';

class HomeNameAuthenticationCubit extends Cubit<HomeNameAuthenticationState> {
  HomeNameAuthenticationCubit() : super(HomeNameAuthenticationInitial());

  EcommerceDatabase ecommerceDatabase = EcommerceDatabase.instance;

  // get name from authentication
  Future<void> getUserName()async{
  emit(HomeNameAuthenticationLoading());
  try {
    String name =await ecommerceDatabase.getLastAuthenticationName();
    emit(HomeNameAuthenticationSuccess(name: name));
    log("Name cubit : $name");
  } catch (error) {
    emit(HomeNameAuthenticationFailed(error: "No name : $error"));
    log(error.toString());
  }
}

}
