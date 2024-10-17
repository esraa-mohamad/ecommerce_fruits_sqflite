import 'package:flutter/material.dart';

import '../../../../core/theme/color_manager.dart';
import '../widgets/details_body.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: ColorManager.mainOrange,
      body: DetailsBody(),
    );
  }
}
