import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../theme/app_theme.dart';
import 'navigator_bar_controller.dart';

class NavigatorBarPage extends GetView<NavigatorBarController> {
  const NavigatorBarPage({Key? key}) : super(key: key);
  static String routName = "/navigator-bar";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: Container(
        width: Get.width,
        height: 57,
        color: AppTheme.colorPrimary,
      ),
      body: Container(),
    );
  }
}
