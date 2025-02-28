import 'package:ecommerce_fruits/features/details/manager/details_cubit.dart';
import 'package:ecommerce_fruits/features/details/screen/ui/details_screen.dart';
import 'package:ecommerce_fruits/features/home/manager/all_fruit_cubit/home_all_fruit_cubit.dart';
import 'package:ecommerce_fruits/features/home/manager/name_authentication_cubit/home_name_authentication_cubit.dart';
import 'package:ecommerce_fruits/features/home/manager/type_fruit_cubit/home_type_fruit_cubit.dart';
import 'package:ecommerce_fruits/features/my_basket/manager/my_basket_cubit.dart';
import 'package:ecommerce_fruits/features/my_basket/screen/ui/my_basket_screen.dart';
import 'package:ecommerce_fruits/features/order_complete/screen/ui/order_complete_screen.dart';
import 'package:ecommerce_fruits/features/track_order/screen/ui/track_order_screen.dart';
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
        return MaterialPageRoute(builder: (_) => const SplashScreen());
      case Routes.welcomeScreen:
        return MaterialPageRoute(builder: (_) => const WelcomeScreen());
      case Routes.authenticationScreen:
        return MaterialPageRoute(
            builder: (_) => BlocProvider(
                  create: (context) => AuthenticationCubit(),
                  child: const AuthenticationScreen(),
                ));
      case Routes.homeEcommerceScreen:
        return MaterialPageRoute(
          builder: (_) => MultiBlocProvider(
            providers: [
              BlocProvider(
                create: (context) =>
                    HomeNameAuthenticationCubit()..getUserName(),
              ),
              BlocProvider(
                create: (context) => HomeAllFruitCubit()..insertFruitsData(),
              ),
              BlocProvider(
                create: (context) => HomeTypeFruitCubit(),
              ),
            ],
            child: const HomeEcommerceScreen(),
          ),
        );
      case Routes.detailsScreen:
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (context) => DetailsCubit(),
            child: const DetailsScreen(),
          ),
          settings: RouteSettings(arguments: arguments),
        );
      case Routes.myBasketScreen:
        return MaterialPageRoute(
            builder: (_) => BlocProvider(
                  create: (context) => MyBasketCubit()..getAllBasketOrders(),
                  child: const MyBasketScreen(),
                ),
        );
      case Routes.orderCompleteScreen:
        return MaterialPageRoute(builder: (_) => const OrderCompleteScreen());
      case Routes.trackOrderScreen:
        return MaterialPageRoute(builder: (_) => const TrackOrderScreen());
      default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(
            body: Center(
              child: Text('No route defined for ${routesSettings.name}'),
            ),
          ),
        );
    }
  }
}
