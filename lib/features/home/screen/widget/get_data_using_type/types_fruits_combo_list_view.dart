import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/models/fruits_combo_model/fruit_combo_model.dart';
import 'type_fruit_combo_item.dart';

class TypesFruitsComboListView extends StatelessWidget {
  const TypesFruitsComboListView({super.key, required this.fruitsModel});

  final  List<FruitComboModel> fruitsModel;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 230.h,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: fruitsModel.length,
        itemBuilder: (context, index) {
          return  Padding(
            padding:  EdgeInsetsDirectional.only(end: 15.r),
            child: TypeFruitComboItem(
              fruitComboModel: fruitsModel[index],
            ),
          );
        },
      ),
    );
  }
}
