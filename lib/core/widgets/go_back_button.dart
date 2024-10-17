import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../theme/app_text_styles.dart';
import '../theme/color_manager.dart';

class GoBackButton extends StatelessWidget {
  const GoBackButton({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Navigator.of(context).pop();
      },
      child: Container(
        width: 100.w,
        padding:  EdgeInsets.symmetric(horizontal: 8.w, vertical: 5.h),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(100),
        ),
        child:  Row(
          children: [
             Icon(
              Icons.arrow_back_ios_new,
              color: ColorManager.navyBlue,
              size: 20.sp,
            ),
            Text(
              'Go Back' ,
              style: AppTextStyles.font16NavyBlueRegular,
            ),
          ],
        ),
      ),
    );
  }
}
