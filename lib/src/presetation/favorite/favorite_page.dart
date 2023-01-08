import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../widgets/custom_navigator_bar.dart';
import 'favorite_controller.dart';
import 'favorite_custom_widget/favorite_custom_pages.dart';

class FavoritePage extends GetView<FavoriteController> {
  const FavoritePage({Key? key}) : super(key: key);
  static String routName = "/favorite";
  @override
  Widget build(BuildContext context) {
    return GetBuilder<FavoriteController>(
      init: FavoriteController(),
      builder: (controller) {
        return Scaffold(
          floatingActionButtonLocation:
              FloatingActionButtonLocation.centerDocked,
          floatingActionButton: CustomNavigatorBar(
            controller: controller,
            isFavoritePage: true,
          ),
          body: const FavoriteCustomPages(),
        );
      },
    );
  }
}
