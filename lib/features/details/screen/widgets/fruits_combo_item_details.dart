
import 'package:ecommerce_fruits/core/models/fruits_combo_model/fruit_combo_model.dart';
import 'package:ecommerce_fruits/features/details/screen/widgets/text_recommendation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/theme/app_text_styles.dart';
import 'combo_description.dart';
import 'count_and_price.dart';
import 'details_add_to_basket.dart';
import 'gray_divider.dart';

class FruitsComboItemDetails extends StatelessWidget {
  const FruitsComboItemDetails({super.key, required this.fruitComboModel, required this.numOfOrder});

  final FruitComboModel fruitComboModel ;
  final int numOfOrder;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: Center(
            child: Image.asset(
              fruitComboModel.imagePath ,
              width: 176.w,
              height: 176.h,
            ),
          ),
        ),
        SizedBox(
          height:32.h,
        ),
        Expanded(
          flex: 3,
          child: Container(
            width: double.infinity,
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(20),
                topLeft: Radius.circular(20),
              ),
            ),
            child:  Padding(
              padding:  EdgeInsets.symmetric(
                  horizontal: 24.w,
                  vertical: 16.h
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  SizedBox(
                    height: 24.h,
                  ),
                  Text(
                    fruitComboModel.fruitName,
                    style: AppTextStyles.font32NavyBlueMedium,
                  ),
                  SizedBox(
                    height: 33.h,
                  ),
                   CountAndPrice(
                    price: fruitComboModel.price, numOfOrder: numOfOrder,
                  ),
                  SizedBox(
                    height: 32.h,
                  ),
                  const GrayDivider(),
                  SizedBox(
                    height: 32.h,
                  ),
                   ComboDescription(
                     description: fruitComboModel.description,
                   ),
                  SizedBox(
                    height: 20.h,
                  ),
                  const GrayDivider(),
                  SizedBox(
                    height: 24.h,
                  ),
                  const TextRecommendation(),
                  const Spacer(),
                  const DetailsAddToBasket()
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
