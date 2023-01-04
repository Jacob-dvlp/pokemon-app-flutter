import 'package:get/get.dart';

import '../src/presetation/splashscreen/splashscreen_page.dart';

abstract class AppRoutes {
  static final List<GetPage> pages = [
    GetPage(
      name: SplashscreenPage.routName,
      page: () => const SplashscreenPage(),
    ),
  ];
}
