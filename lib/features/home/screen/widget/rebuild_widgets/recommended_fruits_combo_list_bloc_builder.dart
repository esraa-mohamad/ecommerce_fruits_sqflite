
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/theme/app_text_styles.dart';
import '../../../manager/home_cubit.dart';
import '../../../manager/home_state.dart';
import '../fruits_combo_items_list_view.dart';
import '../loading/fruit_items_loading_list_view.dart';

class RecommendedFruitsCombListBlocBuilder extends StatelessWidget {
  const RecommendedFruitsCombListBlocBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCubit , HomeState>(
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

  Widget getError(String error){
    return Center(
      child: Container(
        padding: const EdgeInsets.symmetric(
          horizontal: 18 ,
          vertical: 12 ,
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Colors.red ,
        ),
        child: Center(
          child: Text(error  , style: AppTextStyles.font16WhiteMedium,),
        ),
      ),
    );
  }
}
