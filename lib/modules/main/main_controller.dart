import 'package:get/get.dart';

class MainController extends GetxController {
  Rx<int> pageIndex = Rx(1);
  onTapBottomNavigationBarItem(value) {
    switch (value) {
      case 0:
        pageIndex.value = value;
        break;
      case 1:
        pageIndex.value = value;
        break;
      case 2:
        pageIndex.value = value;
        break;
      case 3:
        pageIndex.value = value;
        break;
    }
  }
}
