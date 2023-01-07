import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../style/app_style.dart';
import 'custom_widgets_body_splashsreen/custom_widget_body_splashscreen.dart';
import 'splashscreen_controller.dart';

class SplashscreenPage extends GetView<SplashscreenController> {
  const SplashscreenPage({Key? key}) : super(key: key);
  static String routName = "/";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppStyle.colorBackgorundprimary,
      body: const SplashscreenBodyWidget(),
    );
  }
}
