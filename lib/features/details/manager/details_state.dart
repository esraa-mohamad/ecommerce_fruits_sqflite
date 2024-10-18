import '../../../core/models/fruits_combo_model/fruit_combo_model.dart';

class DetailsState {}

class DetailsInitial extends DetailsState {}
class DetailsLoading extends DetailsState {}
class DetailsDataSuccess extends DetailsState {
  final FruitComboModel fruitComboModel;
  final int numOfOrder;

  DetailsDataSuccess({required this.fruitComboModel ,required this.numOfOrder, });
}
class DetailsDataFailure extends DetailsState {
  final String error ;

  DetailsDataFailure({required this.error});
}


