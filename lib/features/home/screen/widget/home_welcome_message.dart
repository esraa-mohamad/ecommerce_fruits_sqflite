import 'package:flutter/material.dart';

import '../../../../core/theme/app_text_styles.dart';
import '../../../../core/theme/font_weight_helper.dart';

class HomeWelcomeMessage extends StatelessWidget {
  const HomeWelcomeMessage({super.key, required this.name});

  final String name ;
  @override
  Widget build(BuildContext context) {
    return RichText(
        text: TextSpan(
          text: 'Hello $name, ',
          style: AppTextStyles.font20NavyBlueMedium,
          children: [
            TextSpan(
              text: 'What fruit salad \ncombo do you want today',
              style: AppTextStyles.font20NavyBlueMedium.copyWith(
                fontWeight: FontWeightHelper.bold
              )
            ),
          ]
        ),
    );
  }
}
