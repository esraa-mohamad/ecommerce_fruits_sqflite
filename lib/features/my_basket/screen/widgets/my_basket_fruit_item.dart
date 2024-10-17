import 'package:ecommerce_fruits/core/theme/app_text_styles.dart';
import 'package:ecommerce_fruits/core/theme/color_manager.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MyBasketFruitItem extends StatelessWidget {
  const MyBasketFruitItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          padding: EdgeInsets.symmetric(horizontal: 10.5.w, vertical: 10.5.h),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            color: ColorManager.lumber,
          ),
          child: Center(
            child: Image.asset(
              'assets/images/combo_image_3.png',
              width: 40.w,
              height: 40.h,
            ),
          ),
        ),
        const SizedBox(
          width: 16,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Quinoa fruit salad',
              style: AppTextStyles.font16BlackMedium,
            ),
            SizedBox(
              height: 4.h,
            ),
            Text(
              '2 packs',
              style: AppTextStyles.font14BlackRegular,
            )
          ],
        ),
        const Spacer(),
        Row(
          children: [
            SvgPicture.asset(
              'assets/svg/money_icon_black.svg',
              width: 16.w,
              height: 12.5.h,
            ),
            Text(' 2000' , style: AppTextStyles.font16NavyBlueMedium,),
          ],
        ),
      ],
    );
  }
}
