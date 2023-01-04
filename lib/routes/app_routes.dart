import 'package:get/get.dart';

import '../src/presetation/home/home_bindings.dart';
import '../src/presetation/home/home_page.dart';
import '../src/presetation/splashscreen/splashscreen_bindings.dart';
import '../src/presetation/splashscreen/splashscreen_page.dart';

abstract class AppRoutes {
  static final List<GetPage> pages = [
    GetPage(
      name: SplashscreenPage.routName,
      page: () => const SplashscreenPage(),
      binding: SplashscreenBindings(),
    ),
    GetPage(
      name: HomePage.routName,
      page: () => const HomePage(),
      binding: HomeBindings(),
    )
  ];
}
