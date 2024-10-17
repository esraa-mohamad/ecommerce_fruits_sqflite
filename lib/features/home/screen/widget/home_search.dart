import 'package:ecommerce_fruits/features/home/manager/home_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../core/theme/app_text_styles.dart';
import '../../../../core/theme/color_manager.dart';
import '../../../../core/widgets/text_field/custom_text_form_field.dart';
class HomeSearch extends StatelessWidget {
  const HomeSearch({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: 4,
          child: CustomTextFormField(
            controller: context.read<HomeCubit>().nameController,
            onChanged: (value){
              context.read<HomeCubit>().searchFruits();
            },
            fillBackgroundColor: ColorManager.cultured,
            contentPadding: const EdgeInsets.symmetric(
              horizontal: 24,
              vertical: 20,
            ),
            hintText: 'Search',
            prefixIcon: const Icon(
              Icons.search,
              color: ColorManager.purpleNavy,
              size: 16,
            ),
            focusedBorder: const OutlineInputBorder(
                borderSide: BorderSide(color: ColorManager.mainOrange)),
            hintStyle: AppTextStyles.font14RomanSilverRegular,
            validator: (value) {},
          ),
        ),
        Expanded(
          child: SvgPicture.asset(
            'assets/svg/search.svg',
            width: 26,
            height: 17,
          ),
        ),
      ],
    );
  }
}
