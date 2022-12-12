import 'package:flutter/material.dart';

import 'package:components/screens/screens.dart';
import 'package:components/models/models.dart';

class AppRoutes {
  static const initialRoute = 'home';

  static final menuOptions = <MenuOption>[
    MenuOption(
        route: 'listview1',
        name: 'Listview 1',
        screen: const Listview1Screen(),
        icon: Icons.looks_one),
    MenuOption(
        route: 'listview2',
        name: 'Listview 2',
        screen: const Listview2Screen(),
        icon: Icons.looks_two),
    MenuOption(
        route: 'alert',
        name: 'Alert',
        screen: const AlertScreen(),
        icon: Icons.alarm),
    MenuOption(
        route: 'card',
        name: 'Card',
        screen: const CardScreen(),
        icon: Icons.credit_card_sharp),
    MenuOption(
        route: 'avatar',
        name: 'Avatar',
        screen: const AvatarScreen(),
        icon: Icons.person_pin_rounded),
    MenuOption(
        route: 'animated',
        name: 'Animation',
        screen: const AnimatedScreen(),
        icon: Icons.auto_fix_normal_outlined),
    MenuOption(
        route: 'inputs',
        name: 'Form Inputs',
        screen: const InputsScreen(),
        icon: Icons.input_outlined),
    MenuOption(
        route: 'slider',
        name: 'Slider & Checks',
        screen: const SliderScreen(),
        icon: Icons.swipe_outlined),
    MenuOption(
        route: 'listviewbuilder',
        name: 'Infinite Scroll & Pull',
        screen: const ListViewBuilderScreen(),
        icon: Icons.list_alt),
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
  //   'home': (BuildContext context) => const HomeScreen(),
  //   'listview1': (BuildContext context) => const Listview1Screen(),
  //   'listview2': (BuildContext context) => const Listview2Screen(),
  //   'alert': (BuildContext context) => const AlertScreen(),
  //   'card': (BuildContext context) => const CardScreen(),
  // };

  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    return MaterialPageRoute(
      builder: (context) => const AlertScreen(),
    );
  }
}
