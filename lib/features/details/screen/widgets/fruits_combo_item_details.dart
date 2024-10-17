import 'package:flutter/material.dart';
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
        Center(
          child: Image.asset(
            'assets/images/combo_image_1.png' ,
            width: 176,
            height: 176,
          ),
        ),
        const SizedBox(
          height:32,
        ),
        Container(
          width: double.infinity,
          decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(20),
              topLeft: Radius.circular(20),
            ),
          ),
          child:  Padding(
            padding: const EdgeInsets.symmetric(
                horizontal: 24,
                vertical: 16
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 24,
                ),
                const Text(
                  'Quinoa Fruit Salad',
                  style: AppTextStyles.font32NavyBlueMedium,
                ),
                const SizedBox(
                  height: 33,
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
                        const SizedBox(
                          width: 24,
                        ),
                        const Text(
                          '1' ,
                          style: AppTextStyles.font24NavyBlueMedium,
                        ),
                        const SizedBox(
                          width: 24,
                        ),
                        Container(
                          width: 32,
                          height: 32,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50),
                              color: ColorManager.oldLace
                          ),
                          child: const Center(
                            child: Icon(
                              Icons.add  ,
                              size: 20,
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
                          width: 20,
                          height: 16,
                        ),
                        const Text(
                          ' 2000',
                          style: AppTextStyles.font24NavyBlueMedium,
                        ),
                      ],
                    ),
                  ],
                ),
                const SizedBox(
                  height: 32,
                ),
                Container(
                  height: 1,
                  width: double.infinity,
                  color: ColorManager.antiFlashWhite,
                ),
                const SizedBox(
                  height: 32,
                ),
                SizedBox(
                  width: 180,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'One Pack Contains:' ,
                        style: AppTextStyles.font20NavyBlueMedium,
                      ),
                      Container(
                        width: double.infinity,
                        height: 2,
                        color: ColorManager.mainOrange,
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 18,
                ),
                const Text(
                  'Red Quinoa, Lime, Honey, Blueberries, Strawberries, Mango, Fresh mint.',
                  style: AppTextStyles.font16NavyBlueMedium,
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  height: 1,
                  width: double.infinity,
                  color: ColorManager.antiFlashWhite,
                ),
                const SizedBox(
                  height: 24,
                ),
                const Text(
                  'If you are looking for a new fruit salad to eat today, quinoa is the perfect brunch for you make',
                  style: AppTextStyles.font14NavyBlueRegular,
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    Container(
                      width: 48,
                      height: 48,
                      decoration: BoxDecoration(
                        color: ColorManager.oldLace,
                        borderRadius: BorderRadius.circular(50),
                      ),
                      child: const Icon(
                        Icons.favorite_border_outlined,
                        color: ColorManager.mainOrange,
                        size: 24,

                      ),
                    ),
                    const SizedBox(
                      width: 60,
                    ),
                    CustomElevatedButton(
                      onPressed: (){} ,
                      textButton: 'Add to basket',
                      radius: 10,
                      styleTextButton: AppTextStyles.font16WhiteMedium,
                      backgroundColor: ColorManager.mainOrange,
                      paddingButton: const EdgeInsets.symmetric(
                          horizontal: 58 ,
                          vertical: 14
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
