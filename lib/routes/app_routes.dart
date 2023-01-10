import '../src/infra/interface/imports.dart';
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
      name: DetailPage.routName,
      page: () => const DetailPage(),
      binding: DetailBindings(),
    ),
    GetPage(
      name: FavoritePage.routName,
      page: () => const FavoritePage(),
      binding: FavoriteBindings(),
    )
  ];
}
