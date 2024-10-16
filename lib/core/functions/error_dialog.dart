import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

import '../theme/app_text_styles.dart';
import '../theme/color_manager.dart';

void errorDialog(BuildContext context, String error) {
  showDialog(
    context: context,
    builder: (context) => Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      elevation: 1.5,
      backgroundColor: Colors.white,
      child: Container(
        width: 400,
        height: 300,
        decoration: BoxDecoration(
            color: Colors.white,
            shape: BoxShape.rectangle,
            borderRadius: BorderRadius.circular(20),
            boxShadow: const [
              BoxShadow(
                  color: Colors.black26, offset: Offset(15, 15), blurRadius: 3),
            ]),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Lottie.asset('assets/lottie/error.json', width: 200, height: 150),
            const SizedBox(
              height: 15,
            ),
            Text(error, style: AppTextStyles.font16OrangeSemiBold),
            const SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12),
              child: SizedBox(
                width: double.infinity,
                child: TextButton(
                  style: TextButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16),
                    ),
                    backgroundColor: ColorManager.coolGrey,
                    padding: const EdgeInsets.symmetric(
                      horizontal: 25,
                    ),
                  ),
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child:
                      const Text('Retry', style: AppTextStyles.font16OrangeSemiBold),
                ),
              ),
            ),
          ],
        ),
      ),
    ),
  );
}
