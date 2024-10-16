import 'package:flutter/material.dart';

import '../../../../core/routes/routes.dart';
import '../../../../core/theme/app_text_styles.dart';
import '../../../../core/theme/color_manager.dart';
import '../../../../core/widgets/button/custom_elevated_button.dart';

class WelcomeMessages extends StatelessWidget {
  const WelcomeMessages({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SizedBox(
        width: double.infinity,
        child:  Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 24
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'Get The Freshest Salad Fruits Combo',
                style: AppTextStyles.font20NavyBlueMedium,
              ),
              const SizedBox(
                height: 8,
              ),
              const Text(
                'We deliver the best and freshest fruit salad in town. Order for a combo today!!!',
                style: AppTextStyles.font16PurpleNavyRegular,
              ),
              const SizedBox(
                height: 58,
              ),
              Center(
                child: SizedBox(
                  width: double.infinity,
                  child: CustomElevatedButton(
                      onPressed: (){
                        Navigator.of(context).pushReplacementNamed(Routes.authenticationScreen);
                      },
                    radius: 10,
                    paddingButton: const EdgeInsets.symmetric(
                      horizontal: 118,
                      vertical: 14
                    ),
                    backgroundColor: ColorManager.mainOrange,
                    textButton: 'Let\'s Continue',
                    styleTextButton: AppTextStyles.font16WhiteMedium,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
