import 'package:get/get.dart';

class FavoriteController extends GetxController {
  bool pageFavorite = true;
  bool isHome = false;

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
