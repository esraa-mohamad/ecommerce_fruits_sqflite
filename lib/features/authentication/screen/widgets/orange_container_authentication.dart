import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../../core/theme/color_manager.dart';

class OrangeContainerAuthentication extends StatelessWidget {
  const OrangeContainerAuthentication({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        width: double.infinity,
        decoration: const BoxDecoration(
            color: ColorManager.mainOrange,
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(18),
              topLeft: Radius.circular(18),
            )),
        child: Stack(
          alignment: Alignment.center,
          children: [
            Image.asset(
              'assets/images/authentication_image.png',
              width: 301.w,
              height: 260.h,
            ),
            Positioned(
              bottom: 40.h,
              child: SvgPicture.asset('assets/svg/authentication_shadow.svg'),
            ),
            Positioned(
              top: 50.h,
              right: 50.r,
              child: Image.asset(
                'assets/images/small_fruits.png',
                width: 50.w,
                height: 40.h,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
