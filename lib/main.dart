import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mc01/common/theme/app_theme.dart';

import 'package:mc01/routes/app_pages.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  var getMaterialApp = GetMaterialApp(
    debugShowCheckedModeBanner: false,
    theme: lightThemeData,
    getPages: AppPages.pages,
    initialRoute: Routes.MAIN,
    initialBinding: BindingsBuilder(() {}),
  );

  runApp(getMaterialApp);
}
