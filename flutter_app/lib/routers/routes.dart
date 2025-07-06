import 'package:flutter_app/views/pages/Cards.dart';
import 'package:flutter_app/views/pages/GeneralPage.dart';
import 'package:flutter_app/views/pages/It.dart';
import 'package:flutter_app/views/pages/Manage.dart';
import 'package:flutter_app/views/pages/Profile.dart';
import 'package:get/get.dart';

class AppRoutes {
  static final routes = [
    GetPage(
      name: '/',
      page: () => const GeneralPage(),
      transition: Transition.noTransition,  // <-- No animation
    ),
    GetPage(
      name: '/Card',
      page: () => const Cards(),
      transition: Transition.noTransition,
    ),
    GetPage(
      name: '/It',
      page: () => const It(),
      transition: Transition.noTransition,
    ),
    GetPage(
      name: '/Manage',
      page: () => const Manage(),
      transition: Transition.noTransition,
    ),
    GetPage(
      name: '/Profile',
      page: () => const Profile(),
      transition: Transition.noTransition,
    ),
  ];
}
