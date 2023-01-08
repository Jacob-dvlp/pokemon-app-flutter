import 'package:get/get.dart';
import './favorite_controller.dart';

class FavoriteBindings implements Bindings {
    @override
    void dependencies() {
        Get.put(FavoriteController());
    }
}