import 'package:mc01/modules/home/home_binding.dart';
import 'package:mc01/modules/home/home_page.dart';
import 'package:mc01/modules/lacate/locate_binding.dart';
import 'package:mc01/modules/lacate/locate_page.dart';
import 'package:mc01/modules/main/main_binding.dart';
import 'package:mc01/modules/main/main_page.dart';
import 'package:mc01/modules/my/my_binding.dart';
import 'package:mc01/modules/my/my_page.dart';
import 'package:mc01/modules/chat/chat_binding.dart';
import 'package:mc01/modules/chat/chat_page.dart';

import 'package:get/get.dart';
import 'package:mc01/modules/post/post_binding.dart';
import 'package:mc01/modules/post/post_page.dart';

part 'app_routes.dart';

abstract class AppPages {
  static final pages = [
    GetPage(
      name: Routes.MAIN,
      page: () => const MainPage(),
      binding: MainBinding(),
    ),
    GetPage(
      name: Routes.HOME,
      page: () => const HomePage(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: Routes.POST,
      page: () => const PostPage(),
      binding: PostBinding(),
    ),
    GetPage(
      name: Routes.CHAT,
      page: () => const ChatPage(),
      binding: ChatBinding(),
    ),
    GetPage(
      name: Routes.MY,
      page: () => const MyPage(),
      binding: MyBinding(),
    ),
    GetPage(
      name: Routes.LOCATE,
      page: () => const LocatePage(),
      binding: LocateBinding(),
    ),
  ];
}
