import 'importes.dart';

abstract class AppRoutes {
  static final List<GetPage> pages = [
    GetPage(
      name: SplashscreenPage.routName,
      page: () => const SplashscreenPage(),
      binding: SplashscreenBindings(),
    ),
    GetPage(
      name: NavigatorBarPage.routName,
      page: () => const NavigatorBarPage(),
    ),
    GetPage(
      name: HomePage.routName,
      page: () => const HomePage(),
      binding: HomeBindings(),
    ),
    GetPage(
      name: AboutPage.routName,
      page: () => const AboutPage(),
      binding: AboutBindings(),
    ),
    GetPage(
      name: FavoritePage.routName,
      page: () => const FavoritePage(),
      binding: FavoriteBindings(),
    )
  ];
}
