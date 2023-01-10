import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../style/app_style.dart';
import '../../../../utils/image/image_key.dart';
import '../src/presetation/favorite/favorite_page.dart';

class CustomNavigatorBar extends StatelessWidget {
  final dynamic controller;
  final bool isAboutPage;
  final bool isFavoritePage;
  const CustomNavigatorBar(
      {Key? key,
      required this.controller,
      this.isAboutPage = false,
      this.isFavoritePage = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: Get.width * 200,
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
                  if (isAboutPage == true || isFavoritePage == true) {
                    Get.back();
                  }
                },
                child: SizedBox(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
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
                  if (isAboutPage == true) {
                    Get.offNamed(FavoritePage.routName);
                  }
                },
                child: SizedBox(
                  child: Column(
                    children: [
                      Image.asset(
                        ImageKey.iconMenuFavorite,
                        color: controller.pageFavorite
                            ? AppStyle.colorSecundary
                            : AppStyle.colorNavigatorBar,
                      ),
                      Text('Favoritos',
                          style: controller.pageFavorite
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
