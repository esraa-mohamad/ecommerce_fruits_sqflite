import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../core/theme/app_text_styles.dart';
import '../../../../core/theme/color_manager.dart';

class HomeTobBar extends StatelessWidget {
  const HomeTobBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        SvgPicture.asset(
          'assets/svg/home_menue.svg',
          width: 22.w,
          height: 11.h,
        ),
        Column(
          children: [
            Icon(
              Icons.shopping_basket_outlined,
              color: ColorManager.mainOrange,
              size: 24.sp,
            ),
            Text(
              'My Basket',
              style: AppTextStyles.font10NavyBlueRegular,
            )
          ],
        ),
      ],
    );
  }
}
