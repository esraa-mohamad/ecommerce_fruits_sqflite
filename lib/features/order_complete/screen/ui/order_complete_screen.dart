import 'package:ecommerce_fruits/features/order_complete/screen/widgets/order_complete_body.dart';
import 'package:flutter/material.dart';

class OrderCompleteScreen extends StatelessWidget {
  const OrderCompleteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: OrderCompleteBody(),
    );
  }
}
