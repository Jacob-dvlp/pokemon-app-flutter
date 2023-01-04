import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'custam_body_widget/home_body_widget.dart';
import 'home_controller.dart';

class HomePage extends GetView<HomeController> {
  const HomePage({Key? key}) : super(key: key);
  static String routName = '/home';
  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(
      init: HomeController(getPokemonProvider: Get.find()),
      builder: (controller) {
        return Scaffold(
          body: Column(
            children: const [HomeHeaderWidgetCard()],
          ),
        );
      },
    );
  }
}
