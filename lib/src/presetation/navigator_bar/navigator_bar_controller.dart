import 'package:get/get.dart';

class NavigatorBarController extends GetxController {
  bool isHome = true;
  bool pageFavorite = false;

  isHomePage() {
    isHome = true;
    pageFavorite = false;
    update();
  }

  isFavoritePage() {
    pageFavorite = true;
    isHome = false;
    update();
  }
}
