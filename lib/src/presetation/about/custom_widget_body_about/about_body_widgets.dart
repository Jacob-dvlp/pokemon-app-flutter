import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../widgets/custom_navigator_bar.dart';
import '../../../../widgets/custom_skeleton/custom_widget_skeleton_body_about.dart';
import '../about_controller.dart';
import 'about_center_widget.dart';
import 'about_footer_widget.dart';
import 'about_header_widget.dart';

class AboutBodyWidgets extends GetView<AboutController> {
  const AboutBodyWidgets({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<AboutController>(
      init: AboutController(Get.find()),
      builder: (controller) {
        return Scaffold(
          floatingActionButtonLocation:
              FloatingActionButtonLocation.centerDocked,
          floatingActionButton: const CustomNavigatorBarAbout(),
          body: controller.obx((state) {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                AboutHeaderWidget(pokemon: controller.pokemon!),
                AboutCenterWidget(pokemon: controller.pokemon!),
                AboutFooterWidget(pokemon: controller.pokemon!)
              ],
            );
          }, onLoading: const CustomWidgetSkeletonBodyAbout()),
        );
      },
    );
  }
}
