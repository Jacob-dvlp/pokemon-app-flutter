import 'package:flutter/material.dart';

import '../style/app_style.dart';
import '../utils/image/image_key.dart';

class CustomAppBar extends StatelessWidget {
  final Widget widget;
  final bool isHome;
  final Color? color;
  const CustomAppBar({
    Key? key,
    required this.widget,
    required this.isHome,
    this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 0.0),
      child: Container(
        color: isHome ? AppStyle.colorPrimary : color,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
                padding: const EdgeInsets.only(
                  left: 32.5,
                ),
                child: widget),
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
      ),
    );
  }
}
