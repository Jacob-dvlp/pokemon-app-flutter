import 'package:get/get.dart';
import './navigator_bar_controller.dart';

class NavigatorBarBindings implements Bindings {
    @override
    void dependencies() {
        Get.put(NavigatorBarController());
    }
}