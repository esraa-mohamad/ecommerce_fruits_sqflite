
import 'package:ecommerce_fruits/core/helper/local_database/ecommerce_database.dart';
import 'package:ecommerce_fruits/core/models/fruits_combo_model/fruit_combo_model.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'details_state.dart';

class DetailsCubit extends Cubit<DetailsState> {
  DetailsCubit() : super(DetailsInitial());


  EcommerceDatabase ecommerceDatabase = EcommerceDatabase.instance;

  // number or order
  int numOfOrder = 0;

  FruitComboModel ? currentFruitComboModel;
  Future<void> getFruitsDataById(int id)async{
    emit(DetailsLoading());
    try {
      FruitComboModel fruitComboModel = await ecommerceDatabase.getFruitItemById(id);
      currentFruitComboModel = fruitComboModel;
      emit(DetailsDataSuccess(fruitComboModel: fruitComboModel , numOfOrder:numOfOrder));
    } catch (error) {
      emit(DetailsDataFailure(error: "Error to fetch data ${error.toString()}"));
    }
  }

  void incrementCount(){
    if (currentFruitComboModel != null) {
      numOfOrder ++;
      emit(DetailsDataSuccess(fruitComboModel: currentFruitComboModel!, numOfOrder: numOfOrder));
    }
  }
  void decrementCount(){
    if(numOfOrder>0 && currentFruitComboModel != null){
      numOfOrder --;
      emit(DetailsDataSuccess(fruitComboModel: currentFruitComboModel!, numOfOrder: numOfOrder));
    }
  }
}
