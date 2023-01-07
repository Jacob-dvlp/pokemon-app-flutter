import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../style/app_style.dart';
import '../utils/image/image_key.dart';

class CustomNavigatorBarAbout extends StatelessWidget {
  const CustomNavigatorBarAbout({Key? key}) : super(key: key);

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
              SizedBox(
                child: Column(
                  children: [
                    Image.asset(ImageKey.iconMenuHome,
                        color: AppStyle.colorNavigatorBar),
                    Text(
                      'Home',
                      style: AppStyle.navigatorStyle1,
                    ),
                  ],
                ),
              ),
              SizedBox(
                child: Column(
                  children: [
                    Image.asset(
                      ImageKey.iconMenuFavorite,
                      color: AppStyle.colorNavigatorBar,
                    ),
                    Text('Favoritos', style: AppStyle.navigatorStyle1),
                  ],
                ),
              ),
              SizedBox(
                child: Column(
                  children: [
                    Image.asset(ImageKey.iconMenuProfile),
                    Text(
                      'Minha conta',
                      style: AppStyle.navigatorStyle1,
                    ),
                  ],
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
