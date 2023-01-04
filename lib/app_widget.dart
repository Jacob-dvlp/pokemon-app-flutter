import 'package:flutter/material.dart';
import 'package:get/get_navigation/get_navigation.dart';

import 'routes/app_routes.dart';
import 'src/presetation/splashscreen/splashscreen_page.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      getPages: AppRoutes.pages,
      debugShowCheckedModeBanner: false,
      home: const SplashscreenPage(),
    );
  }
}
