

import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/helper/local_database/ecommerce_database.dart';
import '../../../../core/models/fruits_combo_model/fruit_combo_model.dart';
import 'home_type_fruit_state.dart';

class HomeTypeFruitCubit extends Cubit<HomeTypeFruitState> {
  HomeTypeFruitCubit() : super(HomeTypeFruitInitial());

  EcommerceDatabase ecommerceDatabase = EcommerceDatabase.instance;

  // get data using type
  Future<void> getFruitsDataUsingType(String type)async{
    emit(HomeTypeFruitLoading());
    try{
      List<FruitComboModel> fruitsCombo = await ecommerceDatabase.getFruitsUsingType(type);
      emit(HomeTypeFruitSuccess(fruitsModel: fruitsCombo));
    }catch(error){
      emit(HomeTypeFruitFailed(error: "Failed to get data $error"));
    }
  }


}
