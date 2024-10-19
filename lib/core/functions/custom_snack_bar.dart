import 'package:ecommerce_fruits/core/theme/color_manager.dart';
import 'package:flutter/material.dart';

import '../theme/app_text_styles.dart';

void showSnackBar({required BuildContext context , required String message , Color? backgroundColor}){
  ScaffoldMessenger.of(context).showSnackBar(
     SnackBar(
       padding: const EdgeInsets.all(12),
       elevation: 2,
       shape: RoundedRectangleBorder(
         borderRadius: BorderRadius.circular(20) ,
       ),
       backgroundColor:backgroundColor ?? ColorManager.mainOrange,
      content: Text(message ,style: AppTextStyles.font16BlackSemiBold,)
      ),
  );
}