import 'package:ecommerce_fruits/features/home/manager/home_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/theme/app_text_styles.dart';
import '../../../../core/theme/color_manager.dart';
import 'type_combo_item.dart';

class TypeComboListView extends StatefulWidget {
  const TypeComboListView({super.key});

  @override
  State<TypeComboListView> createState() => _TypeComboListViewState();
}

class _TypeComboListViewState extends State<TypeComboListView> {
  final List titles = ['Hottest', 'Popular', 'New Combo', 'Top'];

  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40.h,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: titles.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: EdgeInsetsDirectional.only(end: 15.r),
              child: TypeComboItem(
                title: titles[index],
                color: selectedIndex == index
                    ? ColorManager.mainOrange
                    : Colors.white,
                onTap: () {
                  context
                      .read<HomeCubit>()
                      .getFruitsDataUsingType(titles[index]);
                  setState(() {
                    selectedIndex = index;
                  });
                },
                style: selectedIndex == index
                    ? AppTextStyles.font20NavyBlueMedium
                    : AppTextStyles.font16CoolGreyMedium,
              ),
            );
          }),
    );
  }
}
