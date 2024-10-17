import 'package:ecommerce_fruits/core/models/fruits_combo_model/fruit_combo_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../core/theme/app_text_styles.dart';
import '../../../../core/theme/color_manager.dart';

class FruitsComboItems extends StatelessWidget {
  const FruitsComboItems({super.key, required this.fruitComboModel});

  final FruitComboModel fruitComboModel;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 180,
      padding:  const EdgeInsets.symmetric(
        horizontal: 16,
      ),
      decoration: BoxDecoration(
          color: fruitComboModel.color,
          borderRadius: BorderRadius.circular(20),
         ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.favorite_border_outlined,
                  size: 20,
                  color: ColorManager.mainOrange,
                ),
              ),
            ],
          ),
          Image.asset(
            fruitComboModel.imagePath,
            width: 80,
            height: 80,
          ),
          const SizedBox(
            height: 8,
          ),
           Text(
            fruitComboModel.fruitName,
            textAlign: TextAlign.center,
            style: AppTextStyles.font16NavyBlueMedium,
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  // Icon(CupertinoIcons.money_yen ,
                  // size: 14,color: ColorManager.mainOrange,),
                  SvgPicture.asset(
                    'assets/svg/money_icon.svg',
                    width: 14,
                    height: 14,
                  ),
                   Text(
                    ' ${fruitComboModel.price}',
                    textAlign: TextAlign.center,
                    style: AppTextStyles.font14OrangeRegular,
                  ),
                ],
              ),
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(24),
                    color: ColorManager.oldLace),
                child: const Icon(
                  Icons.add,
                  size: 24,
                  color: ColorManager.mainOrange,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
