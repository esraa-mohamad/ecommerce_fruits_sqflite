import 'package:ecommerce_fruits/core/theme/color_manager.dart';
import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class FruitItemLoading extends StatelessWidget {
  const FruitItemLoading({super.key});

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
        baseColor: ColorManager.grayX,
        highlightColor: ColorManager.coolGrey,
        child: Container(
          width: 152,
          decoration: BoxDecoration(
            color: ColorManager.grayX ,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    width: 20,
                    height: 20,
                    color: ColorManager.coolGrey,
                  ),
                ],
              ),
              const CircleAvatar(
                backgroundColor: ColorManager.coolGrey,
                radius: 80,
              ),
              const SizedBox(
                height: 8,
              ),
              Container(
                height: 10,
                width: 50,
                color: ColorManager.coolGrey,
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 5,
                    width: 30,
                    color: ColorManager.coolGrey,
                  ),
                  const CircleAvatar(
                    backgroundColor: ColorManager.coolGrey,
                    radius: 20,
                  ),
                ],
              ),
            ],
          ),
        )
    );
  }
}
