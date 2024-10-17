import 'package:ecommerce_fruits/features/home/screen/widget/type_fruit_combo_item.dart';
import 'package:flutter/material.dart';

import '../../../../core/models/fruits_combo_model/fruit_combo_model.dart';

class TypesFruitsComboListView extends StatelessWidget {
  const TypesFruitsComboListView({super.key, required this.fruitsModel});

  final  List<FruitComboModel> fruitsModel;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 210,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: fruitsModel.length,
        itemBuilder: (context, index) {
          return  Padding(
            padding: const EdgeInsetsDirectional.only(end: 15),
            child: TypeFruitComboItem(
              fruitComboModel: fruitsModel[index],
            ),
          );
        },
      ),
    );
  }
}
