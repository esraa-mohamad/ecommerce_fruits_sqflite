import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../core/helper/constants/constants.dart';
import '../../../../core/helper/local_database/ecommerce_database.dart';
import '../../../../core/models/fruits_combo_model/fruit_combo_model.dart';
import 'home_all_fruit_state.dart';

class HomeAllFruitCubit extends Cubit<HomeAllFruitState> {
  HomeAllFruitCubit() : super(HomeAllFruitInitial());

  EcommerceDatabase ecommerceDatabase = EcommerceDatabase.instance;

  // text editing controller for search
  TextEditingController nameController =TextEditingController();

  // initialize all function
  // void _initialize()async {
  //   await createDB();
  //   await getUserName();
  //   await insertFruitsData();
  //   await getAllFruitsData();
  // }


  /*
  * This is my story to build home cubit to create data , insert in fruits , get name , get all fruits data , using type and search
  * all this comments "some code was deleted" all is my try to solve conflicting to show data
  * I don't know what is the number of this attempt? , but I still trying
  * using initialization to call in constructor , or using concatenation operator (HomeCubit()..create()) , trying to show all data
  * but It still show name or all data  or get using type or search , and it does not show them all 😡
  * I  try to be cool with this code , but it still to make me get out of my control 🤬
  * - Now , It is new try after make get name authentication and all data in same function "I know it crazy idea" ,
  * but I don't care 😎 , let's try .
  * * *The attempt failed. 💔
  * - Try again by make all insert and 2 get in same function "More crazier and funny idea 😈"
  * * * The funny attempt failed. 😂💔
  * - Try again , but now with new cubit to every part 🫣😲
  * * * Woohoo! , It is worked with 2 cubit name from authentication and gat all data 💃
  * - But there is conflict  between get all data & search when show recommended data and data show using type ,
  * so what should I do ? , Sureeeee , separate to another cubit 🤭
  * * * After many attempts not to separate to more cubit , but finally it work with multi cubit
  * with multi bloc provider 💃
  * -- This may be wrong , but it work 🫣
  * * * * * * * * * * * * *  Do I look like I care?  * * * * * * * * * * * *
  * * * * * * * * * * * * *     I don't care 😎🤭    * * * * * * * * * * * *
  * */




  // instance from ecommerce data is enough
  // Future<void> createDB() async{
  //   await ecommerceDatabase.database;
  //   emit(HomeCreateDatabase());
  // }

  // get name from authentication
  // Future<void> getUserName()async{
  //   emit(HomeLoadingName());
  //   try {
  //     String name =await ecommerceDatabase.getLastAuthenticationName();
  //     emit(HomeGetUserNameSuccess(name: name));
  //     log("Name cubit : $name");
  //   } catch (error) {
  //     emit(HomeGetUserNameFailed(error: "No name : $error"));
  //     log(error.toString());
  //   }
  // }

  //insert all fruits
  Future<void> insertFruitsData()async{
    try {
      // await ecommerceDatabase.deleteAllData();
      List<FruitComboModel> data = await ecommerceDatabase.getFruitsData();
      if(data.isNotEmpty){
        emit(HomeGetAllFruitsCombo(fruitsCombo: data));
      }else{
        for(var fruit in Constants.fruitsData){
          await ecommerceDatabase.insertInFruitsTable(fruit);
        }
        emit(HomeInsertFruitsCombo());
        await getAllFruitsData();
      }
    } catch (error) {
      emit(HomeFruitsComboError(error: "Failed to insert $error"));
    }
  }


  // get all data
  Future<void> getAllFruitsData()async{
    emit(HomeLoadingGetAllData());
    try{
      List<FruitComboModel> fruitsCombo = await ecommerceDatabase.getFruitsData();
      emit(HomeGetAllFruitsCombo(fruitsCombo: fruitsCombo));
    }catch(error){
      emit(HomeFruitsComboError(error: "Failed to get data $error"));
    }
  }

  // search data using name
  Future<void> searchFruits()async{
    emit(HomeLoadingGetAllData());
    try{
      List<FruitComboModel> fruitsCombo = await ecommerceDatabase.getSearchFruits(nameController.text);
      emit(HomeSearchFruitsComboUsingName(fruitsCombo: fruitsCombo));
    }catch(error){
      emit(HomeFruitsComboError(error: "Failed to search data $error"));
    }
  }

  // get data using type
  // Future<void> getFruitsDataUsingType(String type)async{
  //   emit(HomeLoadingGetDataUsingType());
  //   try{
  //     List<FruitComboModel> fruitsCombo = await ecommerceDatabase.getFruitsUsingType(type);
  //     emit(HomeGetFruitsComboUsingType(fruitsCombo: fruitsCombo));
  //   }catch(error){
  //     emit(HomeFruitsComboError(error: "Failed to get data $error"));
  //   }
  // }


  // crazy idea
  // Future<void> getAllFruitsData()async{
  //   emit(HomeLoadingGetAllData());
  //   try{
  //     List<FruitComboModel> fruitsCombo = await ecommerceDatabase.getFruitsData();
  //     String name = await ecommerceDatabase.getLastAuthenticationName();
  //     emit(HomeGetAllFruitsCombo(fruitsCombo: fruitsCombo));
  //     emit(HomeGetUserNameSuccess(name: name));
  //   }catch(error){
  //     emit(HomeFruitsComboError(error: "Failed to get data $error"));
  //     emit(HomeGetUserNameFailed(error: "No name : $error"));
  //   }
  // }

  // more crazier and funny idea
  // Future<void> emitStateInsertAndGetAllData()async{
  //   emit(HomeLoadingGetAllData());
  //   try{
  //     String name = await ecommerceDatabase.getLastAuthenticationName();
  //     emit(HomeGetUserNameSuccess(name: name));
  //     List<FruitComboModel> fruitsCombo = await ecommerceDatabase.getFruitsData();
  //     if(fruitsCombo.isEmpty){
  //       for(var fruit in Constants.fruitsData){
  //         await ecommerceDatabase.insertInFruitsTable(fruit);
  //       }
  //       emit(HomeInsertFruitsCombo());
  //     }
  //     emit(HomeGetAllFruitsCombo(fruitsCombo: fruitsCombo));
  //   }catch(error){
  //     emit(HomeGetUserNameFailed(error: "No name : $error"));
  //     emit(HomeFruitsComboError(error: "Failed to insert $error"));
  //     emit(HomeFruitsComboError(error: "Failed to get data $error"));
  //   }
  // }



}
