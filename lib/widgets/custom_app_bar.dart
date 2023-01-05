import 'package:flutter/material.dart';

import '../theme/app_theme.dart';
import '../utils/image/image_key.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.only(
              left: 32.5,
            ),
            child: Icon(
              Icons.menu,
              color: AppTheme.colorSecundary,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 74.5, right: 94),
            child: Image.asset(
              ImageKey.logo,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              right: 25,
            ),
            child: Image.asset(
              ImageKey.profileImage,
            ),
          )
        ],
      ),
    );
  }
}
