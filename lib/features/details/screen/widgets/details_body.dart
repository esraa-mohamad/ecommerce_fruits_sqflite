import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/widgets/go_back_button.dart';
import 'fruits_combo_item_details.dart';

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
                child: FruitsComboItemDetails()),
          ],
        ),
    );
  }
}
