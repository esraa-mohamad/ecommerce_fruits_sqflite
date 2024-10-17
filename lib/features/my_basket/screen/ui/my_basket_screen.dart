import 'package:ecommerce_fruits/features/my_basket/screen/widgets/my_basket_body.dart';
import 'package:flutter/material.dart';

class MyBasketScreen extends StatelessWidget {
  const MyBasketScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: MyBasketBody(),
    );
  }
}
