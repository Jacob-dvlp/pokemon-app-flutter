import 'package:get/get.dart';

class NavigatorBarController extends GetxController {
  bool isHome = true;
  bool isFavorite = false;

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
