import 'package:flutter/material.dart';

import '../../../../core/models/fruits_combo_model/fruit_combo_model.dart';
import 'fruits_combo_items.dart';

class FruitsComboItemsListView extends StatelessWidget {
  const FruitsComboItemsListView({super.key, required this.fruitsModel});

  final List<FruitComboModel> fruitsModel ;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 230,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
          itemCount: fruitsModel.length,
          itemBuilder: (context, index) {
        return  Padding(
            padding: const EdgeInsetsDirectional.only(end: 15),
          child: FruitsComboItems(
            fruitComboModel: fruitsModel[index],
          ),
        );
      },
      ),
    );
  }
}
