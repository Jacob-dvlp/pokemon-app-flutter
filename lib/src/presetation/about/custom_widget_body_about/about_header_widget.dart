import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../theme/app_theme.dart';
import '../../../../utils/image/image_key.dart';
import '../../../../widgets/custom_app_bar.dart';

class AboutHeaderWidget extends StatelessWidget {
  const AboutHeaderWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomAppBar(
          widget: GestureDetector(
            onTap: () => Get.back(),
            child: Icon(
              Icons.arrow_back_ios_new,
              color: AppTheme.colorSecundary,
            ),
          ),
          isHome: false,
        ),
        Container(
          width: 375,
          decoration: BoxDecoration(
            color: AppTheme.colorBacgroundAbout,
            borderRadius: const BorderRadius.only(
              bottomLeft: Radius.circular(20),
              bottomRight: Radius.circular(20),
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.only(
              left: 87,
              right: 86,
              top: 33,
            ),
            child: Hero(tag: "", child: Image.asset(ImageKey.pokemonf)),
          ),
        ),
      ],
    );
  }
}
