import 'package:mc01/modules/my/my_controller.dart';
import 'package:get/get.dart';

class MyBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => MyController());
  }
}
