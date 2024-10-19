import 'package:ecommerce_fruits/core/theme/app_text_styles.dart';
import 'package:ecommerce_fruits/core/theme/color_manager.dart';
import 'package:ecommerce_fruits/core/widgets/go_back_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/routes/routes.dart';

class BasketTopBar extends StatelessWidget {
  const BasketTopBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 24.w ,
        vertical: 50.h,
      ),
        color: ColorManager.mainOrange,
        child:  Row(
          children: [
             GoBackButton(
              onTap: (){
                Navigator.of(context).pushReplacementNamed(Routes.homeEcommerceScreen);
              },
            ),
            SizedBox(
              width: 34.w,
            ),
            Text(
                'My Basket',
              style: AppTextStyles.font24WhiteMedium,
            ),
          ],
        )
    );
  }
}
