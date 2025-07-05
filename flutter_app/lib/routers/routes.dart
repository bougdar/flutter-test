import 'package:flutter_app/views/pages/GeneralPage.dart';
import 'package:get/get.dart';


class AppRoutes {
  static final routes = [
    GetPage(name: '/', page: () => const GeneralPage(),),
  ];
}