import 'package:ecommerce_fruits/features/my_basket/screen/widgets/total_price_checkout.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'basket_top_bar.dart';
import 'my_basket_fruit_list_view.dart';

class MyBasketBody extends StatelessWidget {
  const MyBasketBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const BasketTopBar(),
        Expanded(
          flex: 3,
          child: Padding(
            padding: EdgeInsets.only(left: 24.w, right: 24.r, top: 40.h,),
            child: const MyBasketFruitListView(),
          ),
        ),
        Expanded(
          child: Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 24.w,
              vertical: 50.h
            ),
            child: const TotalPriceCheckout(),
          ),
        )
      ],
    );
  }
}
