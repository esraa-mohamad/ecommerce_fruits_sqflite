
import 'package:ecommerce_fruits/core/models/fruits_combo_model/fruit_combo_model.dart';

class HomeState {}

class HomeInitial extends HomeState {}
class HomeLoadingName extends HomeState {}
class HomeLoadingGetAllData extends HomeState {}
class HomeLoadingGetDataUsingType extends HomeState {}
class HomeCreateDatabase extends HomeState {}
class HomeGetUserNameSuccess extends HomeState {
  final String name ;

  HomeGetUserNameSuccess({required this.name});
}
class HomeGetUserNameFailed extends HomeState {
  final String error ;

  HomeGetUserNameFailed({required this.error});
}
class HomeInsertFruitsCombo extends HomeState {}
class HomeGetAllFruitsCombo extends HomeState {
  final List<FruitComboModel> fruitsCombo;

  HomeGetAllFruitsCombo({required this.fruitsCombo});
}
class HomeGetFruitsComboUsingType extends HomeState {
  final List<FruitComboModel> fruitsCombo;

  HomeGetFruitsComboUsingType({required this.fruitsCombo});
}
class HomeSearchFruitsComboUsingName extends HomeState {
  final List<FruitComboModel> fruitsCombo;

  HomeSearchFruitsComboUsingName({required this.fruitsCombo});
}
class HomeFruitsComboError extends HomeState {
  final String error;

  HomeFruitsComboError({required this.error});
}
