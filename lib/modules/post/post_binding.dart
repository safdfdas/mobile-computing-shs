import 'package:get/get.dart';
import 'package:mc01/modules/post/post_controller.dart';

class PostBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => PostController());
  }
}
