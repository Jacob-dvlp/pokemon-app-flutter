import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../home/home_page.dart';
import 'custom_widget/custom_navigator_bar.dart';
import 'navigator_bar_controller.dart';

class NavigatorBarPage extends GetView<NavigatorBarController> {
  const NavigatorBarPage({Key? key}) : super(key: key);
  static String routName = "/navigator-bar";
  @override
  Widget build(BuildContext context) {
    return GetBuilder<NavigatorBarController>(
      init: NavigatorBarController(),
      builder: (controller) {
        return Scaffold(
          floatingActionButtonLocation:
              FloatingActionButtonLocation.centerDocked,
          floatingActionButton: CustomNavigatorBar(controller: controller),
          body: controller.isHome ? const HomePage() : Container(),
        );
      },
    );
  }
}
