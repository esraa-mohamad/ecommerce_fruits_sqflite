import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/theme/app_text_styles.dart';
import '../../../../core/theme/color_manager.dart';
import '../../../../core/widgets/button/custom_elevated_button.dart';

class DetailsAddToBasket extends StatefulWidget {
  const DetailsAddToBasket({super.key, required this.onPressed, this.backgroundColor});

   final void Function() onPressed;
   final Color? backgroundColor;

  @override
  State<DetailsAddToBasket> createState() => _DetailsAddToBasketState();
}

class _DetailsAddToBasketState extends State<DetailsAddToBasket> {
  bool isFav = false;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 48.w,
          height: 48.h,
          decoration: BoxDecoration(
            color: ColorManager.oldLace,
            borderRadius: BorderRadius.circular(50),
          ),
          child:  IconButton(
            onPressed: (){
              setState(() {
                isFav = !isFav;
              });
            },
            icon: Icon(
              isFav ? Icons.favorite:
              Icons.favorite_border_outlined,
            color: ColorManager.mainOrange,
            size: 24.sp,

          ),
          ),
        ),
        SizedBox(
          width: 60.w,
        ),
        CustomElevatedButton(
          onPressed: widget.onPressed ,
          textButton: 'Add to basket',
          radius: 10,
          styleTextButton: AppTextStyles.font16WhiteMedium,
          backgroundColor: widget.backgroundColor ?? ColorManager.mainOrange,
          paddingButton:  EdgeInsets.symmetric(
              horizontal: 50.w ,
              vertical: 14.h
          ),
        ),
      ],
    );
  }
}
