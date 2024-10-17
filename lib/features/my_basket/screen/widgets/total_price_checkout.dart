import 'package:ecommerce_fruits/core/theme/app_text_styles.dart';
import 'package:ecommerce_fruits/core/widgets/button/custom_elevated_button.dart';
import 'package:ecommerce_fruits/features/my_basket/screen/widgets/payment_sheet.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class TotalPriceCheckout extends StatelessWidget {
  const TotalPriceCheckout({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Total',
              style: AppTextStyles.font16BlackMedium,
            ),
            Row(
              children: [
                SvgPicture.asset(
                  'assets/svg/money_icon_black.svg',
                  width: 20.w,
                  height: 16.h,
                ),
                Text(
                  ' 40000',
                  style: AppTextStyles.font24NavyBlueMedium,
                ),
              ],
            ),
          ],
        ),
        SizedBox(
          width: 50.w,
        ),
        CustomElevatedButton(
            onPressed: () {
              showModalBottomSheet(context: context, builder: (context)=>const PaymentSheet());
            },
          radius: 10,
            textButton: 'Checkout',
          paddingButton: EdgeInsets.symmetric(
            vertical: 14.h ,
            horizontal: 52.w
          ),
        )
      ],
    );
  }
}
