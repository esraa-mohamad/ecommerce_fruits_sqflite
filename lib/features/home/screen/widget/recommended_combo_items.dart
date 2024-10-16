import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../core/theme/app_text_styles.dart';
import '../../../../core/theme/color_manager.dart';
class RecommendedComboItems extends StatelessWidget {
  const RecommendedComboItems({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 152,
      padding: const EdgeInsets.symmetric(
        horizontal: 16,
        vertical: 5,
      ),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
          boxShadow: const [
            BoxShadow(
                color: ColorManager.grayX,
                blurRadius: 150
            ),
          ]),
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
            'assets/images/compo_image.png',
            width: 80,
            height: 80,
          ),
          const SizedBox(
            height: 8,
          ),
          const Text(
            'Honey lime combo',
            textAlign: TextAlign.center,
            style: AppTextStyles.font16NavyBlueMedium,
          ),
          const SizedBox(
            height: 10,
          ),
           Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Row(
                children: [
                  Icon(CupertinoIcons.money_yen ,
                  size: 14,color: ColorManager.mainOrange,),
                  Text(
                    '2,000',
                    textAlign: TextAlign.center,
                    style: AppTextStyles.font14OrangeRegular,
                  ),
                ],
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(24),
                  color: ColorManager.oldLace
                ),
                child:const Icon(Icons.add ,size: 24,color: ColorManager.mainOrange,),
              ),
            ],
          )
        ],
      ),
    );
  }
}
