import 'package:get/get.dart';

class NavController extends GetxController {
  var currentIndex = 0.obs;

  void navigateTo(int index) {
    currentIndex.value = index;
    switch (index) {
      case 0:
        Get.offNamed('/');
        break;
      case 1:
        Get.offNamed('/Card');
        break;
      case 2:
        Get.offNamed('/It');
        break;
      case 3:
        Get.offNamed('/Manage');
        break;
      case 4:
        Get.offNamed('/Profile');
        break;
    }
  }
}
