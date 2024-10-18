import 'package:ecommerce_fruits/core/theme/color_manager.dart';
import 'package:ecommerce_fruits/features/home/manager/home_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/theme/app_text_styles.dart';

class TypeTabBar extends StatelessWidget {
   TypeTabBar({super.key});
  final List titles = ['Hottest', 'Popular', 'New Combo', 'Top'];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: titles.length,
      child: TabBar(
        onTap: (index){
          context.read<HomeCubit>().getFruitsDataUsingType(titles[index]);
        },
        dividerHeight: 0.h,
          isScrollable: true,
          unselectedLabelStyle: AppTextStyles.font16CoolGreyMedium,
          labelStyle: AppTextStyles.font20NavyBlueMedium,
          indicator: UnderlineTabIndicator(
            borderSide: BorderSide(
              color: ColorManager.mainOrange ,
              width: 4.w
            ),
            insets: EdgeInsetsDirectional.only(end: 22.w)
          ),
          tabs: titles.map(
              (title)=>Text(title)
          ).toList()
      ),
    );
  }
}
