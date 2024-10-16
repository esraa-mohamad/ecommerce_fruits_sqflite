import 'package:flutter/material.dart';

import 'core/routes/app_routing.dart';
import 'core/routes/routes.dart';

void main() {
  runApp( EcommerceFruits(appRouting: AppRouting(),));
}

class EcommerceFruits extends StatelessWidget {
  const EcommerceFruits({super.key, required this.appRouting});
  final AppRouting appRouting ;
  @override
  Widget build(BuildContext context) {
    return   MaterialApp(
      debugShowCheckedModeBanner: false,
      onGenerateRoute: appRouting.generateRoutes,
      initialRoute: Routes.splashScreen,
    );
  }
}
