import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../style/app_style.dart';
import '../../../../utils/image/image_key.dart';
import '../../navigator_bar/navigator_bar_page.dart';

class SplashscreenBodyWidget extends StatelessWidget {
  const SplashscreenBodyWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 40.0),
          child: Stack(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 49, left: 12),
                child: Image.asset(
                    width: 350, height: 371, ImageKey.backgroundSplash),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 16, left: 53),
                child: Image.asset(width: 110, height: 138, ImageKey.logo),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(bottom: 10),
          child: SizedBox(
            width: 332,
            child: RichText(
              textAlign: TextAlign.center,
              text: TextSpan(
                  text: 'Explore o mundo dos ',
                  style: GoogleFonts.nunito(
                    color: AppStyle.colorSecundary,
                    fontSize: 35,
                    fontWeight: FontWeight.w700,
                  ),
                  children: [
                    TextSpan(
                      text: 'Pokémons',
                      style: GoogleFonts.nunito(
                        color: AppStyle.colorBackgorundRed,
                        fontSize: 35,
                        fontWeight: FontWeight.w700,
                      ),
                    )
                  ]),
            ),
          ),
        ),
        const SizedBox(
          height: 05,
        ),
        Text(
          'Descubra todas as espécies de Pokémons',
          style: GoogleFonts.nunito(
            color: AppStyle.colorSecundary,
            fontSize: 16,
            fontWeight: FontWeight.w400,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 30, right: 0, top: 35),
          child: SizedBox(
            width: 220,
            height: 43,
            child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  elevation: 4,
                  shadowColor: AppStyle.colorBackgorundRed,
                  backgroundColor: AppStyle.colorBackgorundRed,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5),
                  ),
                ),
                onPressed: () {
                  Get.offAllNamed(NavigatorBarPage.routName);
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const SizedBox(
                      width: 20,
                    ),
                    Text(
                      'Começar',
                      textAlign: TextAlign.center,
                      style: GoogleFonts.nunito(
                        fontSize: 18,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    const Icon(Icons.arrow_forward_ios_outlined)
                  ],
                )),
          ),
        )
      ],
    );
  }
}
