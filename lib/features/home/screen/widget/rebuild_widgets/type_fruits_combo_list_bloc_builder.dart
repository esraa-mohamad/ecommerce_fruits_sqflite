import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/theme/app_text_styles.dart';
import '../../../manager/home_cubit.dart';
import '../../../manager/home_state.dart';
import '../loading/fruit_items_loading_list_view.dart';
import '../types_fruits_combo_list_view.dart';

class TypeFruitsComboListBlocBuilder extends StatelessWidget {
  const TypeFruitsComboListBlocBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCubit , HomeState>(
        builder: (context , state){
          if(state is HomeLoadingGetDataUsingType){
            return const FruitItemsLoadingListView();
          }
          else if(state is HomeGetFruitsComboUsingType){
            return getFruitsList(state.fruitsCombo);
          }
          else if(state is HomeFruitsComboError){
            return getError(state.error);
          }else{
            return getError('Something Error');
          }

        }
    );
  }

  Widget getFruitsList(fruitsModel){
    return TypesFruitsComboListView(fruitsModel: fruitsModel);
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
