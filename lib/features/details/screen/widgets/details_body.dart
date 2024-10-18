import 'package:ecommerce_fruits/features/details/screen/widgets/fruits_combo_details_bloc_builder.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/widgets/go_back_button.dart';



class DetailsBody extends StatelessWidget {
  const DetailsBody({super.key});


  @override
  Widget build(BuildContext context) {
    return  SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Padding(
                padding: EdgeInsets.only(
                  top: 20.h ,
                  left: 24.r
                ),
                child: const GoBackButton(),
              ),
            ),
            const Expanded(
              flex: 10,
                child: FruitsComboDetailsBlocBuilder()),
          ],
        ),
    );
  }
}
