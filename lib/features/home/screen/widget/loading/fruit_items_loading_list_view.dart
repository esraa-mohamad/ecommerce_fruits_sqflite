import 'package:ecommerce_fruits/features/home/screen/widget/loading/fruit_item_loading.dart';
import 'package:flutter/material.dart';

class FruitItemsLoadingListView extends StatelessWidget {
  const FruitItemsLoadingListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 250,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 8,
        itemBuilder: (context, index) => const Padding(
          padding: EdgeInsetsDirectional.only(end: 12),
          child: FruitItemLoading(),
        ),
      ),
    );
  }
}
