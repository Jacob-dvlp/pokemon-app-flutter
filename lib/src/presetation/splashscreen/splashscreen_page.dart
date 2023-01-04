import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../theme/app_theme.dart';
import 'custom_body_widget/splashscreen_body_widget.dart';
import 'splashscreen_controller.dart';

class SplashscreenPage extends GetView<SplashscreenController> {
  const SplashscreenPage({Key? key}) : super(key: key);
  static String routName = "/";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppTheme.colorBackgorundOne,
      body: const SplashscreenBodyWidget(),
    );
  }
}