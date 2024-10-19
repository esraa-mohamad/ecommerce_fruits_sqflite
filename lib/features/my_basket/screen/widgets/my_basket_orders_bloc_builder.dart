import 'package:ecommerce_fruits/core/functions/custom_snack_bar.dart';
import 'package:ecommerce_fruits/core/widgets/get_error_message.dart';
import 'package:ecommerce_fruits/features/my_basket/manager/my_basket_cubit.dart';
import 'package:ecommerce_fruits/features/my_basket/manager/my_basket_state.dart';
import 'package:ecommerce_fruits/features/my_basket/screen/widgets/my_basket_fruit_list_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MyBasketOrdersBlocBuilder extends StatelessWidget {
  const MyBasketOrdersBlocBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<MyBasketCubit,MyBasketState>(
        builder: (context , state){
          if(state is MyBasketGetBasketOrdersLoading){
            return const CircularProgressIndicator();
          }else if(state is MyBasketGetBasketOrdersSuccess){
            return getOrders(state.basketOrderModel);
          }else if(state is MyBasketGetBasketOrdersFailed){
            return getError(state.error);
          }else {
            return const SizedBox.shrink();
          }
        },
      listener: (context , state){
          if(state is MyBasketDeleteBasketOrdersSuccess){
            showSnackBar(context: context, message: 'Order Deleted');
          }else if(state is MyBasketDeleteBasketOrdersFailed){
            showSnackBar(context: context, message: state.error);
          }
      },
    );
  }

  Widget getOrders(basketOrderModel){
    return MyBasketFruitListView(basketOrderModel: basketOrderModel);
  }
}
