import 'package:flutter/material.dart';
import '../screens/screens.dart';
import 'package:demo_app_components/models/models.dart';

class AppRoutes {
  static const initialRoute = 'home';

  static final menuOptions = <MenuOption>[
    // MenuOption(
    //     route: 'home',
    //     name: 'Home Screen',
    //     screen: const HomeScreen(),
    //     icon: Icons.home),
    MenuOption(
        route: 'listview1',
        name: 'ListView tipo 1',
        screen: const ListView1Screen(),
        icon: Icons.list),
    MenuOption(
        route: 'listview2',
        name: 'ListView tipo 2',
        screen: const ListView2Screen(),
        icon: Icons.list_alt),
    MenuOption(
        route: 'alert',
        name: 'Alert Screen',
        screen: const AlertScreen(),
        icon: Icons.add_alert_outlined),
    MenuOption(
        route: 'card',
        name: 'Card Screen',
        screen: const CardScreen(),
        icon: Icons.credit_card),
    MenuOption(
        route: 'avatar',
        name: 'Circle Avatar',
        screen: const AvatarScreen(),
        icon: Icons.supervised_user_circle_rounded),
    MenuOption(
        route: 'animated',
        name: 'Animated Container',
        screen: const AnimatedScreen(),
        icon: Icons.play_circle_outline_rounded),
    MenuOption(
        route: 'inputs',
        name: 'Text Inputs',
        screen: const InputsScreen(),
        icon: Icons.input_rounded),
    MenuOption(
        route: 'slider',
        name: 'Slider && Checks',
        screen: const SliderScreen(),
        icon: Icons.screen_rotation),
    MenuOption(
        route: 'listviewbuilder',
        name: 'InfiniteScroll & Pull to Refresh',
        screen: const ListViewBuilderScreen(),
        icon: Icons.view_array),
  ];

  static Map<String, Widget Function(BuildContext)> getAppRoutes() {
    Map<String, Widget Function(BuildContext)> appRoutes = {};

    appRoutes.addAll({'home': (BuildContext context) => const HomeScreen()});

    for (final option in menuOptions) {
      appRoutes.addAll({option.route: (BuildContext context) => option.screen});
    }

    return appRoutes;
  }

  // static Map<String, Widget Function(BuildContext)> routes = {
  //   'home': ((context) => const HomeScreen()),
  //   'listview1': ((context) => const ListView1Screen()),
  //   'listview2': ((context) => const ListView2Screen()),
  //   'alert': ((context) => const AlertScreen()),
  //   'card': ((context) => const CardScreen()),
  // };

  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    print(settings);
    return MaterialPageRoute(
      builder: (context) => const HomeScreen(),
    );
  }
}
