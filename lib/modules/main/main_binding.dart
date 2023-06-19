import 'package:mc01/modules/home/home_controller.dart';
import 'package:mc01/modules/main/main_controller.dart';
import 'package:mc01/modules/my/my_controller.dart';
import 'package:mc01/modules/chat/chat_controller.dart';
import 'package:get/get.dart';
import 'package:mc01/modules/post/post_controller.dart';

class MainBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => HomeController());
    Get.lazyPut(() => PostController());
    Get.lazyPut(() => ChatController());
    Get.lazyPut(() => MyController());
    Get.lazyPut(
      () => MainController(),
    );
  }
}
