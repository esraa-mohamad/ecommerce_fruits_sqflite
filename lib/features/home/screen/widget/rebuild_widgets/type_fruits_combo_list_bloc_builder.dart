import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../manager/type_fruit_cubit/home_type_fruit_cubit.dart';
import '../../../manager/type_fruit_cubit/home_type_fruit_state.dart';
import '../fruits_items/fruits_combo_items_list_view.dart';
import '../../../../../core/widgets/get_error_message.dart';
import '../loading/fruit_items_loading_list_view.dart';

class TypeFruitsComboListBlocBuilder extends StatelessWidget {
  const TypeFruitsComboListBlocBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeTypeFruitCubit , HomeTypeFruitState>(
        builder: (context , state){
          if(state is HomeTypeFruitLoading){
            return const FruitItemsLoadingListView();
          }
          else if(state is HomeTypeFruitSuccess){
            return getFruitsList(state.fruitsModel);
          }
          else if(state is HomeTypeFruitFailed){
            return getError(state.error);
          }else{
            return getError('Something Error');
          }

        }
    );
  }

  Widget getFruitsList(fruitsModel){
    return FruitsComboItemsListView(fruitsModel: fruitsModel);
  }



}
