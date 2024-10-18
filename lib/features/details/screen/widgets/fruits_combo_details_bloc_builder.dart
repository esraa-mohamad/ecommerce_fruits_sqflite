import 'package:ecommerce_fruits/core/theme/color_manager.dart';
import 'package:ecommerce_fruits/features/details/manager/details_cubit.dart';
import 'package:ecommerce_fruits/features/details/manager/details_state.dart';
import 'package:ecommerce_fruits/features/details/screen/widgets/fruits_combo_item_details.dart';
import 'package:ecommerce_fruits/features/details/screen/widgets/get_error_message.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FruitsComboDetailsBlocBuilder extends StatelessWidget {
  const FruitsComboDetailsBlocBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<DetailsCubit, DetailsState>(builder: (context, state) {
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
        return getError('Error to get data');
      }
    });
  }

  Widget getDetailsData({required fruitComboModel,required numOfOrder}) {
    return FruitsComboItemDetails(
      fruitComboModel: fruitComboModel,
      numOfOrder: numOfOrder,
    );
  }
}
