import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../style/app_style.dart';
import '../../../../utils/image/image_key.dart';
import '../navigator_bar_controller.dart';

class CustomNavigatorBar extends StatelessWidget {
  final NavigatorBarController controller;
  const CustomNavigatorBar({Key? key, required this.controller})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: Get.width,
      height: 57,
      color: AppStyle.colorPrimary,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              GestureDetector(
                onTap: () {
                  controller.isHomePage();
                },
                child: SizedBox(
                  child: Column(
                    children: [
                      Image.asset(ImageKey.iconMenuHome,
                          color: controller.isHome
                              ? AppStyle.colorSecundary
                              : AppStyle.colorNavigatorBar),
                      Text(
                        'Home',
                        style: controller.isHome
                            ? AppStyle.navigatorStyle2
                            : AppStyle.navigatorStyle1,
                      ),
                    ],
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  controller.isFavoritePage();
                },
                child: SizedBox(
                  child: Column(
                    children: [
                      Image.asset(
                        ImageKey.iconMenuFavorite,
                        color: controller.isFavorite
                            ? AppStyle.colorSecundary
                            : AppStyle.colorNavigatorBar,
                      ),
                      Text('Favoritos',
                          style: controller.isFavorite
                              ? AppStyle.navigatorStyle2
                              : AppStyle.navigatorStyle1),
                    ],
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {},
                child: SizedBox(
                  child: Column(
                    children: [
                      Image.asset(ImageKey.iconMenuProfile),
                      Text(
                        'Minha conta',
                        style: AppStyle.navigatorStyle1,
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
