

import 'package:flutter/material.dart';

class CustomElevatedButton extends StatelessWidget {
  const CustomElevatedButton({super.key, this.paddingButton, required this.onPressed,  this.textButton, this.styleTextButton, this.childButton, this.backgroundColor, this.horizontalPadding, this.radius});

  final EdgeInsetsGeometry? paddingButton;
  final void Function() onPressed;
  final String ? textButton ;
  final TextStyle? styleTextButton;
  final Widget? childButton;
  final Color? backgroundColor;
  final double? horizontalPadding;
  final double? radius;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
          padding: paddingButton ??EdgeInsets.symmetric(
              horizontal:horizontalPadding?? 140 ,
              vertical: 14
          ),
          backgroundColor:backgroundColor?? const Color(0xff916BBF),
        shape:  RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(radius ?? 25),
        )
      ),
      onPressed: onPressed,
      child:childButton ?? Text(
          textButton ?? 'Sign In' ,
          style:styleTextButton?? const TextStyle(
            fontWeight: FontWeight.bold ,
            fontSize: 15 ,
            color: Colors.white
          )
      ),
    );
  }
}
