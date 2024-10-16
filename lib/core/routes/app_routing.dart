import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../features/authentication/manager/authentication_cubit.dart';
import '../../features/authentication/screen/ui/authentication_screen.dart';
import '../../features/home/screen/ui/home_ecommerce_screen.dart';

import '../../features/splash/screen/ui/splash_screen.dart';
import '../../features/welcome/screen/ui/welcome_screen.dart';
import 'routes.dart';

class AppRouting {
  Route? generateRoutes(RouteSettings routesSettings) {
    final arguments = routesSettings.arguments;
    switch (routesSettings.name) {
      case Routes.splashScreen:
        return MaterialPageRoute(
            builder: (_) =>
            const SplashScreen()
        );
      case Routes.welcomeScreen:
        return MaterialPageRoute(
            builder: (_) =>
            const WelcomeScreen()
        );
      case Routes.authenticationScreen:
        return MaterialPageRoute(
            builder: (_) =>
                BlocProvider(
                  create: (context) => AuthenticationCubit(),
                  child: const AuthenticationScreen(),
                )
        );
      case Routes.homeEcommerceScreen:
        return MaterialPageRoute(
            builder: (_) =>
            const HomeEcommerceScreen()
        );
      default:
        return MaterialPageRoute(
          builder: (_) =>
              Scaffold(
                body: Center(
                  child: Text('No route defined for ${routesSettings.name}'),
                ),
              ),
        );
    }
  }
}
