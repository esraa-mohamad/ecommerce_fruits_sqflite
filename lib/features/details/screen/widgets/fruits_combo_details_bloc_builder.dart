import 'package:ecommerce_fruits/core/functions/error_dialog.dart';
import 'package:ecommerce_fruits/core/functions/loading_dialog.dart';
import 'package:ecommerce_fruits/core/theme/color_manager.dart';
import 'package:ecommerce_fruits/features/details/manager/details_cubit.dart';
import 'package:ecommerce_fruits/features/details/manager/details_state.dart';
import 'package:ecommerce_fruits/features/details/screen/widgets/fruits_combo_item_details.dart';
import 'package:ecommerce_fruits/features/details/screen/widgets/get_error_message.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/routes/routes.dart';

class FruitsComboDetailsBlocBuilder extends StatelessWidget {
  const FruitsComboDetailsBlocBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<DetailsCubit, DetailsState>(
        builder: (context, state) {
      if (state is DetailsLoading) {
        return const CircularProgressIndicator(
          color: ColorManager.mainOrange,
        );
      } else if (state is DetailsDataSuccess) {
        return getDetailsData(
            fruitComboModel: state.fruitComboModel,
            numOfOrder: state.numOfOrder);
      } else if (state is DetailsDataFailure) {
        return getError(state.error);
      } else {
        return const SizedBox.shrink();
      }
    },
      listener: (context , state){
          if(state is DetailsInsertBasketOrderSuccessLoading){
            loadingDialog(context);
          }else if(state is DetailsInsertBasketOrderSuccess){
            Navigator.of(context).pop();
            Navigator.of(context).pushNamed(Routes.myBasketScreen);
          }else if(state is DetailsInsertBasketOrderFailed){
            Navigator.of(context).pop();
            errorDialog(context, state.error);
          }
      },
    );
  }

  Widget getDetailsData({required fruitComboModel,required numOfOrder}) {
    return FruitsComboItemDetails(
      fruitComboModel: fruitComboModel,
      numOfOrder: numOfOrder,
    );
  }
}
