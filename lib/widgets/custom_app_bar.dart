import 'package:flutter/material.dart';

import '../theme/app_theme.dart';
import '../utils/image/image_key.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const double right = 20;
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: right),
            child: Icon(
              Icons.menu,
              color: AppTheme.colorSecundary,
            ),
          ),
          Image.asset(
            ImageKey.logo,
          ),
          Padding(
            padding: const EdgeInsets.only(right: right),
            child: Image.asset(
              ImageKey.profileImage,
              scale: 0.70,
            ),
          )
        ],
      ),
    );
  }
}
