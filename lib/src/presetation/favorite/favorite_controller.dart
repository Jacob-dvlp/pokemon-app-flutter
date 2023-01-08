import 'package:get/get.dart';

class FavoriteController extends GetxController {
  bool isFavorite = true;
  bool isHome = false;

  isHomePage() {
    isHome = true;
    isFavorite = false;
    update();
  }

  isFavoritePage() {
    isFavorite = true;
    isHome = false;
    update();
  }
}
