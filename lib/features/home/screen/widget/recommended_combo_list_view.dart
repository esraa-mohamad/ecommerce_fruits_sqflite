import 'package:flutter/material.dart';

import 'recommended_combo_items.dart';

class RecommendedComboListView extends StatelessWidget {
  const RecommendedComboListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 250,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
          itemCount: 8,
          itemBuilder: (context, index) {
        return const Padding(
            padding: EdgeInsetsDirectional.only(end: 15),
          child: RecommendedComboItems(),
        );
      },
      ),
    );
  }
}
