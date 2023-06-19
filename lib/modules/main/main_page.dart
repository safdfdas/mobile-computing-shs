import 'package:mc01/modules/chat/chat_page.dart';
import 'package:mc01/modules/home/home_page.dart';
import 'package:mc01/modules/main/main_controller.dart';
import 'package:mc01/modules/my/my_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mc01/modules/post/post_page.dart';

class MainPage extends GetWidget<MainController> {
  const MainPage({super.key});

  pageView(expression) {
    switch (expression) {
      case 0:
        return const HomePage();
      case 1:
        return const PostPage();
      case 2:
        return const ChatPage();
      case 3:
        return const MyPage();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Scaffold(
          body: pageView(controller.pageIndex.value),
          bottomNavigationBar: BottomNavigationBar(
            onTap: controller.onTapBottomNavigationBarItem,
            currentIndex: controller.pageIndex.value,
            selectedItemColor: Get.theme.colorScheme.primary,
            unselectedItemColor: Get.theme.colorScheme.secondary,
            items: const [
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.home_outlined,
                ),
                label: 'home',
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.content_paste,
                ),
                label: 'post',
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.forum_outlined,
                ),
                label: 'chat',
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.person_outline,
                ),
                label: 'my',
              ),
            ],
          )),
    );
  }
}
