import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../core/theme/app_text_styles.dart';
import '../../../../core/theme/color_manager.dart';
import '../../../../core/widgets/button/custom_elevated_button.dart';

class FruitsComboItemDetails extends StatelessWidget {
  const FruitsComboItemDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: Center(
            child: Image.asset(
              'assets/images/combo_image_1.png' ,
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
                    'Quinoa Fruit Salad',
                    style: AppTextStyles.font32NavyBlueMedium,
                  ),
                  SizedBox(
                    height: 33.h,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Container(
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
                          SizedBox(
                            width: 24.w,
                          ),
                          Text(
                            '1' ,
                            style: AppTextStyles.font24NavyBlueMedium,
                          ),
                          SizedBox(
                            width: 24.w,
                          ),
                          Container(
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
                            ' 2000',
                            style: AppTextStyles.font24NavyBlueMedium,
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 32.h,
                  ),
                  Container(
                    height: 1.h,
                    width: double.infinity,
                    color: ColorManager.antiFlashWhite,
                  ),
                  SizedBox(
                    height: 32.h,
                  ),
                  SizedBox(
                    width: 180.w,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'One Pack Contains:' ,
                          style: AppTextStyles.font20NavyBlueMedium,
                        ),
                        Container(
                          width: double.infinity,
                          height: 2.h,
                          color: ColorManager.mainOrange,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 18.h,
                  ),
                  Text(
                    'Red Quinoa, Lime, Honey, Blueberries, Strawberries, Mango, Fresh mint.',
                    style: AppTextStyles.font16NavyBlueMedium,
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  Container(
                    height: 1.h,
                    width: double.infinity,
                    color: ColorManager.antiFlashWhite,
                  ),
                  SizedBox(
                    height: 24.h,
                  ),
                  Text(
                    'If you are looking for a new fruit salad to eat today, quinoa is the perfect brunch for you make',
                    style: AppTextStyles.font14NavyBlueRegular,
                  ),
                  const Spacer(),
                  Row(
                    children: [
                      Container(
                        width: 48.w,
                        height: 48.h,
                        decoration: BoxDecoration(
                          color: ColorManager.oldLace,
                          borderRadius: BorderRadius.circular(50),
                        ),
                        child:  Icon(
                          Icons.favorite_border_outlined,
                          color: ColorManager.mainOrange,
                          size: 24.sp,
          
                        ),
                      ),
                      SizedBox(
                        width: 60.w,
                      ),
                      CustomElevatedButton(
                        onPressed: (){} ,
                        textButton: 'Add to basket',
                        radius: 10,
                        styleTextButton: AppTextStyles.font16WhiteMedium,
                        backgroundColor: ColorManager.mainOrange,
                        paddingButton:  EdgeInsets.symmetric(
                            horizontal: 58.w ,
                            vertical: 14.h
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
