import 'package:ecommerce_fruits/core/models/fruits_combo_model/fruit_combo_model.dart';
import 'package:ecommerce_fruits/core/theme/color_manager.dart';
import 'package:flutter/material.dart';

class Constants{

  static  List<FruitComboModel> fruitsData = [
    FruitComboModel(
        fruitName: 'Tropical Delight',
        price: 1000,
        imagePath: 'assets/images/combo_image_1.png',
        color: Colors.white ,
      type: 'hottest',
    ),
    FruitComboModel(
      fruitName: 'Berry Blast',
      price: 1200,
      imagePath: 'assets/images/combo_image_2.png',
      color: Colors.white ,
      type: 'popular',
    ),
    FruitComboModel(
      fruitName: 'Citrus Zing',
      price: 900,
      imagePath: 'assets/images/combo_image_3.png',
      color: Colors.white ,
      type: 'new combo',
    ),
    FruitComboModel(
      fruitName: 'Melon Medley',
      price: 800,
      imagePath: 'assets/images/combo_image_4.png',
      color: Colors.white ,
      type: 'top',
    ),
    FruitComboModel(
      fruitName: 'Exotic Fusion',
      price: 1400,
      imagePath: 'assets/images/combo_image_1.png',
      color: Colors.white ,
      type: 'hottest',
    ),
    FruitComboModel(
      fruitName: 'Apple Crunch',
      price: 700,
      imagePath: 'assets/images/combo_image_2.png',
      color: ColorManager.lumber ,
      type: 'popular',
    ),
    FruitComboModel(
      fruitName: 'Summer Bliss',
      price: 1500,
      imagePath: 'assets/images/combo_image_3.png',
      color: ColorManager.cosmicLatte ,
      type: 'new combo',
    ),
    FruitComboModel(
      fruitName: 'Tropical Citrus Burst',
      price: 2000,
      imagePath: 'assets/images/combo_image_4.png',
      color: ColorManager.antiFlashWhite ,
      type: 'top',
    ),
    FruitComboModel(
      fruitName: 'Green Garden',
      price: 600,
      imagePath: 'assets/images/combo_image_1.png',
      color: ColorManager.flashWhite ,
      type: 'hottest',
    ),
    FruitComboModel(
      fruitName: 'Berry Kiwi Splash',
      price: 1100,
      imagePath: 'assets/images/combo_image_2.png',
      color: ColorManager.lumber ,
      type: 'popular',
    ),
    FruitComboModel(
      fruitName: 'Antioxidant Power',
      price: 1300,
      imagePath: 'assets/images/combo_image_3.png',
      color: ColorManager.cosmicLatte ,
      type: 'new combo',
    ),
    FruitComboModel(
      fruitName: 'Sunshine Mix',
      price: 700,
      imagePath: 'assets/images/combo_image_4.png',
      color: ColorManager.antiFlashWhite ,
      type: 'top',
    ),
    FruitComboModel(
      fruitName: 'Berry & Melon Splash',
      price: 800,
      imagePath: 'assets/images/combo_image_1.png',
      color: ColorManager.flashWhite ,
      type: 'hottest',
    ),
    FruitComboModel(
      fruitName: 'Tropical Berry Twist',
      price: 1600,
      imagePath: 'assets/images/combo_image_2.png',
      color: ColorManager.lumber ,
      type: 'popular',
    ),
    FruitComboModel(
      fruitName: 'Citrus & Berry Punch',
      price: 500,
      imagePath: 'assets/images/combo_image_3.png',
      color: ColorManager.cosmicLatte ,
      type: 'new combo',
    ),

  ];


}