import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../theme/app_theme.dart';
import '../../../../utils/image/image_key.dart';

class SplashscreenBodyWidget extends StatelessWidget {
  const SplashscreenBodyWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 70.0),
          child: Stack(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 49, left: 12),
                child: Image.asset(
                    width: 350, height: 371, ImageKey.backgroundSplash),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 16, left: 53),
                child:
                    Image.asset(width: 110, height: 138, ImageKey.logoSplash),
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
                    color: AppTheme.colorText,
                    fontSize: 35,
                    fontWeight: FontWeight.w700,
                  ),
                  children: [
                    TextSpan(
                      text: 'Pokémons',
                      style: GoogleFonts.nunito(
                        color: AppTheme.colorBackgorundRed,
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
            color: AppTheme.colorText,
            fontSize: 16,
            fontWeight: FontWeight.w400,
          ),
        ),
        const SizedBox(
          height: 30,
        ),
        SizedBox(
          width: 220,
          height: 43,
          child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                elevation: 4,
                shadowColor: AppTheme.colorBackgorundRed,
                backgroundColor: AppTheme.colorBackgorundRed,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5),
                ),
              ),
              onPressed: () {},
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
        )
      ],
    );
  }
}
