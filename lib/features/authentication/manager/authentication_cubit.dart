

import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../core/helper/local_database/ecommerce_database.dart';
import 'authentication_state.dart';

class AuthenticationCubit extends Cubit<AuthenticationState> {
  AuthenticationCubit() : super(AuthenticationInitial());

  EcommerceDatabase ecommerceDatabase = EcommerceDatabase.instance;
  var formKey = GlobalKey<FormState>();
  TextEditingController namController = TextEditingController();
  initialize(){}

  void createData()async{
    await ecommerceDatabase.database;
    emit(AuthenticationCreateDatabase());
  }

  void emitInsert()async{
    emit(AuthenticationLoading());
    try {
      await ecommerceDatabase.insertNameAuthentication(namController.text);
      emit(AuthenticationInsertName());
    } catch(e){
      emit(AuthenticationFailed(error: "Failed to insert name : $e"));
    }
  }


}
