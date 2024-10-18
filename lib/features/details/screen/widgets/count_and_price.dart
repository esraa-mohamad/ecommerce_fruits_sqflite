import 'package:ecommerce_fruits/features/details/manager/details_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../core/theme/app_text_styles.dart';
import '../../../../core/theme/color_manager.dart';

class CountAndPrice extends StatelessWidget {
  const CountAndPrice({super.key, required this.price, required this.numOfOrder});

  final int price ;
  final int numOfOrder ;
  @override
  Widget build(BuildContext context) {
    var cubitCount = context.read<DetailsCubit>();
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            GestureDetector(
              onTap: (){
                cubitCount.decrementCount();
              },
              child: Container(
                width: 32,
                height: 32,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  border: Border.all(
                      color: ColorManager.darkCharcoal
                  ),
                ),
                child: const Align(
                  alignment: Alignment.topCenter,
                  child: Icon(
                    Icons.minimize_outlined  ,
                    size: 20,
                    color: ColorManager.darkCharcoal,
                  ),
                ),
              ),
            ),
            SizedBox(
              width: 24.w,
            ),
            Text(
              '$numOfOrder' ,
              style: AppTextStyles.font24NavyBlueMedium,
            ),
            SizedBox(
              width: 24.w,
            ),
            GestureDetector(
              onTap: (){
                cubitCount.incrementCount();
              },
              child: Container(
                width: 32.w,
                height: 32.h,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: ColorManager.oldLace
                ),
                child:  Center(
                  child: Icon(
                    Icons.add  ,
                    size: 20.sp,
                    color: ColorManager.mainOrange,
                  ),
                ),
              ),
            ),
          ],
        ),
        Row(
          children: [
            SvgPicture.asset(
              'assets/svg/money_icon_black.svg' ,
              width: 20.w,
              height: 16.h,
            ),
            Text(
              ' $price',
              style: AppTextStyles.font24NavyBlueMedium,
            ),
          ],
        ),
      ],
    );
  }
}
