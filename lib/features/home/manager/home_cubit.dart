
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../core/helper/constants/constants.dart';
import '../../../core/helper/local_database/ecommerce_database.dart';
import '../../../core/models/fruits_combo_model/fruit_combo_model.dart';
import 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit() : super(HomeInitial()) {
    //_initialize();
  }

  // void _initialize() {
  //  createDB();
  //  getUserName();
  //   _insertFruitsData();
  //   getAllFruitsData();
  // }

  EcommerceDatabase ecommerceDatabase = EcommerceDatabase.instance;
  // text editing controller for search
  TextEditingController nameController =TextEditingController();

  void createDB() async{
    await ecommerceDatabase.database;
    emit(HomeCreateDatabase());
  }

  // get name from authentication
  void getUserName()async{
    emit(HomeLoadingName());
    try {
      String name =await ecommerceDatabase.getLastAuthenticationName();
      emit(HomeGetUserNameSuccess(name: name));
    } catch (error) {
      emit(HomeGetUserNameFailed(error: "No name : $error"));
    }
  }

  // insert all fruits
  void insertFruitsData()async{
    try {
      //await ecommerceDatabase.deleteAllData();
      List<FruitComboModel> data = await ecommerceDatabase.getFruitsData();
      if(data.isNotEmpty){
        emit(HomeGetAllFruitsCombo(fruitsCombo: data));
      }else{
        for(var fruit in Constants.fruitsData){
          await ecommerceDatabase.insertInFruitsTable(fruit);
        }
        emit(HomeInsertFruitsCombo());
        getAllFruitsData();
      }
    } catch (error) {
      emit(HomeFruitsComboError(error: "Failed to insert $error"));
    }
  }

  // get all data
  void getAllFruitsData()async{
    emit(HomeLoadingGetAllData());
    try{
      List<FruitComboModel> fruitsCombo = await ecommerceDatabase.getFruitsData();
      emit(HomeGetAllFruitsCombo(fruitsCombo: fruitsCombo));
    }catch(error){
      emit(HomeFruitsComboError(error: "Failed to get data $error"));
    }
  }

  // get data using type
  void getFruitsDataUsingType(String type)async{
    emit(HomeLoadingGetDataUsingType());
    try{
      List<FruitComboModel> fruitsCombo = await ecommerceDatabase.getFruitsUsingType(type);
      emit(HomeGetFruitsComboUsingType(fruitsCombo: fruitsCombo));
    }catch(error){
      emit(HomeFruitsComboError(error: "Failed to get data $error"));
    }
  }

  // search data using name
  void searchFruits()async{
    emit(HomeLoadingGetAllData());
    try{
      List<FruitComboModel> fruitsCombo = await ecommerceDatabase.getSearchFruits(nameController.text);
      emit(HomeSearchFruitsComboUsingName(fruitsCombo: fruitsCombo));
    }catch(error){
      emit(HomeFruitsComboError(error: "Failed to search data $error"));
    }
  }
}
