import 'package:flutter/material.dart';

class FruitComboModel {
  final int? id;

  final String fruitName;

  final int price;

  final String imagePath;

  final String ? type;

  final Color color;

  FruitComboModel({
    this.id,
    required this.fruitName,
    required this.price,
    required this.imagePath,
    required this.color,
    this.type = 'Popular',
  });

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': fruitName,
      'price': price,
      'imagePath': imagePath,
      'color': color.value,
      'type' : type
    };
  }

  factory FruitComboModel.fromJson(Map<String, dynamic> map){
    return FruitComboModel(
        id: map['id'],
        fruitName: map['name'],
        price: map['price'],
        imagePath: map['imagePath'],
        color: Color(map['color']),
        type: map['type']
    );
  }
}
