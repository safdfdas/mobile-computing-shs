import 'package:mc01/modules/lacate/locate_controller.dart';
import 'package:get/get.dart';

class LocateBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => LocateController());
  }
}
