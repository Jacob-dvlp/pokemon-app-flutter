import 'package:flutter/material.dart';
import 'package:get/get.dart';

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
            body: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                AboutHeaderWidget(),
                AboutCenterWidget(),
                AboutFooterWidget()
              ],
            ),
          );
        });
  }
}
