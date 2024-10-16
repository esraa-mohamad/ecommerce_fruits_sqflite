import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../../core/theme/color_manager.dart';

class OrangeContainerImage extends StatelessWidget {
  const OrangeContainerImage({super.key});

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
              'assets/images/welcome_image.png',
              width: 301,
              height: 260,
            ),
            Positioned(
              bottom: 55,
              child: SvgPicture.asset('assets/svg/shadow_welcome_image.svg'),
            ),
            Positioned(
              top: 50,
              right: 50,
              child: SvgPicture.asset(
                'assets/svg/small_fruits.svg',
                width: 50,
                height: 40,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
