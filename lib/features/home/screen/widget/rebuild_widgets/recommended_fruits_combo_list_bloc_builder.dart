import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../manager/all_fruit_cubit/home_all_fruit_cubit.dart';
import '../../../manager/all_fruit_cubit/home_all_fruit_state.dart';
import '../fruits_items/fruits_combo_items_list_view.dart';
import '../get_error_message.dart';
import '../loading/fruit_items_loading_list_view.dart';

class RecommendedFruitsCombListBlocBuilder extends StatelessWidget {
  const RecommendedFruitsCombListBlocBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeAllFruitCubit , HomeAllFruitState>(
        builder: (context , state){
          if(state is HomeLoadingGetAllData){
            return const FruitItemsLoadingListView();
          }
          else if(state is HomeGetAllFruitsCombo){
            return getFruitsList(state.fruitsCombo);
          }else if(state is HomeSearchFruitsComboUsingName){
            if(state.fruitsCombo.isNotEmpty){
              return getFruitsList(state.fruitsCombo);
            }else
              {
                return getError('No data found');
              }
          }
          else if(state is HomeFruitsComboError){
            return getError(state.error);
          }else{
            return getError('Something Error');
          }

        },
    );
  }

  Widget getFruitsList(fruitsModel){
    return FruitsComboItemsListView(fruitsModel: fruitsModel);
  }

}
