import 'package:get/get.dart';
import './splashscreen_controller.dart';

class SplashscreenBindings implements Bindings {
    @override
    void dependencies() {
        Get.put(SplashscreenController());
    }
}