import 'package:flutter/material.dart';

import '../../../../routes/importes.dart';
import '../../../../widgets/custom_navigator_bar.dart';
import '../../../../widgets/custom_skeleton/custom_widget_skeleton_body_about.dart';
import '../details_controller.dart';
import 'details_center_widget.dart';
import 'details_footer_widget.dart';
import 'details_header_widget.dart';

class DetailsBodyWidgets extends GetView<DetailController> {
  const DetailsBodyWidgets({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<DetailController>(
      init: DetailController(Get.find()),
      builder: (controller) {
        return Scaffold(
          floatingActionButtonLocation:
              FloatingActionButtonLocation.centerDocked,
          floatingActionButton: CustomNavigatorBar(
            controller: controller,
            isAboutPage: true,
          ),
          body: controller.obx(
            (state) {
              return SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    AboutHeaderWidget(pokemon: controller.pokemon!),
                    AboutCenterWidget(pokemon: controller.pokemon!),
                    AboutFooterWidget(pokemon: controller.pokemon!)
                  ],
                ),
              );
            },
            onLoading: const CustomWidgetSkeletonBodyAbout(),
            onError: (error) => Center(
              child: Text(error.toString()),
            ),
          ),
        );
      },
    );
  }
}
