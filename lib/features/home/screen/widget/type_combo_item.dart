import 'package:flutter/material.dart';

import '../../../../core/theme/app_text_styles.dart';

class TypeComboItem extends StatelessWidget {
  const TypeComboItem({super.key, this.onTap, required this.title, this.color, this.style});

  final void Function()? onTap;
  final  String title ;
  final Color? color;
  final TextStyle? style;
  @override
  Widget build(BuildContext context) {
    return  GestureDetector(
      onTap: onTap,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
           Text(
            title ,
            style: style ?? AppTextStyles.font16CoolGreyMedium,
          ),
          Container(
            width: 30,
            height: 2,
            color: color ?? Colors.white,
          ),
        ],
      ),
    );
  }
}
