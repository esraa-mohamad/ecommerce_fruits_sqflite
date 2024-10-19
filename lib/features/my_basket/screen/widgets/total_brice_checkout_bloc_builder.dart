import 'package:ecommerce_fruits/features/my_basket/manager/my_basket_cubit.dart';
import 'package:ecommerce_fruits/features/my_basket/manager/my_basket_state.dart';
import 'package:ecommerce_fruits/features/my_basket/screen/widgets/total_price_checkout.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class TotalBriceCheckoutBlocBuilder extends StatelessWidget {
  const TotalBriceCheckoutBlocBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MyBasketCubit , MyBasketState>(
        builder: (context , state ){
          if (state is MyBasketGetBasketOrdersSuccess) {
            return TotalPriceCheckout(totalPrice: state.totalOrderPrice);
          }else{
            return const TotalPriceCheckout(totalPrice: 0);
          }
        }
    );
  }
}
