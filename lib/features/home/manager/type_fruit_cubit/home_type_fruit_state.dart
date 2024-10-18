 import 'package:ecommerce_fruits/core/models/fruits_combo_model/fruit_combo_model.dart';

class HomeTypeFruitState {}

 class HomeTypeFruitInitial extends HomeTypeFruitState {}
 class HomeTypeFruitLoading extends HomeTypeFruitState {}
 class HomeTypeFruitSuccess extends HomeTypeFruitState {
  final List<FruitComboModel> fruitsModel ;

  HomeTypeFruitSuccess({required this.fruitsModel});
 }
 class HomeTypeFruitFailed extends HomeTypeFruitState {
  final String error ;

  HomeTypeFruitFailed({required this.error});
 }
