import 'package:ecommerce_fruits/core/models/fruits_combo_model/fruit_combo_model.dart';
import 'package:ecommerce_fruits/core/routes/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../../core/theme/app_text_styles.dart';
import '../../../../../core/theme/color_manager.dart';

class FruitsComboItems extends StatelessWidget {
  const FruitsComboItems({super.key, required this.fruitComboModel});

  final FruitComboModel fruitComboModel;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Navigator.of(context).pushNamed(Routes.detailsScreen , arguments: fruitComboModel.id);
      },
      child: Container(
        width: 180.w,
        padding:   EdgeInsets.symmetric(
          horizontal: 16.w,
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
                  icon:  Icon(
                    Icons.favorite_border_outlined,
                    size: 20.sp,
                    color: ColorManager.mainOrange,
                  ),
                ),
              ],
            ),
            Image.asset(
              fruitComboModel.imagePath,
              width: 80.w,
              height: 80.h,
            ),
             SizedBox(
              height: 8.h,
            ),
             Text(
              fruitComboModel.fruitName,
              textAlign: TextAlign.center,
              style: AppTextStyles.font16NavyBlueMedium,
            ),
             const Spacer(),
            Padding(
              padding:  EdgeInsets.only(bottom: 20.h),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      SvgPicture.asset(
                        'assets/svg/money_icon.svg',
                        width: 14.w,
                        height: 14.h,
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
                    child:  Icon(
                      Icons.add,
                      size: 24.sp,
                      color: ColorManager.mainOrange,
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
