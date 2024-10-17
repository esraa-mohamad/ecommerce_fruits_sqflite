import 'package:flutter/material.dart';

import '../../../../core/widgets/go_back_button.dart';
import 'fruits_combo_item_details.dart';

class DetailsBody extends StatelessWidget {
  const DetailsBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(
                top: 20 ,
                left: 24
              ),
              child: GoBackButton(),
            ),
            SizedBox(
              height: 15,
            ),
            FruitsComboItemDetails(),
          ],
        ),
    );
  }
}
