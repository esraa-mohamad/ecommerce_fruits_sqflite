import 'package:ecommerce_fruits/core/models/basket_order_model/basket_order_model.dart';
import 'package:ecommerce_fruits/features/my_basket/screen/widgets/my_basket_fruit_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MyBasketFruitListView extends StatelessWidget {
  const MyBasketFruitListView({super.key, required this.basketOrderModel});

  final List<BasketOrderModel> basketOrderModel;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: basketOrderModel.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: EdgeInsets.only(bottom: 32.h),
            child: MyBasketFruitItem(
              basketOrderModel: basketOrderModel[index],
            ),
          );
        });
  }
}
