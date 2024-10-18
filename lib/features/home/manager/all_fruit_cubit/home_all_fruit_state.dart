
import 'package:ecommerce_fruits/core/models/fruits_combo_model/fruit_combo_model.dart';

class HomeAllFruitState {}

class HomeAllFruitInitial extends HomeAllFruitState {}

// class HomeCreateDatabase extends HomeState {}
//class HomeLoadingName extends HomeState {}
// class HomeGetUserNameSuccess extends HomeState {
//   final String name ;
//
//   HomeGetUserNameSuccess({required this.name});
// }
// class HomeGetUserNameFailed extends HomeState {
//   final String error ;
//
//   HomeGetUserNameFailed({required this.error});
// }

class HomeInsertFruitsCombo extends HomeAllFruitState {}
class HomeLoadingGetAllData extends HomeAllFruitState {}
class HomeGetAllFruitsCombo extends HomeAllFruitState {
  final List<FruitComboModel> fruitsCombo;

  HomeGetAllFruitsCombo({required this.fruitsCombo});
}
class HomeSearchFruitsComboUsingName extends HomeAllFruitState {
  final List<FruitComboModel> fruitsCombo;

  HomeSearchFruitsComboUsingName({required this.fruitsCombo});
}
class HomeFruitsComboError extends HomeAllFruitState {
  final String error;

  HomeFruitsComboError({required this.error});
}

// class HomeLoadingGetDataUsingType extends HomeAllFruitState {}
// class HomeGetFruitsComboUsingType extends HomeAllFruitState {
//   final List<FruitComboModel> fruitsCombo;
//
//   HomeGetFruitsComboUsingType({required this.fruitsCombo});
// }

