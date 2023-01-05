import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../theme/app_theme.dart';
import 'custom_widgets_body_splashsreen/custom_widget_body_splashscreen.dart';
import 'splashscreen_controller.dart';

class SplashscreenPage extends GetView<SplashscreenController> {
  const SplashscreenPage({Key? key}) : super(key: key);
  static String routName = "/";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppTheme.colorBackgorundprimary,
      body: const SplashscreenBodyWidget(),
    );
  }
}
